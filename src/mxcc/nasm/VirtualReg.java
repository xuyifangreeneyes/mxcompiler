package mxcc.nasm;

public class VirtualReg extends Var {
    private String name;
    private String phiscalReg;
    private boolean precolored = false;

    public VirtualReg(String name) {
        this.name = name;
    }

    public VirtualReg(String name, String phiscalReg) {
        this.name = name;
        this.phiscalReg = phiscalReg;
        this.precolored = true;
    }

    public String getName() {
        return name;
    }

    public boolean isPrecolored() {
        return precolored;
    }
}
