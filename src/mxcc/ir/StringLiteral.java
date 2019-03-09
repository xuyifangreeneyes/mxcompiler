package mxcc.ir;

public class StringLiteral extends Operand {
    static public int curID = 0;

    private String value;
    private int id;

    public StringLiteral(String value) {
        this.value = value;
        this.id = curID;
        ++curID;
    }

    public String toString() {
        return "@str_" + id + " " + "\"" + value + "\"";
    }
}
