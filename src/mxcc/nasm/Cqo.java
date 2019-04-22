package mxcc.nasm;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static mxcc.nasm.CommonInfo.physicalRegMap;

public class Cqo extends Inst {

    public Cqo() {

    }

    public List<VirtualReg> getDef() {
        return Arrays.asList(physicalRegMap.get("rax"), physicalRegMap.get("rdx"));
    }

    public List<VirtualReg> getUse() {
        return Collections.singletonList(physicalRegMap.get("rax"));
    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }
}
