package mxcc.nasm;

public class UnOp extends Inst {
    private String name;
    private Var var;

    public UnOp(String name, Var var) {
        this.name = name;
        this.var = var;
    }
}
