package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

public class Cmp extends Inst {
    private Var lhs;
    private Var rhs;

    public Cmp(Var lhs, Var rhs) {
        this.lhs = lhs;
        this.rhs = rhs;
    }

    public List<VirtualReg> getUse() {
        List<VirtualReg> useList = new ArrayList<>();
        if (lhs instanceof VirtualReg) useList.add((VirtualReg) lhs);
        if (rhs instanceof VirtualReg) useList.add((VirtualReg) rhs);
        return useList;
    }

    public Var getLhs() {
        return lhs;
    }

    public void setLhs(Var lhs) {
        this.lhs = lhs;
    }

    public Var getRhs() {
        return rhs;
    }

    public void setRhs(Var rhs) {
        this.rhs = rhs;
    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }
}
