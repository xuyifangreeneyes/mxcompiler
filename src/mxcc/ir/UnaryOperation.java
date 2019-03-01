package mxcc.ir;

public class UnaryOperation extends AssignInst {
    public enum UnaryOp {
        INC, DEC, NEG, BIT_NOT,
    }

    private UnaryOp op;
    private Operand src;

    public UnaryOperation(Register reg, UnaryOp op, Operand src) {
        super(reg);
        this.op = op;
        this.src = src;
    }
}
