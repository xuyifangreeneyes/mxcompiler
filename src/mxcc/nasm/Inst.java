package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

public abstract class Inst {

    public List<VirtualReg> getDef() {
        return new ArrayList<>();
    }

    public List<VirtualReg> getUse() {
        return new ArrayList<>();
    }

}
