package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public abstract class Inst {

    public List<VirtualReg> getDef() {
        return new ArrayList<>();
    }

    public List<VirtualReg> getUse() {
        return new ArrayList<>();
    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }

}
