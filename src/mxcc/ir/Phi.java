package mxcc.ir;

import java.util.HashMap;
import java.util.Map;

public class Phi extends Instruction {
    private Register dst;
    private Map<BasicBlock, Register> res = new HashMap<>();

    public Phi(Register dst) {
        this.dst = dst;
    }

    public Register getDst() {
        return dst;
    }

    public void setDst(Register dst) {
        this.dst = dst;
    }
}
