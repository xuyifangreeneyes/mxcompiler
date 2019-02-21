package mxcc.ast;

public class MemberAccess extends Expr {
    private Expr container;
    private IdentifierExpr member;
}
