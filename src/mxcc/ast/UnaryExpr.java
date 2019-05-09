package mxcc.ast;

import mxcc.symbol.Scope;

public class UnaryExpr extends Expr {
    public enum UnaryOp {
        INC, DEC, INC_SUF, DEC_SUF, POS, NEG, NOT, BIT_NOT
    }

    public final UnaryOp op;
    public final Expr expr;

    public UnaryExpr(UnaryOp op, Expr expr, Scope scope) {
        super(scope);
        this.op = op;
        this.expr = expr;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
