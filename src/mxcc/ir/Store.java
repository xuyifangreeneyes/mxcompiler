package mxcc.ir;

public class Store extends Instruction {
    private Operand val;
    private Operand addr;

    public Store(Operand val, Operand addr) {
        this.val = val;
        this.addr = addr;
    }
}
