package mxcc.nasm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static mxcc.nasm.CommonInfo.physicalRegMap;

public class Idiv extends Inst {
    // divisor must be VirtualReg or Memory
    // Cann't be Imm
    private Var divisor;

    public Idiv(Var divisor) {
        this.divisor = divisor;
    }

    public List<VirtualReg> getDef() {
        List<VirtualReg> defList = new ArrayList<>();
        defList.add(physicalRegMap.get("rax"));
        defList.add(physicalRegMap.get("rdx"));
        return defList;
    }

    public List<VirtualReg> getUse() {
        List<VirtualReg> useList = getDef();
        if (divisor instanceof VirtualReg) useList.add((VirtualReg) divisor);
        return useList;
    }

    public Var getDivisor() {
        return divisor;
    }

    public void setDivisor(Var divisor) {
        this.divisor = divisor;
    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }
}
