package mxcc.ir;

public abstract class Instruction {
    public Instruction prev;
    public Instruction next;

    public Instruction() {}

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
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
