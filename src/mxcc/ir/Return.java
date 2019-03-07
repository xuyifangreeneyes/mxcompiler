package mxcc.ir;

public class Return extends BranchInst {
    private Operand retVal;

    public Return(Operand retVal) {
        this.retVal = retVal;
    }
}
