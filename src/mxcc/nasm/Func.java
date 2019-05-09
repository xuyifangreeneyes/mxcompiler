package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

public class Func {
    private String name;
    private List<Block> bbList = new ArrayList<>();
    private int rspOffset = 0;

    public Func(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void addBlock(Block bb) {
        bbList.add(bb);
    }

    public List<Block> getBbList() {
        return bbList;
    }

    public void setBbList(List<Block> bbList) {
        this.bbList = bbList;
    }

    public void addRspOffset(int offset) {
        rspOffset += offset;
    }

    public int getRspOffset() {
        return rspOffset;
    }
}
