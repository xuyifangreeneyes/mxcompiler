package mxcc.ir;

public class Return extends BranchInst {
    private Operand retVal;

    private void collectUseRegs() {
        useRegs.clear();
        if (retVal instanceof Register) useRegs.add((Register) retVal);
    }

    public Return(BasicBlock parent, Operand retVal) {
        super(parent);
        this.retVal = retVal;

        collectUseRegs();
    }

    public Operand getRetVal() {
        return retVal;
    }

    public void replaceOperand(Operand oldVal, Operand newVal) {
        if (retVal == oldVal) retVal = newVal;
        collectUseRegs();
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
