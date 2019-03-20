package mxcc.optim;

import mxcc.ir.Function;

public class Pass {
    protected Function irFunc;

    public Pass(Function irFunc) {
        this.irFunc = irFunc;
    }
}
