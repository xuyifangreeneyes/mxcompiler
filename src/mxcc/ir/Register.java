package mxcc.ir;

public class Register extends Operand {
    private String name;
    private int id;

    public Register(String hint, int id) {
        this.id = id;
        this.name = "%" + hint + "_" + id;
    }

    public String toString() {
        return name;
    }
}
