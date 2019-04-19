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
        return Arrays.asList(physicalRegMap.get("rax"), physicalRegMap.get("rdx"));
    }

    public List<VirtualReg> getUse() {
        List<VirtualReg> useList = new ArrayList<>();
        if (divisor instanceof VirtualReg) useList.add((VirtualReg) divisor);
        return useList;
    }
}
