package mxcc.ir;

import mxcc.symbol.FunctionSymbol;

import java.util.List;

public class Call extends Instruction {
    private FunctionSymbol func;
    private Register dst;
    private List<Operand> args;

    private void collectUseRegs() {
        useRegs.clear();
        for (Operand arg : args) {
            if (arg instanceof Register) useRegs.add((Register) arg);
        }
    }

    public Call(BasicBlock parent, FunctionSymbol func, Register dst, List<Operand> args) {
        super(parent);
        this.func = func;
        this.dst = dst;
        this.args = args;

        defReg = dst;
        collectUseRegs();
    }

    public Register getDst() {
        return dst;
    }

    public String getName() {
        return func.IRFunc.getName();
    }

    public List<Operand> getArgs() {
        return args;
    }

    public void replaceOperand(Operand oldVal, Operand newVal) {
        for (int i  = 0; i < args.size(); ++i) {
            if (args.get(i) == oldVal) args.set(i, newVal);
        }
        collectUseRegs();
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
