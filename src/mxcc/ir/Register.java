package mxcc.ir;

public class Register extends Operand {
    private int id;

    public Register(int id) {
        this.id = id;
    }

    public String toString() {
        return "%" + id;
    }
}
