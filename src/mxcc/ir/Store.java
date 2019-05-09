package mxcc.ir;

public class Store extends Instruction {
    private Operand val;
    private Operand addr;

    private void collectUseRegs() {
        useRegs.clear();
        if (val instanceof Register) useRegs.add((Register) val);
        if (addr instanceof Register) useRegs.add((Register) addr);
    }

    public Store(BasicBlock parent, Operand val, Operand addr) {
        super(parent);
        this.val = val;
        this.addr = addr;

        collectUseRegs();
    }

    public Operand getAddr() {
        return addr;
    }

    public Operand getVal() {
        return val;
    }

    public void replaceOperand(Operand oldVal, Operand newVal) {
        if (val == oldVal) val = newVal;
        if (addr == oldVal) addr = newVal;
        collectUseRegs();
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
