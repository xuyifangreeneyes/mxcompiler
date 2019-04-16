package mxcc.nasm;

import java.util.LinkedList;

public class Block {
    private String name;
    private LinkedList<Inst> instList = new LinkedList<>();

    public Block(String name) {
        this.name = name;
    }

    public void addInst(Inst inst) {
        instList.add(inst);
    }
}
