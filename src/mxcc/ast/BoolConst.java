package mxcc.ast;

import mxcc.symbol.Scope;

public class BoolConst extends Expr {
    public final boolean value;

    public BoolConst(boolean value, Scope scope) {
        super(scope);
        this.value = value;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
