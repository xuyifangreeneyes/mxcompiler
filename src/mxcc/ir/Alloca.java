package mxcc.ir;

public class Alloca extends Instruction {
    private Register dst;
    private int size;

    public Alloca(Register dst, int size) {
        this.dst = dst;
        this.size = size;
    }

    public Register getDst() {
        return dst;
    }

    public int getSize() {
        return size;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
