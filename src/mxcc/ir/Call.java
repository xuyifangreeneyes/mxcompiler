package mxcc.ir;

import mxcc.symbol.FunctionSymbol;

import java.util.List;

public class Call extends Instruction {
    private FunctionSymbol func;
    private Register dst;
    private List<Operand> args;

    public Call(FunctionSymbol func, Register dst, List<Operand> args) {
        this.func = func;
        this.dst = dst;
        this.args = args;
    }
}
