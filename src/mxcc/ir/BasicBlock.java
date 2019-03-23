package mxcc.ir;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class BasicBlock {
    private Instruction head;
    private Instruction tail;
    private Function parent;
    private int id;
    private String name;

    private boolean deleted = false;

    public BasicBlock prev;
    public BasicBlock next;

    public BasicBlock(Function parent, int id, String name) {
        this.parent = parent;
        this.id = id;
        this.name = name;
    }

    public Function getParentFunc() {
        return parent;
    }

    public void setParentFunc(Function parent) {
        this.parent = parent;
    }

    public Instruction getFirstInst() {
        return head;
    }

    public Instruction getLastInst() {
        return tail;
    }

    public void setFirstInst(Instruction inst) {
        head = inst;
    }

    public void setLastInst(Instruction inst) {
        tail = inst;
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

    public void mergeSuccBlock(BasicBlock succ) {
        assert tail instanceof DirectBranch;
        tail.delete();

        Instruction inst = succ.getFirstInst();
        while (inst != null) {
            inst.setParentBB(this);
            inst = inst.next;
        }

        if (tail == null) {
            head = succ.getFirstInst();
            tail = succ.getLastInst();
        } else {
            Instruction succHead = succ.getFirstInst();
            tail.next = succHead;
            if (succHead != null) succHead.prev = tail;
            tail = succ.getLastInst();
        }

        succ.delete();
    }

    public void addPrev(BasicBlock prevBB) {
        prevBB.prev = this.prev;
        prevBB.next = this;
        if (this.prev != null) this.prev.next = prevBB;
        this.prev = prevBB;
        if (this == parent.getStartBB()) parent.setStartBB(prevBB);
    }

    public void addNext(BasicBlock nextBB) {
        nextBB.prev = this;
        nextBB.next = this.next;
        if (this.next != null) this.next.prev = nextBB;
        this.next = nextBB;
        if (this == parent.getLastBB()) parent.setLastBB(nextBB);
    }

    public void delete() {
        if (this.prev != null) this.prev.next = this.next;
        if (this.next != null) this.next.prev = this.prev;
        if (this == parent.getStartBB()) parent.setStartBB(this.next);
        if (this == parent.getLastBB()) parent.setLastBB(this.prev);

//        System.out.println(this.getParentFunc().getName() + " <" + this.getLabel() + "> is deleted");

        deleted = true;
    }

    public boolean isDeleted() {
        return deleted;
    }

    public int getLabel() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Set<BasicBlock> getSuccessors() {
        Set<BasicBlock> successors = new HashSet<>();
        if (tail instanceof DirectBranch) {
            successors.add(((DirectBranch) tail).getTarget());
        }
        if (tail instanceof CondBranch) {
            successors.add(((CondBranch) tail).getIfTrue());
            successors.add(((CondBranch) tail).getIfFalse());
        }
        // every basicBlock's tail is a BranchInst
        return successors;
    }
}
