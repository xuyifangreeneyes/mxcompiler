package mxcc.ir;

public class Store extends Instruction {
    private Operand val;
    private Operand addr;

    public Store(Operand val, Operand addr) {
        this.val = val;
        this.addr = addr;
    }

    public Operand getAddr() {
        return addr;
    }

    public Operand getVal() {
        return val;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
