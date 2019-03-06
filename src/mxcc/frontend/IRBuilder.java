package mxcc.frontend;

import mxcc.ast.*;
import mxcc.ir.*;
import mxcc.symbol.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

import static mxcc.symbol.GlobalSymbolTable.STRING_TYPE;
import static mxcc.symbol.GlobalSymbolTable.VOID_TYPE;

public class IRBuilder extends AstBaseVisitor {
    private Module module = new Module();
    private Function curFunc;
    private BasicBlock curBB;
    private Stack<BasicBlock> loopNextStack = new Stack<>();
    private Stack<BasicBlock> loopEndStack = new Stack<>();

    private Register thisAddr;

    private boolean isLogicOpExpr(Expr node) {
        if (node instanceof BinaryExpr) {
            BinaryExpr.BinaryOp op = ((BinaryExpr) node).op;
            return op == BinaryExpr.BinaryOp.AND || op == BinaryExpr.BinaryOp.OR;
        }
        if (node instanceof UnaryExpr)
            return ((UnaryExpr) node).op == UnaryExpr.UnaryOp.NOT;
        return false;
    }

    public void visit(Program node) {
        node.decls.forEach(this::visit);
    }

    public void visit(VariableDecl node) {
        Register varAddr = curFunc.makeRegister("varAddr");
        node.var.reg = varAddr;
        curFunc.getStartBB().appendFront(new Alloca(varAddr, 4));
        if (node.init != null) {
            visit(node.init);
            curBB.append(new Store(node.init.val, varAddr));
        }
    }

    public void visit(FunctionDecl node) {
        boolean isMember = node.func.isClassMember();
        String funcName = node.func.name;
        if (isMember) funcName = node.scope.getEnclosingScope().getScopeName() + "#" + funcName;
        curFunc = new Function(funcName);
        node.func.IRFunc = curFunc;
        module.funcs.put(funcName, curFunc);
        curBB = curFunc.getStartBB();

        if (isMember) {
            // thisVal  class*
            // thisAddr class**
            Register thisVal = curFunc.makeRegister("thisVal");
            curFunc.args.add(thisVal);
            thisAddr = curFunc.makeRegister("thisAddr");
            curBB.appendFront(new Alloca(thisAddr, 4));
            curBB.append(new Store(thisVal, thisAddr));
        }

        for (int i = 0; i < node.paramList.size(); ++i) {
            Register argVal = curFunc.makeRegister("argVal");
            curFunc.args.add(argVal);
            Register argAddr = curFunc.makeRegister("argAddr");
            node.paramList.get(i).var.reg = argAddr;
            curBB.appendFront(new Alloca(argAddr, 4));
            curBB.append(new Store(argVal, argAddr));
        }

        node.stmts.forEach(this::visit);
    }

    public void visit(ClassDecl node) {
        for (Decl decl : node.decls) {
            if (decl instanceof FunctionDecl) visit(decl);
        }
    }

    public void visit(BlockStmt node) {
        node.stmts.forEach(this::visit);
    }

    public void visit(VariableDeclStmt node) {
        visit(node.decl);
    }

    public void visit(IfStmt node) {
        boolean hasElse = node.otherwise != null;

        BasicBlock trueBB = new BasicBlock(curFunc, "if_true");
        BasicBlock falseBB = hasElse ? new BasicBlock(curFunc, "if_false") : null;
        BasicBlock mergeBB = new BasicBlock(curFunc, "if_merge");

        curBB.addNext(trueBB);
        trueBB.addNext(mergeBB);
        if (hasElse) trueBB.addNext(falseBB);

        node.cond.ifTrueBB = trueBB;
        node.cond.ifFalseBB = hasElse ? falseBB : mergeBB;
        visit(node.cond);

        curBB = trueBB;
        visit(node.then);
        if (!curBB.isEnded()) curBB.append(new DirectBranch(mergeBB));

        if (hasElse) {
            curBB = falseBB;
            visit(node.otherwise);
            if (!curBB.isEnded()) curBB.append(new DirectBranch(mergeBB));
        }

        curBB = mergeBB;
    }

