package mxcc.ast;

import mxcc.symbol.Scope;

public class IntConst extends Expr {
    private int value;

    public IntConst(int value, Scope scope) {
        super(scope);
        this.value = value;
    }
}
