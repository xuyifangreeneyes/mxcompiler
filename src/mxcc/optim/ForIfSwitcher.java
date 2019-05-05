package mxcc.optim;

import mxcc.ast.*;
import mxcc.symbol.ClassSymbol;
import mxcc.symbol.GlobalSymbolTable;
import mxcc.symbol.Scope;
import mxcc.symbol.VariableSymbol;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

// After ForIfSwitcher, scope is INVALID!
// For now Class is not considered.
public class ForIfSwitcher extends AstBaseVisitor {
    private Program ast;

    public ForIfSwitcher(Program ast) {
        this.ast = ast;
    }

    public void work() {
        for (Decl decl : ast.decls) {
            if (decl instanceof FunctionDecl) {
                visit(decl);
            }
        }
    }

    private boolean ok(Set<VariableSymbol> loopVars, Expr cond) {
        ExprChecker condChecker = new ExprChecker(cond);
        condChecker.work();
        if (condChecker.isSensitive()) return false;
        for (VariableSymbol var : condChecker.getVars()) {
            if (loopVars.contains(var)) return false;
        }
        return true;
    }

    private void rewriteIfThen(IfStmt ifStmt, Stmt loopStmt) {
        List<Stmt> then = new ArrayList<>();
        then.add(loopStmt);
        ifStmt.then = new BlockStmt(then, null);
    }

    private IfStmt match(ForStmt forStmt) {
        if (forStmt.body.stmts.size() != 1 || !(forStmt.body.stmts.get(0) instanceof IfStmt)) return null;
        IfStmt ifStmt = (IfStmt) forStmt.body.stmts.get(0);
        if (ifStmt.otherwise != null) return null;
        List<Expr> loopExprs = new ArrayList<>();
        if (forStmt.init != null) loopExprs.add(forStmt.init);
        if (forStmt.cond != null) loopExprs.add(forStmt.cond);
        if (forStmt.step != null) loopExprs.add(forStmt.step);
        ExprChecker loopChecker = new ExprChecker(loopExprs);
        loopChecker.work();
        if (!ok(loopChecker.getVars(), ifStmt.cond)) {
            return null;
        }
        forStmt.body = ifStmt.then;
        rewriteIfThen(ifStmt, forStmt);
        return ifStmt;
    }

    private IfStmt match(WhileStmt whileStmt) {
        if (whileStmt.body.stmts.size() != 1 || !(whileStmt.body.stmts.get(0) instanceof IfStmt)) return null;
        IfStmt ifStmt = (IfStmt) whileStmt.body.stmts.get(0);
        if (ifStmt.otherwise != null) return null;
        ExprChecker loopChecker = new ExprChecker(whileStmt.cond);
        loopChecker.work();
        if (!ok(loopChecker.getVars(), ifStmt.cond)) {
            return null;
        }
        whileStmt.body = ifStmt.then;
        rewriteIfThen(ifStmt, whileStmt);
        return ifStmt;
    }

    private void check(List<Stmt> stmts) {
        int size = stmts.size();
        for (int i = 0; i < size; ++i) {
            visit(stmts.get(i));
            Stmt stmt = stmts.get(i);
            if (stmt instanceof ForStmt) {
                IfStmt ifStmt = match((ForStmt) stmt);
                if (ifStmt != null) {
                    stmts.set(i, ifStmt);
                }
            } else if (stmt instanceof WhileStmt) {
                IfStmt ifStmt = match((WhileStmt) stmt);
                if (ifStmt != null) {
                    stmts.set(i, ifStmt);
                }
            }
        }
    }

    public void visit(FunctionDecl node) {
        check(node.stmts);
    }

    public void visit(BlockStmt node) {
        check(node.stmts);
    }

    public void visit(IfStmt node) {
        visit(node.then);
        if (node.otherwise != null) {
            visit(node.otherwise);
        }
    }

    public void visit(ForStmt node) {
        visit(node.body);
    }

    public void visit(WhileStmt node) {
        visit(node.body);
    }

    private static class ExprChecker extends AstBaseVisitor {
        private List<Expr> exprs;
        private boolean sensitive = false;
        private Set<VariableSymbol> vars = new HashSet<>();

        public ExprChecker(List<Expr> exprs) {
            this.exprs = exprs;
        }

        public ExprChecker(Expr expr) {
            exprs = new ArrayList<>();
            exprs.add(expr);
        }

        public void work() {
            exprs.forEach(this::visit);
        }

        public boolean isSensitive() {
            return sensitive;
        }

        public Set<VariableSymbol> getVars() {
            return vars;
        }

        public void visit(BinaryExpr node) {
            if (node.op == BinaryExpr.BinaryOp.ASSIGN) {
                sensitive = true;
            }
            visit(node.left);
            visit(node.right);
        }

        public void visit(UnaryExpr node) {
            if (node.op == UnaryExpr.UnaryOp.INC || node.op == UnaryExpr.UnaryOp.DEC ||
                    node.op == UnaryExpr.UnaryOp.INC_SUF || node.op == UnaryExpr.UnaryOp.DEC_SUF) {
                sensitive = true;
            }
            visit(node.expr);
        }

        public void visit(FunctionCall node) {
            sensitive = true;
            visit(node.caller);
            node.args.forEach(this::visit);
        }

        public void visit(ArrayAccess node) {
            visit(node.container);
            visit(node.subscript);
        }

        public void visit(MemberAccess node) {
            sensitive = true;
            visit(node.container);
            visit(node.member);
        }

        public void visit(NewExpr node) {
            sensitive = true;
            node.dimArgs.forEach(this::visit);
        }

        private boolean isLocal(VariableSymbol var) {
            Scope scope = var.def.scope;
            return !(scope instanceof GlobalSymbolTable) && !(scope instanceof ClassSymbol);
        }

        public void visit(IdentifierExpr node) {
            if (node.var instanceof VariableSymbol) {
                VariableSymbol var = (VariableSymbol) node.var;
                vars.add(var);
                if (!isLocal(var)) {
                    sensitive = true;
                }
            } else {
                assert sensitive;
            }
        }
    }
}
