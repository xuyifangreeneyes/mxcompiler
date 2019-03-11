package mxcc.frontend;

import mxcc.ast.*;
import mxcc.ir.*;
import mxcc.symbol.*;

import java.util.*;

import static mxcc.symbol.GlobalSymbolTable.*;

public class IRBuilder extends AstBaseVisitor {
    private Module module = new Module();
    private Function curFunc;
    private BasicBlock curBB;
    private BasicBlock curInitBB;
    private Stack<BasicBlock> loopNextStack = new Stack<>();
    private Stack<BasicBlock> loopEndStack = new Stack<>();

    private LocalReg thisAddr;

    private boolean isLogicOpExpr(Expr node) {
        if (node instanceof BinaryExpr) {
            BinaryExpr.BinaryOp op = ((BinaryExpr) node).op;
            return op == BinaryExpr.BinaryOp.AND || op == BinaryExpr.BinaryOp.OR;
        }
        if (node instanceof UnaryExpr)
            return ((UnaryExpr) node).op == UnaryExpr.UnaryOp.NOT;
        return false;
    }

    public Module getModule() {
        return module;
    }

    public void visit(Program node) {
        curInitBB = module.funcs.get("#global#init").getStartBB();
        node.decls.forEach(this::visit);
    }

    private void processVariableDeclInit(Operand varAddr, Expr init) {
        processAssignRhs(init);
        curBB.append(new Store(init.val, varAddr));
    }

    public void visit(VariableDecl node) {
        if (node.scope instanceof ClassSymbol) return;
        if (node.scope instanceof GlobalSymbolTable) {
            GlobalReg globalVarAddr = new GlobalReg(node.varName);
            module.globalRegs.add(globalVarAddr);
            node.var.reg = globalVarAddr;
            if (node.init != null) {
                curFunc = module.funcs.get("#global#init");
                curBB = curInitBB;
                processVariableDeclInit(globalVarAddr, node.init);
                curInitBB = curBB;
            }
            return;
        }

        LocalReg varAddr = curFunc.makeLocalReg("varAddr");
        node.var.reg = varAddr;
        curFunc.getStartBB().appendFront(new Alloca(varAddr, 4));
        if (node.init != null) {
            processVariableDeclInit(varAddr, node.init);
        }
    }

