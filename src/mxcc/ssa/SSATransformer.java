package mxcc.ssa;

import mxcc.ir.Function;

public class SSATransformer {
    protected Function irFunc;

    public SSATransformer(Function irFunc) {
        this.irFunc = irFunc;
    }
}
