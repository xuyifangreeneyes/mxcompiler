package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

public class Shift extends Inst {
    private String name;
    private Var first;
    private Var second;

    public Shift(String name, Var first, Var second) {
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

    public Var getFirst() {
        return first;
    }

    public void setFirst(Var first) {
        this.first = first;
    }

    public Var getSecond() {
        return second;
    }

    public void setSecond(Var second) {
        this.second = second;
    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }
}
