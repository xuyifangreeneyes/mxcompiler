package mxcc.ir;

public class Alloca extends Instruction {
    private Register dst;
    private int size;

    public Alloca(Register dst, int size) {
        this.dst = dst;
        this.size = size;
    }
}