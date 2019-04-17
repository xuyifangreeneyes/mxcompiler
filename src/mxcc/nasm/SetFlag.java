package mxcc.nasm;

public class SetFlag extends Inst {
    private String name;
    private VirtualReg dst;

    public SetFlag(String name, VirtualReg dst) {
        this.name = name;
        this.dst = dst;
    }
}
