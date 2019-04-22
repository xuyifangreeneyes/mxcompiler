package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

public class Mov extends Inst {
    private Var dst;
    private Var src;

    public Mov(Var dst, Var src) {
        this.dst = dst;
        this.src = src;
    }

    public List<VirtualReg> getDef() {
        List<VirtualReg> defList = new ArrayList<>();
        if (dst instanceof VirtualReg) defList.add((VirtualReg) dst);
        return defList;
    }

    public List<VirtualReg> getUse() {
        List<VirtualReg> useList = new ArrayList<>();
        if (src instanceof VirtualReg) useList.add((VirtualReg) src);
        return useList;
    }

    public Var getDst() {
        return dst;
    }

    public void setDst(Var dst) {
        this.dst = dst;
    }

    public Var getSrc() {
        return src;
    }

    public void setSrc(Var src) {
        this.src = src;
    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }
}
