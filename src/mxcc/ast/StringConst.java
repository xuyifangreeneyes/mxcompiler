package mxcc.ast;

import mxcc.symbol.Scope;

public class StringConst extends Expr {
    private String value;

    public StringConst(String value, Scope scope) {
        super(scope);
        this.value = value;
    }
}
