package mxcc.ir;

public class BinaryOperation extends Instruction {
    public enum BinaryOp {
        MUL, DIV, MOD,
        ADD, SUB, LSFT, RSFT,
        LT, GT, LE, GE, EQ, NEQ,
        BIT_AND, BIT_OR, BIT_XOR,
    }

    private Register dst;
    private BinaryOp op;
    private Operand lhs;
    private Operand rhs;

    public BinaryOperation(Register dst, BinaryOp op, Operand lhs, Operand rhs) {
        this.dst = dst;
        this.op = op;
        this.lhs = lhs;
        this.rhs = rhs;
    }

}