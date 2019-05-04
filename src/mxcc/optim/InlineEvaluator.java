package mxcc.optim;

import mxcc.ast.*;
import mxcc.ir.Function;
import mxcc.symbol.FunctionSymbol;

import java.util.HashSet;
import java.util.Set;

public class InlineEvaluator extends AstBaseVisitor {
    private Program ast;
    private FunctionSymbol curFunc = null;
    private int loopCounter = 0;
    private Set<Function> prohibited = new HashSet<>();

    public InlineEvaluator(Program ast) {
        this.ast = ast;
    }

    public void work() {
        visit(ast);
    }

    public void visit(Program node) {
        for (Decl decl : node.decls) {
            if (decl instanceof VariableDecl) continue;
            visit(decl);
        }
    }

    public Set<Function> getProhibited() {
        return prohibited;
    }

    public void visit(ClassDecl node) {
        for (Decl decl : node.decls) {
            if (decl instanceof FunctionDecl) {
                visit(decl);
            }
        }
    }

    public void visit(FunctionDecl node) {
        curFunc = node.func;
        node.stmts.forEach(this::visit);
        curFunc = null;
    }

    public void visit(BlockStmt node) {
        node.stmts.forEach(this::visit);
    }

    public void visit(IfStmt node) {
        visit(node.cond);
        visit(node.then);
        if (node.otherwise != null) {
            visit(node.otherwise);
        }
    }

    public void visit(ForStmt node) {
        ++loopCounter;
        visit(node.init);
        visit(node.cond);
        visit(node.step);
        visit(node.body);
        --loopCounter;
    }
    public void visit(WhileStmt node) {
        ++loopCounter;
        visit(node.cond);
        visit(node.body);
        --loopCounter;
    }

    public void visit(ReturnStmt node) {
        visit(node.value);
    }

    public void visit(BinaryExpr node) {
        visit(node.left);
        visit(node.right);
    }

    public void visit(UnaryExpr node) {
        visit(node.expr);
    }

    public void visit(FunctionCall node) {
        assert curFunc != null;
        if (loopCounter > 0 && node.func == curFunc) {
            assert curFunc.IRFunc != null;
            prohibited.add(curFunc.IRFunc);
        }
        visit(node.caller);
        node.args.forEach(this::visit);
    }

    public void visit(ArrayAccess node) {
        visit(node.container);
        visit(node.subscript);
    }

    public void visit(MemberAccess node) {
        visit(node.container);
        visit(node.member);
    }

    public void visit(NewExpr node) {
        node.dimArgs.forEach(this::visit);
    }

}
