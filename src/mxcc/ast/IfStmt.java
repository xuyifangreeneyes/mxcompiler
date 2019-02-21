package mxcc.ast;

import mxcc.symbol.Scope;

public class IfStmt extends Stmt {
    private Expr cond;
    private Stmt then;
    private Stmt otherwise;

    public IfStmt(Expr cond, Stmt then, Stmt otherwise, Scope scope) {
        super(scope);
        this.cond = cond;
        this.then = then;
        this.otherwise = otherwise;
    }
}
