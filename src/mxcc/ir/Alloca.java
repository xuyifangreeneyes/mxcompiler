package mxcc.ir;

public class Alloca extends Instruction {
    private LocalReg dst;
    private int size;

    public Alloca(LocalReg dst, int size) {
        this.dst = dst;
        this.size = size;
    }

    public LocalReg getDst() {
        return dst;
    }

    public int getSize() {
        return size;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
