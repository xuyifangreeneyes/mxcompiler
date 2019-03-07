package mxcc.ir;

public class GlobalReg extends Register {
    public GlobalReg(String hint) {
        super("@" + hint);
    }
}
