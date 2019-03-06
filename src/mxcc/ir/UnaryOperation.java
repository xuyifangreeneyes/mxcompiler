package mxcc.ir;

public class UnaryOperation extends Instruction {
    public enum UnaryOp {
        INC, DEC, NEG, BIT_NOT,
    }

    private Register dst;
    private UnaryOp op;
    private Operand src;

    public UnaryOperation(Register dst, UnaryOp op, Operand src) {
        this.dst = dst;
        this.op = op;
        this.src = src;
    }
}