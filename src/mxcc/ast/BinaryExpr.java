package mxcc.ast;

import mxcc.symbol.Scope;

public class BinaryExpr extends Expr {
    public enum BinaryOp {
        MUL, DIV, MOD,
        ADD, SUB, LSFT, RSFT,
        LT, GT, LE, GE, EQ, NEQ,
        BIT_AND, BIT_OR, BIT_XOR,
        AND, OR, ASSIGN,
    }

    public final BinaryOp op;
    public Expr left;
    public Expr right;

    public BinaryExpr(BinaryOp op, Expr left, Expr right, Scope scope) {
        super(scope);
        this.op = op;
        this.left = left;
        this.right = right;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
