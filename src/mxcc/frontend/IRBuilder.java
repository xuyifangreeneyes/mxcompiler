package mxcc.frontend;

import mxcc.ast.*;
import mxcc.ir.*;
import mxcc.symbol.*;

import java.util.*;

import static mxcc.symbol.GlobalSymbolTable.*;


// For any node whose type is BOOL_TYPE, how are node.ifTrueBB and node.ifFalseBB set up?
// 1. [ if (node) {...} ( else {...} ) ]
//    They are set up in IfStmt.
// 2. [ bool a = node; ] / [ a = node; ] / [ a == node ] / [return node] / [ call(node, ...) ] / [ node; ]
//    They are set up in visitExpr.
// 3. [ subNode_1 && subNode_2 ] / [ subNode_1 || subNode_2 ] subNode.ifTrueBB and subNode.ifFalseBB come from node.
// 4. [ ! subNode ] subNode.ifTrueBB and subNode.ifFalseBB come from node.
// 5. [ call(...) ] / [ lhs ==/!=/</>/<=/>= rhs ] / [ true / false ] / [ bool variable ] We can call them bool terminator.
//    Add a br if node.ifTrueBB != null.


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
        curInitBB = module.funcs.get("_globalInit").getStartBB();

        node.decls.forEach(this::visit);

        BasicBlock globalInitTail = module.funcs.get("_globalInit").getLastBB();
        globalInitTail.append(new Return(globalInitTail, null));
    }

    private void processVariableDeclInit(Operand varAddr, Expr init) {
        visitExpr(init);
        curBB.append(new Store(curBB, init.val, varAddr));
    }

    public void visit(VariableDecl node) {
        if (node.scope instanceof ClassSymbol) return;
        if (node.scope instanceof GlobalSymbolTable) {
            GlobalReg globalVarAddr = new GlobalReg(node.varName);
            module.globalRegs.add(globalVarAddr);
            node.var.reg = globalVarAddr;
            if (node.init != null) {
                curFunc = module.funcs.get("_globalInit");
                curBB = curInitBB;
                processVariableDeclInit(globalVarAddr, node.init);
                curInitBB = curBB;
            }
            return;
        }

        LocalReg varAddr = curFunc.makeLocalReg("varAddr");
        node.var.reg = varAddr;
        curFunc.getStartBB().appendFront(new Alloca(curFunc.getStartBB(), varAddr, 8));
        if (node.init != null) {
            processVariableDeclInit(varAddr, node.init);
        }
    }

    public void visit(FunctionDecl node) {
        boolean isMember = node.func.isClassMember();
        String funcName = node.func.name;
        if (isMember) funcName = "_" + node.scope.getEnclosingScope().getScopeName() + "_" + funcName;
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
            curFunc.getStartBB().appendFront(new Alloca(curFunc.getStartBB(), thisAddr, 8));
            curBB.append(new Store(curBB, thisVal, thisAddr));
        }

        for (int i = 0; i < node.paramList.size(); ++i) {
            LocalReg argVal = curFunc.makeLocalReg("argVal");
            curFunc.args.add(argVal);
            LocalReg argAddr = curFunc.makeLocalReg("argAddr");
            node.paramList.get(i).var.reg = argAddr;
            curFunc.getStartBB().appendFront(new Alloca(curFunc.getStartBB(), argAddr, 8));
            curBB.append(new Store(curBB, argVal, argAddr));
        }

        for (Stmt stmt : node.stmts) {
            if (stmt instanceof Expr) {
                visitExpr((Expr) stmt);
            } else {
                visit(stmt);
            }
        }

        // Some functions don't include returnStmt. For this case, only one BB needs
        // to append a Return and the BB is exactly tail of function (my arrangement
        // of BB ensures that).

        BasicBlock tail = curFunc.getLastBB();
        if (!tail.isEnded()) {
            if (node.func.type == null || node.func.type.isSameType(VOID_TYPE)) {
                tail.append(new Return(tail, null));
            } else {
                tail.append(new Return(tail, new IntImmediate(0)));
            }
        }
    }

    public void visit(ClassDecl node) {
        for (Decl decl : node.decls) {
            if (decl instanceof FunctionDecl) visit(decl);
        }
    }

    public void visit(BlockStmt node) {
        for (Stmt stmt : node.stmts) {
            if (stmt instanceof Expr) {
                visitExpr((Expr) stmt);
            } else {
                visit(stmt);
            }
        }
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
        curBB.append(new DirectBranch(curBB, mergeBB));

        if (hasElse) {
            curBB = falseBB;
            visit(node.otherwise);
            curBB.append(new DirectBranch(curBB, mergeBB));
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

        if (node.init != null) visitExpr(node.init);
        curBB.append(new DirectBranch(curBB, forCondBB));

        curBB = forCondBB;
        if (node.cond != null) {
            node.cond.ifTrueBB = forBodyBB;
            node.cond.ifFalseBB = forEndBB;
            visit(node.cond);
        } else curBB.append(new DirectBranch(curBB, forBodyBB));

        curBB = forBodyBB;
        visit(node.body);
        curBB.append(new DirectBranch(curBB, forStepBB));

        curBB = forStepBB;
        if (node.step != null) visitExpr(node.step);
        curBB.append(new DirectBranch(curBB, forCondBB));

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

        curBB.append(new DirectBranch(curBB, whileCondBB));

        curBB = whileCondBB;
        node.cond.ifTrueBB = whileBodyBB;
        node.cond.ifFalseBB = whileEndBB;
        visit(node.cond);

        curBB = whileBodyBB;
        visit(node.body);
        curBB.append(new DirectBranch(curBB, whileCondBB));

        loopNextStack.pop();
        loopEndStack.pop();

        curBB = whileEndBB;
    }

    public void visit(ReturnStmt node) {
        if (node.value == null) {
            curBB.append(new Return(curBB, null));
            return;
        }
        visitExpr(node.value);
        curBB.append(new Return(curBB, node.value.val));
    }

    public void visit(BreakStmt node) {
        curBB.append(new DirectBranch(curBB, loopEndStack.peek()));
    }

    public void visit(ContinueStmt node) {
        curBB.append(new DirectBranch(curBB, loopNextStack.peek()));
    }


    private Operand getTargetAddr(Expr expr) {
        if (expr instanceof IdentifierExpr) {
            IdentifierExpr idExpr = (IdentifierExpr) expr;
            if (idExpr.name.equals("this")) return thisAddr;
            if (idExpr.var.def.scope instanceof ClassSymbol) {
                ClassSymbol classSymbol = (ClassSymbol) idExpr.var.def.scope;
                LocalReg classPtr = curFunc.makeLocalReg("classPtr");
                curBB.append(new Load(curBB, classPtr, thisAddr));
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
                visitExpr(memberAccess.container);
                return memberAccess.container.val;
            }

            Operand classPtrPrt = getTargetAddr(memberAccess.container);
            LocalReg classPtr = curFunc.makeLocalReg("classPtr");
            curBB.append(new Load(curBB, classPtr, classPtrPrt));

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

            LocalReg arrayPtr;
            if (arrayAccess.container instanceof NewExpr || arrayAccess.container instanceof FunctionCall) {
                visitExpr(arrayAccess.container);
                arrayPtr = (LocalReg) arrayAccess.container.val;
            } else {
                Operand arrayPtrPtr = getTargetAddr(arrayAccess.container);
                arrayPtr = curFunc.makeLocalReg("arrayPtr");
                curBB.append(new Load(curBB, arrayPtr, arrayPtrPtr));
            }

            LocalReg arrayBase = curFunc.makeLocalReg("arrayBase");
            curBB.append(new BinaryOperation(curBB, arrayBase, BinaryOperation.BinaryOp.ADD, arrayPtr, new IntImmediate(8)));
            visitExpr(arrayAccess.subscript);
            Operand index = arrayAccess.subscript.val;
            LocalReg offset = curFunc.makeLocalReg("offset");
            curBB.append(new BinaryOperation(curBB, offset, BinaryOperation.BinaryOp.MUL, index, new IntImmediate(8)));
            LocalReg elementAddr = curFunc.makeLocalReg("elementAddr");
            curBB.append(new BinaryOperation(curBB, elementAddr, BinaryOperation.BinaryOp.ADD, arrayBase, offset));
            return elementAddr;
        }
//        System.out.println(expr.getClass().toString());
//        if (expr instanceof NewExpr) {
//            System.out.println(((NewExpr) expr).baseType);
//        }
        assert false;
        return null;
    }

    private Operand getMemberAddr(Operand baseAddr, ClassSymbol classSymbol, String memberName) {
        IntImmediate offset = new IntImmediate(classSymbol.layout.get(memberName));
        LocalReg memberAddr = curFunc.makeLocalReg("memberAddr");
        curBB.append(new BinaryOperation(curBB, memberAddr, BinaryOperation.BinaryOp.ADD, baseAddr, offset));
        return memberAddr;
    }

    private void visitExpr(Expr expr) {
        if (isLogicOpExpr(expr)) {
            expr.ifTrueBB = curFunc.makeBB("bool_true");
            expr.ifFalseBB = curFunc.makeBB("bool_false");
            BasicBlock mergeBB = curFunc.makeBB("bool_merge");

            curBB.addNext(expr.ifTrueBB);
            expr.ifTrueBB.addNext(expr.ifFalseBB);
            expr.ifFalseBB.addNext(mergeBB);

            LocalReg boolValAddr = curFunc.makeLocalReg("boolValAddr");
            curFunc.getStartBB().appendFront(new Alloca(curFunc.getStartBB(), boolValAddr, 8));

            visit(expr);

            expr.ifTrueBB.append(new Store(expr.ifTrueBB, new IntImmediate(1), boolValAddr));
            expr.ifTrueBB.append(new DirectBranch(expr.ifTrueBB, mergeBB));
            expr.ifFalseBB.append(new Store(expr.ifFalseBB, new IntImmediate(0), boolValAddr));
            expr.ifFalseBB.append(new DirectBranch(expr.ifFalseBB, mergeBB));
            LocalReg boolVal = curFunc.makeLocalReg("boolVal");
            mergeBB.append(new Load(mergeBB, boolVal, boolValAddr));
            expr.val = boolVal;

            curBB = mergeBB;
        } else {
            visit(expr);
        }
    }

    private void processAssign(BinaryExpr node) {
        visitExpr(node.right);
        Operand lhsAddr = getTargetAddr(node.left);
        curBB.append(new Store(curBB, node.right.val, lhsAddr));
    }

    private void processBinaryLogic(BinaryExpr node) {
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
    }

    private void addCondBranch(Expr node) {
        if (node.type.isSameType(BOOL_TYPE) && node.ifTrueBB != null) {
            curBB.append(new CondBranch(curBB, node.val, node.ifTrueBB, node.ifFalseBB));
        }
    }

    private void processBinaryString(BinaryExpr node) {
        visitExpr(node.left);
        visitExpr(node.right);
        LocalReg res = curFunc.makeLocalReg("res");
        List<Operand> args = new ArrayList<>();
        args.add(node.left.val);
        args.add(node.right.val);
        switch (node.op) {
            case ADD: curBB.append(new Call(curBB, STR_ADD, res, args)); break;
            case EQ: curBB.append(new Call(curBB, STR_EQ, res, args)); break;
            case NEQ: curBB.append(new Call(curBB, STR_NEQ, res, args)); break;
            case LT: curBB.append(new Call(curBB, STR_LT, res, args)); break;
            case GT: curBB.append(new Call(curBB, STR_GT, res, args)); break;
            case LE: curBB.append(new Call(curBB, STR_LE, res, args)); break;
            case GE: curBB.append(new Call(curBB, STR_GE, res, args)); break;
        }
        node.val = res;
        addCondBranch(node);
    }

    private void processBinaryInt(BinaryExpr node) {
        visitExpr(node.left);
        visitExpr(node.right);
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
        curBB.append(new BinaryOperation(curBB, res, op, node.left.val, node.right.val));
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
        curBB.append(new Load(curBB, oldVal, addr));
        curBB.append(new UnaryOperation(curBB, newVal, op, oldVal));
        curBB.append(new Store(curBB, newVal, addr));
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

        visitExpr(node.expr);
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
                curBB.append(new UnaryOperation(curBB, res, op, node.expr.val));
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
                curBB.append(new Load(curBB, classPtr, thisAddr));
                args.add(classPtr);
            }
        }
        if (node.func.isStringBuiltinFunction() || node.func.isArrayBuiltinFunction()) {
            args.add(getTargetAddr(node.caller));
        }
        for (Expr argExpr : node.args) {
            visitExpr(argExpr);
            args.add(argExpr.val);
        }
        curBB.append(new Call(curBB, node.func, dst, args));
        node.val = dst;
        addCondBranch(node);
    }

    public void visit(ArrayAccess node) {
        Operand elementAddr = getTargetAddr(node);
        LocalReg elementVal = curFunc.makeLocalReg("elementVal");
        curBB.append(new Load(curBB, elementVal, elementAddr));
        node.val = elementVal;
        addCondBranch(node);
    }

    public void visit(MemberAccess node) {
        Operand memberAddr = getTargetAddr(node);
        LocalReg memberVal = curFunc.makeLocalReg("memberVal");
        curBB.append(new Load(curBB, memberVal, memberAddr));
        node.val = memberVal;
        addCondBranch(node);
    }

    private void processNonarrayNew(NewExpr node) {
        LocalReg classPtr = curFunc.makeLocalReg("classPtr");
        assert node.type instanceof ClassSymbol;
        ClassSymbol classSymbol = (ClassSymbol) node.type;
        curBB.append(new Malloc(curBB, classPtr, new IntImmediate(classSymbol.byteSize)));
        if (classSymbol.members.containsKey(classSymbol.name)) {
            Symbol s = classSymbol.localResolve(classSymbol.name);
            assert s instanceof FunctionSymbol;
            List<Operand> args = new ArrayList<>();
            args.add(classPtr);
            curBB.append(new Call(curBB, (FunctionSymbol) s, null, args));
        }
        node.val = classPtr;
    }

    private Operand generateArrayNew(BaseType element, int dim, Queue<Operand> dimSizes) {
        LocalReg arrayPtr = curFunc.makeLocalReg("arrayPtr");
        Operand firstDim = dimSizes.poll();
        LocalReg memberLength = curFunc.makeLocalReg("memberLength");
        curBB.append(new BinaryOperation(curBB, memberLength, BinaryOperation.BinaryOp.MUL, firstDim, new IntImmediate(8)));
        LocalReg arrayLength = curFunc.makeLocalReg("arrayLength");
        curBB.append(new BinaryOperation(curBB, arrayLength, BinaryOperation.BinaryOp.ADD, memberLength, new IntImmediate(8)));
        curBB.append(new Malloc(curBB, arrayPtr, arrayLength));
        curBB.append(new Store(curBB, firstDim, arrayPtr));

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
        curBB.append(new BinaryOperation(curBB, arrayEndPos, BinaryOperation.BinaryOp.ADD, arrayPtr, arrayLength));
        LocalReg startPos = curFunc.makeLocalReg("startPos");
        curBB.append(new BinaryOperation(curBB, startPos, BinaryOperation.BinaryOp.ADD, arrayPtr, new IntImmediate(8)));
        LocalReg storageCell = curFunc.makeLocalReg("storageCell");
        curFunc.getStartBB().appendFront(new Alloca(curFunc.getStartBB(), storageCell, 8));
        curBB.append(new Store(curBB, startPos, storageCell));
        curBB.append(new DirectBranch(curBB, forCondBB));

        curBB = forCondBB;
        LocalReg pos = curFunc.makeLocalReg("pos");
        curBB.append(new Load(curBB, pos, storageCell));
        LocalReg condition = curFunc.makeLocalReg("condition");
        curBB.append(new BinaryOperation(curBB, condition, BinaryOperation.BinaryOp.LT, pos, arrayEndPos));
        curBB.append(new CondBranch(curBB, condition, forBodyBB, forEndBB));

        curBB = forBodyBB;
        curBB.append(new Store(curBB, generateArrayNew(element, dim - 1, dimSizes), pos));
        curBB.append(new DirectBranch(curBB, forStepBB));

        curBB = forStepBB;
        LocalReg nextPos = curFunc.makeLocalReg("pos");
        curBB.append(new BinaryOperation(curBB, nextPos, BinaryOperation.BinaryOp.ADD, pos, new IntImmediate(8)));
        curBB.append(new Store(curBB, nextPos, storageCell));
        curBB.append(new DirectBranch(curBB, forCondBB));

        loopNextStack.pop();
        loopEndStack.pop();

        curBB = forEndBB;

        return arrayPtr;
    }

    private void processArrayNew(NewExpr node) {
        Queue<Operand> dimSizes = new LinkedList<>();
        for (Expr expr : node.dimArgs) {
            visitExpr(expr);
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
        curBB.append(new Load(curBB, idVal, idAddr));
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
