package mxcc.ast;

import mxcc.symbol.Scope;

public class IntConst extends Expr {
    public final int value;

    public IntConst(int value, Scope scope) {
        super(scope);
        this.value = value;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
