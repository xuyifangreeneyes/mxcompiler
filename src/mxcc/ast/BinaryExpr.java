package mxcc.ast;

import mxcc.symbol.Scope;

public class BinaryExpr extends Expr {
    public enum BinaryOp {
        MUL, DIV, MOD, ADD, SUB,
        LT, GT, LE, GE, EQ, NEQ,
        BIT_AND, BIT_OR, BIT_XOR,
        AND, OR, ASSIGN,
    }

    private BinaryOp op;
    private Expr left;
    private Expr right;

    public BinaryExpr(BinaryOp op, Expr left, Expr right, Scope scope) {
        super(scope);
        this.op = op;
        this.left = left;
        this.right = right;
    }

}