    public void visit(ForStmt node) {
        BasicBlock forCondBB = new BasicBlock(curFunc, "for_cond");
        BasicBlock forBodyBB = new BasicBlock(curFunc, "for_body");
        BasicBlock forStepBB = new BasicBlock(curFunc, "for_step");
        BasicBlock forEndBB = new BasicBlock(curFunc, "for_end");

        curBB.addNext(forCondBB);
        forCondBB.addNext(forBodyBB);
        forBodyBB.addNext(forStepBB);
        forStepBB.addNext(forEndBB);

        loopNextStack.push(forStepBB);
        loopEndStack.push(forEndBB);

        if (node.init != null) visit(node.init);
        if (!curBB.isEnded()) curBB.append(new DirectBranch(forCondBB));

        curBB = forCondBB;
        if (node.cond != null) {
            node.cond.ifTrueBB = forBodyBB;
            node.cond.ifFalseBB = forEndBB;
            visit(node.cond);
        } else curBB.append(new DirectBranch(forBodyBB));

        curBB = forBodyBB;
        visit(node.body);
        if (!curBB.isEnded()) curBB.append(new DirectBranch(forStepBB));

        curBB = forStepBB;
        if (node.step != null) visit(node.step);
        if (!curBB.isEnded()) curBB.append(new DirectBranch(forCondBB));

        loopNextStack.pop();
        loopEndStack.pop();

        curBB = forEndBB;
    }

    public void visit(WhileStmt node) {
        BasicBlock whileCondBB = new BasicBlock(curFunc, "while_cond");
        BasicBlock whileBodyBB = new BasicBlock(curFunc, "while_body");
        BasicBlock whileEndBB = new BasicBlock(curFunc, "while_end");

        curBB.addNext(whileCondBB);
        whileCondBB.addNext(whileBodyBB);
        whileBodyBB.addNext(whileEndBB);

        loopNextStack.push(whileCondBB);
        loopEndStack.push(whileEndBB);

        if (!curBB.isEnded()) curBB.append(new DirectBranch(whileCondBB));

        curBB = whileCondBB;
        node.cond.ifTrueBB = whileBodyBB;
        node.cond.ifFalseBB = whileEndBB;
        visit(node.cond);

        curBB = whileBodyBB;
        visit(node.body);
        if (!curBB.isEnded()) curBB.append(new DirectBranch(whileCondBB));

        loopNextStack.pop();
        loopEndStack.pop();

        curBB = whileEndBB;
    }

    public void visit(ReturnStmt node) {

    }

    public void visit(BreakStmt node) {
        if (!curBB.isEnded()) curBB.append(new DirectBranch(loopEndStack.peek()));
    }

    public void visit(ContinueStmt node) {
        if (!curBB.isEnded()) curBB.append(new DirectBranch(loopNextStack.peek()));
    }


    private Operand getTargetAddr(Expr expr) {
        if (expr instanceof IdentifierExpr) {
            // the identifier should be a single variable rather than a function or a class member
            IdentifierExpr idExpr = (IdentifierExpr) expr;
            if (idExpr.name.equals("this")) return thisAddr;
            Symbol s = idExpr.var;
            assert s instanceof VariableSymbol;
            return ((VariableSymbol) s).reg;
        }
        if (expr instanceof MemberAccess) {
            MemberAccess memberAccess = (MemberAccess) expr;
            Operand classPtrPrt = getTargetAddr(memberAccess.container);
            Register classPtr = curFunc.makeRegister("classPtr");
            curBB.append(new Load(classPtr, classPtrPrt));
            if (expr.type instanceof FunctionSymbol) return classPtr;
            assert memberAccess.container.type instanceof ClassSymbol;
            return getMemberAddr(classPtr, (ClassSymbol) memberAccess.container.type, memberAccess.member.name);
        }
        if (expr instanceof UnaryExpr) {
            UnaryExpr unaryExpr = (UnaryExpr) expr;
            assert unaryExpr.op == UnaryExpr.UnaryOp.INC || unaryExpr.op == UnaryExpr.UnaryOp.DEC;
            return getTargetAddr(unaryExpr.expr);
        }
        if (expr instanceof ArrayAccess) {
            ArrayAccess arrayAccess = (ArrayAccess) expr;
            Operand classPtrPtr = getTargetAddr(arrayAccess.container);
            Register classPtr = curFunc.makeRegister("arrayClassPtr");
            curBB.append(new Load(classPtr, classPtrPtr));
            Register arrayPtr = curFunc.makeRegister("arrayPtr");
            curBB.append(new BinaryOperation(arrayPtr, BinaryOperation.BinaryOp.ADD, classPtr, new IntImmediate(4)));
            Register arrayBase = curFunc.makeRegister("arrayBase");
            curBB.append(new Load(arrayBase, arrayPtr));
            visit(arrayAccess.subscript);
            Operand index = arrayAccess.subscript.val;
            Register offset = curFunc.makeRegister("offset");
            curBB.append(new BinaryOperation(offset, BinaryOperation.BinaryOp.MUL, index, new IntImmediate(4)));
            Register elementAddr = curFunc.makeRegister("elementAddr");
            curBB.append(new BinaryOperation(elementAddr, BinaryOperation.BinaryOp.ADD, arrayBase, offset));
            return elementAddr;
        }
        assert false;
        return null;
    }

