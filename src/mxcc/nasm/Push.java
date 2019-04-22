package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

public class Push extends Inst {
    private Var src;

    public Push(Var src) {
        this.src = src;
    }

    public List<VirtualReg> getUse() {
        List<VirtualReg> useList = new ArrayList<>();
        if (src instanceof VirtualReg) useList.add((VirtualReg) src);
        return useList;
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
