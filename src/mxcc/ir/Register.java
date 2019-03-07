package mxcc.ir;

public class Register extends Operand {
    protected String name;

    public Register(String name) {
        this.name = name;
    }

    public String toString() {
        return name;
    }
}
