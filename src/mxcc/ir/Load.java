package mxcc.ir;

public class Load extends Instruction {
    private LocalReg dst;
    private Operand addr;

    private void collectUseRegs() {
        useRegs.clear();
        if (addr instanceof Register) useRegs.add((Register) addr);
    }

    public Load(BasicBlock parent, LocalReg dst, Operand addr) {
        super(parent);
        this.dst = dst;
        this.addr = addr;

        defReg = dst;
        collectUseRegs();
    }

    public LocalReg getDst() {
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
