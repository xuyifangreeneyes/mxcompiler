package mxcc.nasm;

public class FuncCall extends Inst {
    private String funcName;

    public FuncCall(String funcName) {
        this.funcName = funcName;
    }
}
