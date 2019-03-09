package mxcc.ir;

public class Malloc extends Instruction {
    private Register dst;
    private Operand size;

    public Malloc(Register dst, Operand size) {
        this.dst = dst;
        this.size = size;
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
