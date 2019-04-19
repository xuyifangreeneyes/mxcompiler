package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

public class Func {
    private String name;
    private List<Block> bbList = new ArrayList<>();

    public Func(String name) {
        this.name = name;
    }

    public void addBlock(Block bb) {
        bbList.add(bb);
    }

    public List<Block> getBbList() {
        return bbList;
    }
}
