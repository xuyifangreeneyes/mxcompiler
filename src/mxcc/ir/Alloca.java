package mxcc.ir;

public class Alloca extends Instruction {
    Register dst;
    int size;

    public Alloca(Register dst, int size) {
        this.dst = dst;
        this.size = size;
    }
}