    public void visit(FunctionDecl node) {
        boolean isMember = node.func.isClassMember();
        String funcName = node.func.name;
        if (isMember) funcName = node.scope.getEnclosingScope().getScopeName() + "#" + funcName;
        curFunc = new Function(funcName, false);
        node.func.IRFunc = curFunc;
        module.defineFunction(curFunc);
        curBB = curFunc.getStartBB();

        if (isMember) {
            // thisVal class*
            // thisAddr class**
            LocalReg thisVal = curFunc.makeLocalReg("thisVal");
            curFunc.args.add(thisVal);
            thisAddr = curFunc.makeLocalReg("thisAddr");
            curBB.appendFront(new Alloca(thisAddr, 4));
            curBB.append(new Store(thisVal, thisAddr));
        }

        for (int i = 0; i < node.paramList.size(); ++i) {
            LocalReg argVal = curFunc.makeLocalReg("argVal");
            curFunc.args.add(argVal);
            LocalReg argAddr = curFunc.makeLocalReg("argAddr");
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

        BasicBlock trueBB = curFunc.makeBB("if_true");
        BasicBlock falseBB = hasElse ? curFunc.makeBB("if_false") : null;
        BasicBlock mergeBB = curFunc.makeBB("if_merge");

        curBB.addNext(trueBB);
        trueBB.addNext(mergeBB);
        if (hasElse) trueBB.addNext(falseBB);

        node.cond.ifTrueBB = trueBB;
        node.cond.ifFalseBB = hasElse ? falseBB : mergeBB;
        visit(node.cond);

        curBB = trueBB;
        visit(node.then);
        curBB.append(new DirectBranch(mergeBB));

        if (hasElse) {
            curBB = falseBB;
            visit(node.otherwise);
            curBB.append(new DirectBranch(mergeBB));
        }

        curBB = mergeBB;
    }

    public void visit(ForStmt node) {
        BasicBlock forCondBB = curFunc.makeBB("for_cond");
        BasicBlock forBodyBB = curFunc.makeBB("for_body");
        BasicBlock forStepBB = curFunc.makeBB("for_step");
        BasicBlock forEndBB = curFunc.makeBB("for_end");

        curBB.addNext(forCondBB);
        forCondBB.addNext(forBodyBB);
        forBodyBB.addNext(forStepBB);
        forStepBB.addNext(forEndBB);

        loopNextStack.push(forStepBB);
        loopEndStack.push(forEndBB);

        if (node.init != null) visit(node.init);
        curBB.append(new DirectBranch(forCondBB));

        curBB = forCondBB;
        if (node.cond != null) {
            node.cond.ifTrueBB = forBodyBB;
            node.cond.ifFalseBB = forEndBB;
            visit(node.cond);
        } else curBB.append(new DirectBranch(forBodyBB));

        curBB = forBodyBB;
        visit(node.body);
        curBB.append(new DirectBranch(forStepBB));

        curBB = forStepBB;
        if (node.step != null) visit(node.step);
        curBB.append(new DirectBranch(forCondBB));

        loopNextStack.pop();
        loopEndStack.pop();

        curBB = forEndBB;
    }

    public void visit(WhileStmt node) {
        BasicBlock whileCondBB = curFunc.makeBB("while_cond");
        BasicBlock whileBodyBB = curFunc.makeBB("while_body");
        BasicBlock whileEndBB = curFunc.makeBB("while_end");

        curBB.addNext(whileCondBB);
        whileCondBB.addNext(whileBodyBB);
        whileBodyBB.addNext(whileEndBB);

        loopNextStack.push(whileCondBB);
        loopEndStack.push(whileEndBB);

        curBB.append(new DirectBranch(whileCondBB));

        curBB = whileCondBB;
        node.cond.ifTrueBB = whileBodyBB;
        node.cond.ifFalseBB = whileEndBB;
        visit(node.cond);

        curBB = whileBodyBB;
        visit(node.body);
        curBB.append(new DirectBranch(whileCondBB));

        loopNextStack.pop();
        loopEndStack.pop();

        curBB = whileEndBB;
    }

    public void visit(ReturnStmt node) {
        if (node.value == null) {
            curBB.append(new Return(null));
            return;
        }
        processAssignRhs(node.value);
        curBB.append(new Return(node.value.val));
    }

    public void visit(BreakStmt node) {
        curBB.append(new DirectBranch(loopEndStack.peek()));
    }

    public void visit(ContinueStmt node) {
        curBB.append(new DirectBranch(loopNextStack.peek()));
    }


    private Operand getTargetAddr(Expr expr) {
        if (expr instanceof IdentifierExpr) {
            IdentifierExpr idExpr = (IdentifierExpr) expr;
            if (idExpr.name.equals("this")) return thisAddr;
            if (idExpr.var.def.scope instanceof ClassSymbol) {
                ClassSymbol classSymbol = (ClassSymbol) idExpr.var.def.scope;
                LocalReg classPtr = curFunc.makeLocalReg("classPtr");
                curBB.append(new Load(classPtr, thisAddr));
                return getMemberAddr(classPtr, classSymbol, idExpr.name);
            }
            Symbol s = idExpr.var;
            assert s instanceof VariableSymbol;
            return ((VariableSymbol) s).reg;
        }

        if (expr instanceof MemberAccess) {
            MemberAccess memberAccess = (MemberAccess) expr;

            if ((memberAccess.type instanceof FunctionSymbol) &&
                    ((memberAccess.container instanceof FunctionCall) || (memberAccess.container instanceof StringConst))) {
                visit(memberAccess.container);
                return memberAccess.container.val;
            }

            Operand classPtrPrt = getTargetAddr(memberAccess.container);
            LocalReg classPtr = curFunc.makeLocalReg("classPtr");
            curBB.append(new Load(classPtr, classPtrPrt));

            if (expr.type instanceof FunctionSymbol) {
                return classPtr;
            }

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
            // arrayPtrPtr int**
            // arrayPtr int*
            // array structure [n, element_0, element_1, ..., element_n-1]
            Operand arrayPtrPtr = getTargetAddr(arrayAccess.container);
            LocalReg arrayPtr = curFunc.makeLocalReg("arrayPtr");
            curBB.append(new Load(arrayPtr, arrayPtrPtr));
            LocalReg arrayBase = curFunc.makeLocalReg("arrayBase");
            curBB.append(new BinaryOperation(arrayBase, BinaryOperation.BinaryOp.ADD, arrayPtr, new IntImmediate(4)));
            visit(arrayAccess.subscript);
            Operand index = arrayAccess.subscript.val;
            LocalReg offset = curFunc.makeLocalReg("offset");
            curBB.append(new BinaryOperation(offset, BinaryOperation.BinaryOp.MUL, index, new IntImmediate(4)));
            LocalReg elementAddr = curFunc.makeLocalReg("elementAddr");
            curBB.append(new BinaryOperation(elementAddr, BinaryOperation.BinaryOp.ADD, arrayBase, offset));
            return elementAddr;
        }
        assert false;
        return null;
    }

    private Operand getMemberAddr(Operand baseAddr, ClassSymbol classSymbol, String memberName) {
        IntImmediate offset = new IntImmediate(classSymbol.layout.get(memberName));
        LocalReg memberAddr = curFunc.makeLocalReg("memberAddr");
        curBB.append(new BinaryOperation(memberAddr, BinaryOperation.BinaryOp.ADD, baseAddr, offset));
        return memberAddr;
    }

    private void processAssignRhs(Expr rhs) {
        if (isLogicOpExpr(rhs)) {
            rhs.ifTrueBB = curFunc.makeBB("bool_true");
            rhs.ifFalseBB = curFunc.makeBB("bool_false");
            BasicBlock mergeBB = curFunc.makeBB("bool_merge");

            curBB.addNext(rhs.ifTrueBB);
            rhs.ifTrueBB.addNext(rhs.ifFalseBB);
            rhs.ifFalseBB.addNext(mergeBB);

            LocalReg boolValAddr = curFunc.makeLocalReg("boolValAddr");
            curFunc.getStartBB().appendFront(new Alloca(boolValAddr, 4));

            visit(rhs);

            rhs.ifTrueBB.append(new Store(new IntImmediate(1), boolValAddr));
            rhs.ifTrueBB.append(new DirectBranch(mergeBB));
            rhs.ifFalseBB.append(new Store(new IntImmediate(0), boolValAddr));
            rhs.ifFalseBB.append(new DirectBranch(mergeBB));
            LocalReg boolVal = curFunc.makeLocalReg("boolVal");
            mergeBB.append(new Load(boolVal, boolValAddr));
            rhs.val = boolVal;

            curBB = mergeBB;
        } else {
            visit(rhs);
        }
    }

    private void processAssign(BinaryExpr node) {
        processAssignRhs(node.right);
        Operand lhsAddr = getTargetAddr(node.left);
        curBB.append(new Store(node.right.val, lhsAddr));
    }

    private void processBinaryLogic(BinaryExpr node) {
        boolean alone = node.ifTrueBB == null;
        BasicBlock mergeBB = null;
        if (alone) {
            mergeBB = curFunc.makeBB("bool_merge");
            node.ifTrueBB = node.ifFalseBB = mergeBB;
        }

        if (node.op == BinaryExpr.BinaryOp.AND) {
            node.left.ifTrueBB = curFunc.makeBB("lhs_true");
            node.left.ifFalseBB = node.ifFalseBB;
            curBB.addNext(node.left.ifTrueBB);
            visit(node.left);
            curBB = node.left.ifTrueBB;
        } else {
            node.left.ifTrueBB = node.ifTrueBB;
            node.left.ifFalseBB = curFunc.makeBB("lhs_false");
            curBB.addNext(node.left.ifFalseBB);
            visit(node.left);
            curBB = node.left.ifFalseBB;
        }
        node.right.ifTrueBB = node.ifTrueBB;
        node.right.ifFalseBB = node.ifFalseBB;
        visit(node.right);

        if (alone) {
            curBB = mergeBB;
        }
    }

    private void addCondBranch(Expr node) {
        if (node.type.isSameType(BOOL_TYPE) && node.ifTrueBB != null) {
            curBB.append(new CondBranch(node.val, node.ifTrueBB, node.ifFalseBB));
        }
    }

    private void processBinaryString(BinaryExpr node) {
        visit(node.left);
        visit(node.right);
        LocalReg res = curFunc.makeLocalReg("res");
        List<Operand> args = new ArrayList<>();
        args.add(node.left.val);
        args.add(node.right.val);
        switch (node.op) {
            case ADD: curBB.append(new Call(STR_ADD, res, args)); break;
            case EQ: curBB.append(new Call(STR_EQ, res, args)); break;
            case NEQ: curBB.append(new Call(STR_NEQ, res, args)); break;
            case LT: curBB.append(new Call(STR_LT, res, args)); break;
            case GT: curBB.append(new Call(STR_GT, res, args)); break;
            case LE: curBB.append(new Call(STR_LE, res, args)); break;
            case GE: curBB.append(new Call(STR_GE, res, args)); break;
        }
        node.val = res;
        addCondBranch(node);
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
        LocalReg res = curFunc.makeLocalReg("res");
        curBB.append(new BinaryOperation(res, op, node.left.val, node.right.val));
        node.val = res;
        addCondBranch(node);
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
        LocalReg oldVal = curFunc.makeLocalReg("oldVal");
        LocalReg newVal = curFunc.makeLocalReg("newVal");
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
                LocalReg res = curFunc.makeLocalReg("res");
                UnaryOperation.UnaryOp op = (node.op == UnaryExpr.UnaryOp.NEG) ?
                                             UnaryOperation.UnaryOp.NEG : UnaryOperation.UnaryOp.BIT_NOT;
                curBB.append(new UnaryOperation(res, op, node.expr.val));
                node.val = res;
                break;
        }
    }

