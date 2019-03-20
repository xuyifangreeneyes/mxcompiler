package mxcc.ir;

public class Alloca extends Instruction {
    private LocalReg dst;
    private int size;

    public Alloca(BasicBlock parent, LocalReg dst, int size) {
        super(parent);
        this.dst = dst;
        this.size = size;

        defReg = dst;
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