    private Operand getMemberAddr(Operand baseAddr, ClassSymbol classSymbol, String memberName) {
        IntImmediate offset = new IntImmediate(classSymbol.layout.get(memberName));
        Register memberAddr = curFunc.makeRegister("memberAddr");
        curBB.append(new BinaryOperation(memberAddr, BinaryOperation.BinaryOp.ADD, baseAddr, offset));
        return memberAddr;
    }

    private void processAssign(BinaryExpr node) {
        if (isLogicOpExpr(node.right)) {
            node.right.ifTrueBB = new BasicBlock(curFunc, "bool_true");
            node.right.ifFalseBB = new BasicBlock(curFunc, "bool_false");
            BasicBlock mergeBB = new BasicBlock(curFunc, "bool_merge");

            curBB.addNext(node.right.ifTrueBB);
            node.right.ifTrueBB.addNext(node.right.ifFalseBB);
            node.right.ifFalseBB.addNext(mergeBB);

            visit(node.right);

            Register boolValAddr = curFunc.makeRegister("boolValAddr");
            node.right.ifTrueBB.append(new Store(new IntImmediate(1), boolValAddr));
            node.right.ifFalseBB.append(new Store(new IntImmediate(0), boolValAddr));
            Register boolVal = curFunc.makeRegister("boolVal");
            node.right.val = boolVal;
            mergeBB.append(new Load(boolVal, boolValAddr));

            curBB = mergeBB;
        } else {
            visit(node.right);
        }
        Operand lhsAddr = getTargetAddr(node.left);
        curBB.append(new Store(node.right.val, lhsAddr));
    }

    private void processBinaryLogic(BinaryExpr node) {
        if (node.op == BinaryExpr.BinaryOp.AND) {
            node.left.ifTrueBB = new BasicBlock(curFunc, "lhs_true");
            node.left.ifFalseBB = node.ifFalseBB;
            curBB.addNext(node.left.ifTrueBB);
            visit(node.left);
            curBB = node.left.ifTrueBB;
        } else {
            node.left.ifTrueBB = node.ifTrueBB;
            node.left.ifFalseBB = new BasicBlock(curFunc, "lhs_false");
            curBB.addNext(node.left.ifFalseBB);
            visit(node.left);
            curBB = node.left.ifFalseBB;
        }
        node.right.ifTrueBB = node.ifTrueBB;
        node.right.ifFalseBB = node.ifFalseBB;
        visit(node.right);
    }

    private void processBinaryString(BinaryExpr node) {

    }

    private void processBinaryInt(BinaryExpr node) {
        visit(node.left);
        visit(node.right);
        BinaryOperation.BinaryOp op = null;
        switch (node.op) {
            case LT: op = BinaryOperation.BinaryOp.LT; break;
            case GT: op = BinaryOperation.BinaryOp.GT; break;
            case LE: op = BinaryOperation.BinaryOp.LE; break;
            case GE: op = BinaryOperation.BinaryOp.GE; break;
            case EQ: op = BinaryOperation.BinaryOp.EQ; break;
            case NEQ: op = BinaryOperation.BinaryOp.NEQ; break;
            case MUL: op = BinaryOperation.BinaryOp.MUL; break;
            case DIV: op = BinaryOperation.BinaryOp.DIV; break;
            case MOD: op = BinaryOperation.BinaryOp.MOD; break;
            case ADD: op = BinaryOperation.BinaryOp.ADD; break;
            case SUB: op = BinaryOperation.BinaryOp.SUB; break;
            case LSFT: op = BinaryOperation.BinaryOp.LSFT; break;
            case RSFT: op = BinaryOperation.BinaryOp.RSFT; break;
            case BIT_AND: op = BinaryOperation.BinaryOp.BIT_AND; break;
            case BIT_OR: op = BinaryOperation.BinaryOp.BIT_OR; break;
            case BIT_XOR: op = BinaryOperation.BinaryOp.BIT_XOR; break;
        }
        Register res = curFunc.makeRegister("res");
        node.val = res;
        curBB.append(new BinaryOperation(res, op, node.left.val, node.right.val));
        if (node.ifTrueBB != null)
            curBB.append(new CondBranch(res, node.ifTrueBB, node.ifFalseBB));
    }

