package mxcc.frontend;

import mxcc.ast.*;
import mxcc.ir.*;
import mxcc.symbol.ClassSymbol;
import mxcc.symbol.Scope;
import mxcc.symbol.Symbol;
import mxcc.symbol.VariableSymbol;

import java.util.Stack;

public class IRBuilder extends AstBaseVisitor {
    private Module module = new Module();
    private Function curFunc;
    private BasicBlock curBB;
    private Stack<BasicBlock> loopNextStack = new Stack<>();
    private Stack<BasicBlock> loopEndStack = new Stack<>();

    private Register thisAddr;

    private boolean isLogicExpr(Expr node) {
        if (node instanceof BinaryExpr) {
            BinaryExpr.BinaryOp op = ((BinaryExpr) node).op;
            return op == BinaryExpr.BinaryOp.AND || op == BinaryExpr.BinaryOp.OR;
        }
        if (node instanceof UnaryExpr)
            return ((UnaryExpr) node).op == UnaryExpr.UnaryOp.NOT;
        return node instanceof BoolConst;
    }

    private void processLogicBinaryExpr(BinaryExpr node) {
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
        Scope enclosingScope = node.scope.getEnclosingScope();
        boolean isMember = enclosingScope instanceof ClassSymbol;
        String funcName = node.func.name;
        if (isMember) funcName = enclosingScope.getScopeName() + "#" + funcName;
        curFunc = new Function(funcName);
        module.funcs.put(funcName, curFunc);
        curBB = curFunc.getStartBB();

        if (isMember) {
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


    public Operand getTargetAddr(Expr expr) {
        if (expr instanceof IdentifierExpr) {
            // the identifier should be a single variable rather than a function or a class member
            Symbol s = ((IdentifierExpr) expr).var;
            assert s instanceof VariableSymbol;
            return ((VariableSymbol) s).reg;
        }
        if (expr instanceof MemberAccess) {
            MemberAccess memberAccess = (MemberAccess) expr;
            Operand baseAddr = getTargetAddr(memberAccess.container);
            assert memberAccess.container.type instanceof ClassSymbol;
            return getMemberAddr(baseAddr, (ClassSymbol) memberAccess.container.type, memberAccess.member.name);
        }
        if (expr instanceof UnaryExpr) {
            UnaryExpr unaryExpr = (UnaryExpr) expr;
            assert unaryExpr.op == UnaryExpr.UnaryOp.INC || unaryExpr.op == UnaryExpr.UnaryOp.DEC;
            return getTargetAddr(unaryExpr.expr);
        }
        if (expr instanceof ArrayAccess) {
            ArrayAccess arrayAccess = (ArrayAccess) expr;
            Operand arrayAddr = getTargetAddr(arrayAccess.container);
            Register baseAddr = curFunc.makeRegister("arrayBaseAddr");
            curBB.append(new Load(baseAddr, arrayAddr));
            visit(arrayAccess.subscript);
            Operand index = arrayAccess.subscript.val;
            Register offset = curFunc.makeRegister("offset");
            curBB.append(new BinaryOperation(offset, BinaryOperation.BinaryOp.MUL, index, new IntImmediate(4)));
            Register elementAddr = curFunc.makeRegister("elementAddr");
            curBB.append(new BinaryOperation(elementAddr, BinaryOperation.BinaryOp.ADD, baseAddr, offset));
            return elementAddr;
        }
        assert false;
        return null;
    }

    public Operand getMemberAddr(Operand baseAddr, ClassSymbol classSymbol, String memberName) {
        IntImmediate offset = new IntImmediate(classSymbol.layout.get(memberName));
        Register memberAddr = curFunc.makeRegister("memberAddr");
        curBB.append(new BinaryOperation(memberAddr, BinaryOperation.BinaryOp.ADD, baseAddr, offset));
        return memberAddr;
    }

    public void visit(BinaryExpr node) {
        if (node.op == BinaryExpr.BinaryOp.ASSIGN) {

        }
    }

}
