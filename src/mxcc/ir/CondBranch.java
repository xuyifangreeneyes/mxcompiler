package mxcc.ir;

public class CondBranch extends BranchInst {
    private Operand cond;
    private BasicBlock ifTrue;
    private BasicBlock ifFalse;

    private void collectUseRegs() {
        useRegs.clear();
        if (cond instanceof Register) useRegs.add((Register) cond);
    }

    public CondBranch(BasicBlock parent, Operand cond, BasicBlock ifTrue, BasicBlock ifFalse) {
        super(parent);
        this.cond = cond;
        this.ifTrue = ifTrue;
        this.ifFalse = ifFalse;

        collectUseRegs();
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

    public void replaceOperand(Operand oldVal, Operand newVal) {
        if (cond == oldVal) cond = newVal;
        collectUseRegs();
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
