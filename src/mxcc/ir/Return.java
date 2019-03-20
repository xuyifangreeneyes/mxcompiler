package mxcc.ir;

public class Return extends BranchInst {
    private Operand retVal;

    public Return(BasicBlock parent, Operand retVal) {
        super(parent);
        this.retVal = retVal;

        if (retVal instanceof Register) useRegs.add((Register) retVal);
    }

    public Operand getRetVal() {
        return retVal;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
