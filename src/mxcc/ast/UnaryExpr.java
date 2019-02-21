package mxcc.ast;

import mxcc.symbol.Scope;

public class UnaryExpr extends Expr {
    public enum UnaryOp {
        INC, DEC, INC_SUF, DEC_SUF, POS, NEG, NOT, BIT_NOT
    }

    private UnaryOp op;
    private Expr expr;

    public UnaryExpr(UnaryOp op, Expr expr, Scope scope) {
        super(scope);
        this.op = op;
        this.expr = expr;
    }
}
