package mxcc.nasm;

public class Ret extends Inst {
    public Ret() {
    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }
}
