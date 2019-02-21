package mxcc.ast;

import mxcc.symbol.Scope;

public class ForStmt extends Stmt {
    private Expr init;
    private Expr cond;
    private Expr step;
    private Stmt body;

    public ForStmt(Expr init, Expr cond, Expr step, Stmt body, Scope scope) {
        super(scope);
        this.init = init;
        this.cond = cond;
        this.step = step;
        this.body = body;
    }
}
