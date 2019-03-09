package mxcc.ir;

public class Load extends Instruction {
    private Register dst;
    private Operand addr;

    public Load(Register dst, Operand addr) {
        this.dst = dst;
        this.addr = addr;
    }

    public Register getDst() {
        return dst;
    }

    public Operand getAddr() {
        return addr;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
