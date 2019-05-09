package mxcc.ast;

import mxcc.symbol.Scope;

public class MemberAccess extends Expr {
    public final Expr container;
    public final IdentifierExpr member;

    public MemberAccess(Expr container, IdentifierExpr member, Scope scope) {
        super(scope);
        this.container = container;
        this.member = member;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
