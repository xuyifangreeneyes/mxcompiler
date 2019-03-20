package mxcc.ir;

public class Move extends Instruction {
    private Register dst;
    private Operand src;

    public Move(BasicBlock parent, Register dst, Operand src) {
        super(parent);
        this.dst = dst;
        this.src = src;

        defReg = dst;
        if (src instanceof Register) useRegs.add((Register) src);
    }

    public Register getDst() {
        return dst;
    }

    public Operand getSrc() {
        return src;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