    public void visit(BinaryExpr node) {
        if (node.op == BinaryExpr.BinaryOp.ASSIGN) {
            processAssign(node);
            return;
        }
        if (node.op == BinaryExpr.BinaryOp.AND || node.op == BinaryExpr.BinaryOp.OR) {
            processBinaryLogic(node);
            return;
        }
        if (node.left.type.isSameType(STRING_TYPE)) {
            processBinaryString(node);
            return;
        }
        processBinaryInt(node);
    }

    private void processIncDec(UnaryExpr node) {
        Operand addr = getTargetAddr(node.expr);
        Register oldVal = curFunc.makeRegister("oldVal");
        Register newVal = curFunc.makeRegister("newVal");
        UnaryOperation.UnaryOp op = (node.op == UnaryExpr.UnaryOp.INC || node.op == UnaryExpr.UnaryOp.INC_SUF) ?
                                     UnaryOperation.UnaryOp.INC : UnaryOperation.UnaryOp.DEC;
        curBB.append(new Load(oldVal, addr));
        curBB.append(new UnaryOperation(newVal, op, oldVal));
        curBB.append(new Store(newVal, addr));
        if (node.op == UnaryExpr.UnaryOp.INC || node.op == UnaryExpr.UnaryOp.DEC) {
            node.val = newVal;
        } else {
            node.val = oldVal;
        }
    }

    public void visit(UnaryExpr node) {
        if (node.op == UnaryExpr.UnaryOp.NOT) {
            node.expr.ifTrueBB = node.ifFalseBB;
            node.expr.ifFalseBB = node.ifTrueBB;
            visit(node.expr);
            return;
        }

        visit(node.expr);
        switch (node.op) {
            case INC:
            case DEC:
            case INC_SUF:
            case DEC_SUF:
                processIncDec(node);
                break;
            case POS:
                node.val = node.expr.val;
                break;
            case NEG:
            case BIT_NOT:
                Register res = curFunc.makeRegister("res");
                UnaryOperation.UnaryOp op = (node.op == UnaryExpr.UnaryOp.NEG) ?
                                             UnaryOperation.UnaryOp.NEG : UnaryOperation.UnaryOp.BIT_NOT;
                curBB.append(new UnaryOperation(res, op, node.expr.val));
                node.val = res;
                break;
        }
    }

    public void visit(FunctionCall node) {
        // built-in function hasn't been considered yet
        Register dst = node.func.type.isSameType(VOID_TYPE) ? null : curFunc.makeRegister("res");
        List<Operand> args = new ArrayList<>();
        if (node.func.isClassMember()) {
            Operand classPtrPtr;
            if (node.caller instanceof MemberAccess) {
                classPtrPtr = getTargetAddr(node.caller);
            } else {
                classPtrPtr = thisAddr;
            }
            Register classPtr = curFunc.makeRegister("classPtr");
            curBB.append(new Load(classPtr, classPtrPtr));
            args.add(classPtr);
        }
        for (Expr argExpr : node.args) {
            visit(argExpr);
            args.add(argExpr.val);
        }
        curBB.append(new Call(node.func.IRFunc, dst, args));
        node.val = dst;
    }

    public void visit(ArrayAccess node) {
        Operand elementAddr = getTargetAddr(node);
        Register elementVal = curFunc.makeRegister("elementVal");
        curBB.append(new Load(elementVal, elementAddr));
        node.val = elementVal;
    }

    public void visit(MemberAccess node) {
        Operand memberAddr = getTargetAddr(node);
        Register memberVal = curFunc.makeRegister("memberVal");
        curBB.append(new Load(memberVal, memberAddr));
        node.val = memberVal;
    }

    public void visit(NewExpr node) {

    }

    public void visit(IdentifierExpr node) {
        Operand idAddr = getTargetAddr(node);
        Register idVal = curFunc.makeRegister("idVal");
        curBB.append(new Load(idVal, idAddr));
        node.val = idVal;
    }

    public void visit(IntConst node) {
        node.val = new IntImmediate(node.value);
    }

    public void visit(BoolConst node) {
        node.val = new IntImmediate(node.value ? 1 : 0);
    }

    public void visit(StringConst node) {
        // TODO
    }

    public void visit(NullLiteral node) {
        node.val = new IntImmediate(0);
    }

}
