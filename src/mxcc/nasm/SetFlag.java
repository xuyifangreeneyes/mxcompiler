package mxcc.nasm;

import java.util.Collections;
import java.util.List;

public class SetFlag extends Inst {
    private String name;
    private VirtualReg dst;

    public SetFlag(String name, VirtualReg dst) {
        this.name = name;
        this.dst = dst;
    }

    public String getName() {
        return name;
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
