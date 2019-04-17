package mxcc.nasm;

public class Memory extends Var {
    private VirtualReg base;
    private VirtualReg index;
    private int scale;
    private int displacement;

    private Label label;

    private boolean valid;

    public Memory(VirtualReg base) {
        this.base = base;
        this.valid = true;
    }

    public Memory(Label label) {
        this.label = label;
        this.valid = true;
    }

    public Memory() {
        this.valid = false;
    }
}
