package mxcc.optim;

import mxcc.ir.Function;

public class SSADestructor extends Pass {
    public SSADestructor(Function irFunc) {
        super(irFunc);
    }
}
