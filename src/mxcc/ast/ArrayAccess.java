package mxcc.ast;

import mxcc.symbol.Scope;

public class ArrayAccess extends Expr {
    public final Expr container;
    public final Expr subscript;

    public ArrayAccess(Expr container, Expr subscript, Scope scope) {
        super(scope);
        this.container = container;
        this.subscript = subscript;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
