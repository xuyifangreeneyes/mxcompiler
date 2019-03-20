package mxcc.ir;

public class UnaryOperation extends Instruction {
    public enum UnaryOp {
        INC, DEC, NEG, BIT_NOT,
    }

    private Register dst;
    private UnaryOp op;
    private Operand src;

    private void collectUseRegs() {
        useRegs.clear();
        if (src instanceof Register) useRegs.add((Register) src);
    }

    public UnaryOperation(BasicBlock parent, Register dst, UnaryOp op, Operand src) {
        super(parent);
        this.dst = dst;
        this.op = op;
        this.src = src;

        defReg = dst;
    }

    public Register getDst() {
        return dst;
    }

    public UnaryOp getOp() {
        return op;
    }

    public Operand getSrc() {
        return src;
    }

    public void replaceOperand(Operand oldVal, Operand newVal) {
        if (src == oldVal) src = newVal;
        collectUseRegs();
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
