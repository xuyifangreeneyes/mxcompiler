package mxcc.ir;

import java.util.*;

public class Function {
    private String name;
    private BasicBlock head;
    private BasicBlock tail;
    public List<LocalReg> args = new ArrayList<>();

    private int LocalRegCounter = 0;
    private int BBCounter = 0;

    public Function(String name, boolean isBuiltin) {
        this.name = name;
        if (!isBuiltin) {
            head = tail = makeBB("entry");
        }
    }

    public Function(Function other) {
        this.name = other.name;
        this.args.addAll(other.args);
        this.LocalRegCounter = other.LocalRegCounter;
        this.BBCounter = other.BBCounter;
        this.head = this.tail = new BasicBlock(this, other.getStartBB().getLabel(), other.getStartBB().getName());
    }

    public BasicBlock getStartBB() {
        return head;
    }

    public BasicBlock getLastBB() {
        return tail;
    }

    public void setStartBB(BasicBlock bb) {
        head = bb;
    }

    public void setLastBB(BasicBlock bb) {
        tail = bb;
    }

    public LocalReg makeLocalReg(String hint) {
        LocalReg reg = new LocalReg(hint, LocalRegCounter);
        ++LocalRegCounter;
        return reg;
    }

    public BasicBlock makeBB(String name) {
        BasicBlock BB = new BasicBlock(this, BBCounter, name);
        ++BBCounter;
        return BB;
    }

    public boolean isBuiltin() {
        return head == null;
    }

    public String getName() {
        return name;
    }

    private int getNumberOfInsts() {
        int counter = 0;
        BasicBlock bb = this.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
                ++counter;
                inst = inst.next;
            }
            bb = bb.next;
        }
        return counter;
    }

    public boolean isInlinable() {
        return getNumberOfInsts() < 100;
    }

}
