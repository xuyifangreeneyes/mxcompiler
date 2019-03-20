package mxcc.ir;

public class Malloc extends Instruction {
    private Register dst;
    private Operand size;

    private void collectUseRegs() {
        useRegs.clear();
        if (size instanceof Register) useRegs.add((Register) size);
    }

    public Malloc(BasicBlock parent, Register dst, Operand size) {
        super(parent);
        this.dst = dst;
        this.size = size;

        defReg = dst;
        collectUseRegs();
    }

    public Register getDst() {
        return dst;
    }

    public Operand getSize() {
        return size;
    }

    public void replaceOperand(Operand oldVal, Operand newVal) {
        if (size == oldVal) size = newVal;
        collectUseRegs();
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
