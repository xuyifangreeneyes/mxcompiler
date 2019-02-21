package mxcc.ast;

import mxcc.symbol.Scope;

public class BoolConst extends Expr {
    private boolean value;

    public BoolConst(boolean value, Scope scope) {
        super(scope);
        this.value = value;
    }
}
