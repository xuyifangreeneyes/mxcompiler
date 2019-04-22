package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

public class UnOp extends Inst {
    private String name;
    private Var var;

    public UnOp(String name, Var var) {
        this.name = name;
        this.var = var;
    }

    public List<VirtualReg> getDef() {
        List<VirtualReg> defList = new ArrayList<>();
        if (var instanceof VirtualReg) defList.add((VirtualReg) var);
        return defList;
    }

    public List<VirtualReg> getUse() {
        return getDef();
    }

    public Var getVar() {
        return var;
    }

    public void setVar(Var var) {
        this.var = var;
    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }

}
