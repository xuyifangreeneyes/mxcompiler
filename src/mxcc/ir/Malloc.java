package mxcc.ir;

public class Malloc extends Instruction {
    private Register dst;
    private Operand size;

    public Malloc(BasicBlock parent, Register dst, Operand size) {
        super(parent);
        this.dst = dst;
        this.size = size;

        defReg = dst;
        if (size instanceof Register) useRegs.add((Register) size);
    }

    public Register getDst() {
        return dst;
    }

    public Operand getSize() {
        return size;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
