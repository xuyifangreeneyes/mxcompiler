package mxcc.nasm;

public class BinOp extends Inst {
    private String name;
    private Var first;
    private Var second;

    public BinOp(String name, Var first, Var second) {
        this.name = name;
        this.first = first;
        this.second = second;
    }
}
