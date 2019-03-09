package mxcc.ir;

public class Return extends BranchInst {
    private Operand retVal;

    public Return(Operand retVal) {
        this.retVal = retVal;
    }

    public Operand getRetVal() {
        return retVal;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
