package mxcc.nasm;


// a placeholder for possible [ sub rsp, 8 ] before calling a function
public class Nop extends Inst {
    public Nop() {

    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }

}
