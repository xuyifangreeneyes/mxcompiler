package mxcc.ir;

public class BasicBlock {
    private Instruction head;
    private Instruction tail;
    private Function parent;
    private int id;
    private String name;

    public BasicBlock prev;
    public BasicBlock next;

    public BasicBlock(Function parent, int id, String name) {
        this.parent = parent;
        this.id = id;
        this.name = name;
    }

    public Instruction getFirstInst() {
        return head;
    }

    public boolean isEnded() {
        return tail instanceof BranchInst;
    }

    public void appendFront(Instruction inst) {
        if (head == null) {
            head = tail = inst;
        } else {
            head.addPrev(inst);
            head = inst;
        }
    }

    public void append(Instruction inst) {
        if (isEnded()) return;
        if (tail == null) {
            head = tail = inst;
        } else {
            tail.addNext(inst);
            tail = inst;
        }
    }

    public void addPrev(BasicBlock prevBB) {
        prevBB.prev = this.prev;
        prevBB.next = this;
        if (this.prev != null) this.prev.next = prevBB;
        this.prev = prevBB;
    }

    public void addNext(BasicBlock nextBB) {
        nextBB.prev = this;
        nextBB.next = this.next;
        if (this.next != null) this.next.prev = nextBB;
        this.next = nextBB;
    }

    public void delete() {
        if (this.prev != null) this.prev.next = this.next;
        if (this.next != null) this.next.prev = this.prev;
    }

    public int getLabel() {
        return id;
    }

    public String getName() {
        return name;
    }
}
