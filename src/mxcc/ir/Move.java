package mxcc.ir;

public class Move extends Instruction {
    private Register dst;
    private Operand src;

    private void collectUseRegs() {
        useRegs.clear();
        if (src instanceof Register) useRegs.add((Register) src);
    }

    public Move(BasicBlock parent, Register dst, Operand src) {
        super(parent);
        this.dst = dst;
        this.src = src;

        defReg = dst;
        collectUseRegs();
    }

    public Register getDst() {
        return dst;
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
