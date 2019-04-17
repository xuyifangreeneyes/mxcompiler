package mxcc.nasm;

public class Cmp extends Inst {
    private Var lhs;
    private Var rhs;

    public Cmp(Var lhs, Var rhs) {
        this.lhs = lhs;
        this.rhs = rhs;
    }
}
