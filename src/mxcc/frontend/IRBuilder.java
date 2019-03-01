package mxcc.frontend;

import mxcc.ast.*;
import mxcc.ir.*;
import mxcc.symbol.ClassSymbol;
import mxcc.symbol.Scope;

import java.util.ArrayList;
import java.util.List;
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
        Register varAddr = curFunc.makeRegister();
        node.var.reg = varAddr;
        curFunc.getStartBB().addAlloca(new Alloca(varAddr, 4));
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
        int numOfArgs = node.paramList.size();
        Register thisVal = isMember ? curFunc.makeRegister() : null;
        List<Register> args = new ArrayList<>();
        for (int i = 0; i < numOfArgs; ++i)
            args.add(curFunc.makeRegister());
        if (isMember) {
            thisAddr = curFunc.makeRegister();
            curBB.addAlloca(new Alloca(thisAddr, 4));
            curBB.append(new Store(thisVal, thisAddr));
        }
        for (int i = 0; i < numOfArgs; ++i) {
            Register varAddr = curFunc.makeRegister();
            node.paramList.get(i).var.reg = varAddr;
            curBB.addAlloca(new Alloca(varAddr, 4));
            curBB.append(new Store(args.get(i), varAddr));
        }
        node.stmts.forEach(this::visit);
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
        BasicBlock forStepBB = new BasicBlock(curFunc, "for_step")
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


}
