package mxcc.nasm;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Movzx extends Inst {
    private VirtualReg dst;
    private Var src;

    public Movzx(VirtualReg dst, Var src) {
        this.dst = dst;
        this.src = src;
    }

    public List<VirtualReg> getDef() {
        return Collections.singletonList(dst);
    }

    public List<VirtualReg> getUse() {
        List<VirtualReg> useList = new ArrayList<>();
        if (src instanceof VirtualReg) useList.add((VirtualReg) src);
        return useList;
    }
}
