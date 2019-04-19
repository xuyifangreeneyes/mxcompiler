package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

public class BinOp extends Inst {
    private String name;
    private Var first;
    private Var second;

    public BinOp(String name, Var first, Var second) {
        this.name = name;
        this.first = first;
        this.second = second;
    }

    public List<VirtualReg> getDef() {
        List<VirtualReg> defList = new ArrayList<>();
        if (first instanceof VirtualReg) defList.add((VirtualReg) first);
        return defList;
    }

    public List<VirtualReg> getUse() {
        List<VirtualReg> useList = getDef();
        if (second instanceof VirtualReg) useList.add((VirtualReg) second);
        return useList;
    }

}
