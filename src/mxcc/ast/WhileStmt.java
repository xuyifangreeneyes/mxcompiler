package mxcc.ast;

import mxcc.symbol.Scope;

public class WhileStmt extends Stmt {
    private Expr cond;
    private Stmt body;

    public WhileStmt(Expr cond, Stmt body, Scope scope) {
        super(scope);
        this.cond = cond;
        this.body = body;
    }
}
