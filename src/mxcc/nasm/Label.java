package mxcc.nasm;

public class Label extends Var {
    private String name;

    public Label(String name) {
        this.name = name;
    }

    public String toString() {
        return name;
    }

}
