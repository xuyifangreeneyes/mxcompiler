package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

public class Shift extends Inst {
    private String name;
    private Var dst;
    private Var src;

    public Shift(String name, Var dst, Var src) {
        this.name = name;
        this.dst = dst;
        this.src = src;
    }

    public List<VirtualReg> getDef() {
        List<VirtualReg> defList = new ArrayList<>();
        if (dst instanceof VirtualReg) defList.add((VirtualReg) dst);
        return defList;
    }

    public List<VirtualReg> getUse() {
        List<VirtualReg> useList = getDef();
        if (src instanceof VirtualReg) useList.add((VirtualReg) src);
        return useList;
    }
}
