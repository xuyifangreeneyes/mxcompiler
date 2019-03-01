package mxcc.ir;

public class Load extends Instruction {
    private Register dst;
    private Operand addr;

    public Load(Register dst, Operand addr) {
        this.dst = dst;
        this.addr = addr;
    }
}
