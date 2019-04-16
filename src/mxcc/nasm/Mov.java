package mxcc.nasm;

public class Mov extends Inst {
    private Var dst;
    private Var src;

    public Mov(Var dst, Var src) {
        this.dst = dst;
        this.src = src;
    }
}
