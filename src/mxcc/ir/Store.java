package mxcc.ir;

public class Store extends Instruction {
    private Operand val;
    private Operand addr;

    public Store(BasicBlock parent, Operand val, Operand addr) {
        super(parent);
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
