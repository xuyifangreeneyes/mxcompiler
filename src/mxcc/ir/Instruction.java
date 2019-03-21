package mxcc.ir;

import java.util.ArrayList;
import java.util.List;

public abstract class Instruction {
    private BasicBlock parent;
    public Instruction prev;
    public Instruction next;

    private boolean deleted = false;

    protected Register defReg;
    protected List<Register> useRegs = new ArrayList<>();

    public Instruction(BasicBlock parent) {
        this.parent = parent;
    }

    public Register getDefReg() {
        return defReg;
    }

    public List<Register> getUseRegs() {
        return useRegs;
    }

    public void addPrev(Instruction prevInst) {
        prevInst.prev = this.prev;
        prevInst.next = this;
        if (this.prev != null) this.prev.next = prevInst;
        this.prev = prevInst;
    }

    public void addNext(Instruction nextInst) {
        nextInst.prev = this;
        nextInst.next = this.next;
        if (this.next != null) this.next.prev = nextInst;
        this.next = nextInst;
    }

    public void delete() {
        if (this.prev != null) this.prev.next = this.next;
        if (this.next != null) this.next.prev = this.prev;
        if (this == parent.getFirstInst()) parent.setFirstInst(this.next);
        if (this == parent.getLastInst()) parent.setLastInst(this.prev);
        this.deleted = true;
    }

    public void replacedBy(Instruction newInst) {
        newInst.prev = this.prev;
        newInst.next = this.next;
        if (this.prev != null) this.prev.next = newInst;
        if (this.next != null) this.next.prev = newInst;
        if (this == parent.getFirstInst()) parent.setFirstInst(newInst);
        if (this == parent.getLastInst()) parent.setLastInst(newInst);
        this.deleted = true;
    }

    public BasicBlock getParentBB() {
        return parent;
    }

    public void replaceOperand(Operand oldVal, Operand newVal) {
        // this function is overloaded in some subclasses
    }

    public boolean isDeleted() {
        return deleted;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
