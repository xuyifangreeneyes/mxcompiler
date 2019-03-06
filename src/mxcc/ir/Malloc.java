package mxcc.ir;

public class Malloc extends Instruction {
    private Register dst;
    private int size;

    public Malloc(Register dst, int size) {
        this.dst = dst;
        this.size = size;
    }
}