    public void visit(FunctionCall node) {
        LocalReg dst = node.func.type.isSameType(VOID_TYPE) ? null : curFunc.makeLocalReg("res");
        List<Operand> args = new ArrayList<>();
        if (node.func.isClassMember()) {
            if (node.caller instanceof MemberAccess) {
                args.add(getTargetAddr(node.caller));
            } else {
                LocalReg classPtr = curFunc.makeLocalReg("classPtr");
                curBB.append(new Load(classPtr, thisAddr));
                args.add(classPtr);
            }
        }
        if (node.func.isStringBuiltinFunction() || node.func.isArrayBuiltinFunction()) {
            args.add(getTargetAddr(node.caller));
        }
        for (Expr argExpr : node.args) {
            processAssignRhs(argExpr);
            args.add(argExpr.val);
        }
        curBB.append(new Call(node.func, dst, args));
        node.val = dst;
        addCondBranch(node);
    }

    public void visit(ArrayAccess node) {
        Operand elementAddr = getTargetAddr(node);
        LocalReg elementVal = curFunc.makeLocalReg("elementVal");
        curBB.append(new Load(elementVal, elementAddr));
        node.val = elementVal;
        addCondBranch(node);
    }

    public void visit(MemberAccess node) {
        Operand memberAddr = getTargetAddr(node);
        LocalReg memberVal = curFunc.makeLocalReg("memberVal");
        curBB.append(new Load(memberVal, memberAddr));
        node.val = memberVal;
        addCondBranch(node);
    }

