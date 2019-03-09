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

    public Operand getCond() {
        return cond;
    }

    public BasicBlock getIfTrue() {
        return ifTrue;
    }

    public BasicBlock getIfFalse() {
        return ifFalse;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
