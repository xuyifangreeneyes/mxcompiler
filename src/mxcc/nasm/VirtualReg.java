package mxcc.nasm;

public class VirtualReg extends Var {
    private String name;
    private String phiscalReg;
    private boolean precolored = false;
    private boolean tiny = false;

    public VirtualReg(String name) {
        this.name = name;
    }

    public VirtualReg(String name, boolean tiny) {
        this.name = name;
        this.tiny = tiny;
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

    public void setColor(String color) {
        assert !precolored;
        this.phiscalReg = color;
    }

    public String getColor() {
        assert phiscalReg != null;
        return phiscalReg;
    }

    public boolean isTiny() {
        return tiny;
    }
}
