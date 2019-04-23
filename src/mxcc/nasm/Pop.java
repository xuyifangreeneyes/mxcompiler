package mxcc.nasm;

import java.util.Collections;
import java.util.List;

public class Pop extends Inst {
    private VirtualReg dst;

    public Pop(VirtualReg dst) {
        this.dst = dst;
    }

    public List<VirtualReg> getDef() {
        return Collections.singletonList(dst);
    }

    public VirtualReg getDst() {
        return dst;
    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }
}