    private void processNonarrayNew(NewExpr node) {
        LocalReg classPtr = curFunc.makeLocalReg("classPtr");
        assert node.type instanceof ClassSymbol;
        ClassSymbol classSymbol = (ClassSymbol) node.type;
        curBB.append(new Malloc(classPtr, new IntImmediate(classSymbol.byteSize)));
        if (classSymbol.members.containsKey(classSymbol.name)) {
            Symbol s = classSymbol.localResolve(classSymbol.name);
            assert s instanceof FunctionSymbol;
            List<Operand> args = new ArrayList<>();
            args.add(classPtr);
            curBB.append(new Call((FunctionSymbol) s, null, args));
        }
        node.val = classPtr;
    }

    private Operand generateArrayNew(BaseType element, int dim, Queue<Operand> dimSizes) {
        LocalReg arrayPtr = curFunc.makeLocalReg("arrayPtr");
        Operand firstDim = dimSizes.poll();
        LocalReg memberLength = curFunc.makeLocalReg("memberLength");
        curBB.append(new BinaryOperation(memberLength, BinaryOperation.BinaryOp.MUL, firstDim, new IntImmediate(4)));
        LocalReg arrayLength = curFunc.makeLocalReg("arrayLength");
        curBB.append(new BinaryOperation(arrayLength, BinaryOperation.BinaryOp.ADD, memberLength, new IntImmediate(4)));
        curBB.append(new Malloc(arrayPtr, arrayLength));
        curBB.append(new Store(firstDim, arrayPtr));

        if (dimSizes.isEmpty()) {
            // new int[5]
            // new int[5][]
            // new A[5]
            // new A[5][]
            // new string[5]
            return arrayPtr;
        }

        BasicBlock forCondBB = curFunc.makeBB("new_for_cond");
        BasicBlock forBodyBB = curFunc.makeBB("new_for_body");
        BasicBlock forStepBB = curFunc.makeBB("new_for_step");
        BasicBlock forEndBB = curFunc.makeBB("new_for_end");

        curBB.addNext(forCondBB);
        forCondBB.addNext(forBodyBB);
        forBodyBB.addNext(forStepBB);
        forStepBB.addNext(forEndBB);

        loopNextStack.push(forStepBB);
        loopEndStack.push(forEndBB);

        LocalReg arrayEndPos = curFunc.makeLocalReg("arrayEndPos");
        curBB.append(new BinaryOperation(arrayEndPos, BinaryOperation.BinaryOp.ADD, arrayPtr, arrayLength));
        LocalReg startPos = curFunc.makeLocalReg("startPos");
        curBB.append(new BinaryOperation(startPos, BinaryOperation.BinaryOp.ADD, arrayPtr, new IntImmediate(4)));
        LocalReg storageCell = curFunc.makeLocalReg("storageCell");
        curBB.appendFront(new Alloca(storageCell, 4));
        curBB.append(new Store(startPos, storageCell));
        curBB.append(new DirectBranch(forCondBB));

        curBB = forCondBB;
        LocalReg pos = curFunc.makeLocalReg("pos");
        curBB.append(new Load(pos, storageCell));
        LocalReg condition = curFunc.makeLocalReg("condition");
        curBB.append(new BinaryOperation(condition, BinaryOperation.BinaryOp.LT, pos, arrayEndPos));
        curBB.append(new CondBranch(condition, forBodyBB, forEndBB));

        curBB = forBodyBB;
        curBB.append(new Store(generateArrayNew(element, dim - 1, dimSizes), pos));
        curBB.append(new DirectBranch(forStepBB));

        curBB = forStepBB;
        LocalReg nextPos = curFunc.makeLocalReg("pos");
        curBB.append(new BinaryOperation(nextPos, BinaryOperation.BinaryOp.ADD, pos, new IntImmediate(4)));
        curBB.append(new Store(nextPos, storageCell));
        curBB.append(new DirectBranch(forCondBB));

        loopNextStack.pop();
        loopEndStack.pop();

        curBB = forEndBB;

        return arrayPtr;
    }

