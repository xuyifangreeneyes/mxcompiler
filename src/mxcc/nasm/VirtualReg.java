package mxcc.nasm;

public class VirtualReg extends Var {
    private String name;
    private String phiscalReg;

    public VirtualReg(String name) {
        this.name = name;
    }

    public VirtualReg(String name, String phiscalReg) {
        this.name = name;
        this.phiscalReg = phiscalReg;
    }

    public String getName() {
        return name;
    }
}
