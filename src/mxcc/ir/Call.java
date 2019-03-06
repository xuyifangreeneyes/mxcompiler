package mxcc.ir;

import java.util.List;

public class Call extends Instruction {
    private Function func;
    private Register dst;
    private List<Operand> args;

    public Call(Function func, Register dst, List<Operand> args) {
        this.func = func;
        this.dst = dst;
        this.args = args;
    }
}
