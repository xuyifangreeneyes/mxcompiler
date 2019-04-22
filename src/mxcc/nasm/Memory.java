package mxcc.nasm;

import static mxcc.nasm.CommonInfo.physicalRegMap;

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

    public Memory(VirtualReg base, int displacement) {
        this.base = base;
        this.displacement = displacement;
        this.valid = true;
    }

    public Memory(Label label) {
        this.label = label;
        this.valid = true;
    }

    public Memory() {
        this.valid = false;
    }

    public void settleOnStack(int displacement) {
        assert !this.valid;
        this.base = physicalRegMap.get("rbp");
        this.displacement = displacement;
        this.valid = true;
    }

    public boolean isValid() {
        return valid;
    }
}
