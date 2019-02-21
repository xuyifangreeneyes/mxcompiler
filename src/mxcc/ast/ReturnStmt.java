package mxcc.ast;

import mxcc.symbol.Scope;

public class ReturnStmt extends Stmt {
    private Expr value;

    public ReturnStmt(Expr value, Scope scope) {
        super(scope);
        this.value = value;
    }
}
