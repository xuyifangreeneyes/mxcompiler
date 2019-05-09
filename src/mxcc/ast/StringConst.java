package mxcc.ast;

import mxcc.symbol.Scope;

public class StringConst extends Expr {
    public final String value;

    public StringConst(String value, Scope scope) {
        super(scope);
        this.value = value;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
