package mxcc.nasm;

public class Imm extends Var {
    private int value;

    public Imm(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }
}
