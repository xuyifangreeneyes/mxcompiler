package mxcc.nasm;

public class Memory extends Var {
    private VirtualReg base;
    private VirtualReg index;
    private int scale;
    private int displacement;

    private Label label;

    private int type;
    // 0: out of stack
    // 1: in stack
    // 2: for parameter passing of call

    public Memory(VirtualReg base) {
        this.base = base;
        this.type = 0;
    }

    public Memory(Label label) {
        this.label = label;
        this.type = 0;
    }

    public Memory(int type) {
        this.type = type;
    }
}
