package mxcc.ir;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class Phi extends Instruction {
    private Register varAddr;
    private LocalReg dst;
    private Map<BasicBlock, Operand> source = new LinkedHashMap<>();

    private void collectUseRegs() {
        useRegs.clear();
        for (Operand var : source.values()) {
            if (var instanceof Register) useRegs.add((Register) var);
        }
    }

    public Phi(BasicBlock parent, Register varAddr) {
        super(parent);
        this.varAddr = varAddr;
    }

    public void acceptSource(BasicBlock bb, Operand var) {
        source.put(bb, var);
        if (var instanceof Register) useRegs.add((Register) var);
    }

    // For now this function is only used in mergeBlock.
    // In this case, newBB can't be one of other source BBs.
    public void replaceSourceBB(BasicBlock oldBB, BasicBlock newBB) {
        assert source.containsKey(oldBB);
        Operand var = source.get(oldBB);
        source.remove(oldBB);
        source.put(newBB, var);
    }

    public void removeSource(BasicBlock bb) {
        assert source.containsKey(bb);
        source.remove(bb);
        collectUseRegs();
        if (source.size() == 1) {
            // All of Phis at start of BB have the same number of sources.
            // If one of Phis turns to Move, then others will do the same thing.
            this.replacedBy(new Move(this.getParentBB(), this.getDst(), source.values().iterator().next()));
        }
    }

    public Map<BasicBlock, Operand> getAllSource() {
        return source;
    }

    public LocalReg getDst() {
        return dst;
    }

    public Register getVarAddr() {
        return varAddr;
    }

    public void setDst(LocalReg dst) {
        this.dst = dst;
        defReg = dst;
    }

    public void replaceOperand(Operand oldVal, Operand newVal) {
        for (BasicBlock bb : source.keySet()) {
            if (source.get(bb) == oldVal) source.put(bb, newVal);
        }
        collectUseRegs();
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
