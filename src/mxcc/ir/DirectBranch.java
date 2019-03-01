package mxcc.ir;

public class DirectBranch extends BranchInst {
    private BasicBlock target;

    public DirectBranch(BasicBlock target) {
        this.target = target;
    }

}
