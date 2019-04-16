package mxcc.nasm;

public class Push extends Inst {
    private Var src;

    public Push(Var src) {
        this.src = src;
    }
}
