package mxcc.ir;

public class DirectBranch extends BranchInst {
    private BasicBlock target;

    public DirectBranch(BasicBlock target) {
        this.target = target;
    }

    public BasicBlock getTarget() {
        return target;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
