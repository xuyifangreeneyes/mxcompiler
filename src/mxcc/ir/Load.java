package mxcc.ir;

public class Load extends Instruction {
    private Register dst;
    private Operand addr;

    private void collectUseRegs() {
        useRegs.clear();
        if (addr instanceof Register) useRegs.add((Register) addr);
    }

    public Load(BasicBlock parent, Register dst, Operand addr) {
        super(parent);
        this.dst = dst;
        this.addr = addr;

        defReg = dst;
        collectUseRegs();
    }

    public Register getDst() {
        return dst;
    }

    public Operand getAddr() {
        return addr;
    }

    public void replaceOperand(Operand oldVal, Operand newVal) {
        if (addr == oldVal) addr = newVal;
        collectUseRegs();
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
