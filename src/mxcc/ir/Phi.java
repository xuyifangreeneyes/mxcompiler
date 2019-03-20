package mxcc.ir;

import java.util.LinkedHashMap;
import java.util.Map;

public class Phi extends Instruction {
    private Register varAddr;
    private Register dst;
    private Map<BasicBlock, Operand> source = new LinkedHashMap<>();

    public Phi(BasicBlock parent, Register varAddr) {
        super(parent);
        this.varAddr = varAddr;
    }

    public void acceptSource(BasicBlock bb, Operand var) {
        source.put(bb, var);
        if (var instanceof Register) useRegs.add((Register) var);
    }

    public Map<BasicBlock, Operand> getSource() {
        return source;
    }

    public Register getDst() {
        return dst;
    }

    public Register getVarAddr() {
        return varAddr;
    }

    public void setDst(Register dst) {
        this.dst = dst;
        defReg = dst;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
