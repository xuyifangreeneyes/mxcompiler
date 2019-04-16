package mxcc.nasm;

import java.util.LinkedList;

public class Func {
    private String name;
    private LinkedList<Block> bbList = new LinkedList<>();

    public Func(String name) {
        this.name = name;
    }

    public void addBlock(Block bb) {
        bbList.add(bb);
    }
}
