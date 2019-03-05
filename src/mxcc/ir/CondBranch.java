package mxcc.ir;

public class CondBranch extends BranchInst {
    private Operand cond;
    private BasicBlock ifTrue;
    private BasicBlock ifFalse;

    public CondBranch(Operand cond, BasicBlock ifTrue, BasicBlock ifFalse) {
        this.cond = cond;
        this.ifTrue = ifTrue;
        this.ifFalse = ifFalse;
    }
}