    private void processArrayNew(NewExpr node) {
        Queue<Operand> dimSizes = new LinkedList<>();
        for (Expr expr : node.dimArgs) {
            visit(expr);
            dimSizes.offer(expr.val);
        }
        assert node.type instanceof ArrayType;
        BaseType elementType = ((ArrayType) node.type).getBaseType();
        node.val = generateArrayNew(elementType, node.dim, dimSizes);
    }

    public void visit(NewExpr node) {
        if (node.dim == 0) {
            // int a = new int; bool b = new bool; string c = new string;
            // These are illegal but have not been checked.
            processNonarrayNew(node);
            return;
        }
        processArrayNew(node);
    }

    public void visit(IdentifierExpr node) {
        Operand idAddr = getTargetAddr(node);
        LocalReg idVal = curFunc.makeLocalReg("idVal");
        curBB.append(new Load(idVal, idAddr));
        node.val = idVal;
        addCondBranch(node);
    }

    public void visit(IntConst node) {
        node.val = new IntImmediate(node.value);
    }

    public void visit(BoolConst node) {
        node.val = new IntImmediate(node.value ? 1 : 0);
        addCondBranch(node);
    }

    public void visit(StringConst node) {
        StringLiteral s = module.stringPool.get(node.value);
        if (s == null) {
            s = new StringLiteral(node.value);
            module.stringPool.put(node.value, s);
        }
        node.val = s;
    }

    public void visit(NullLiteral node) {
        node.val = new IntImmediate(0);
    }

}
