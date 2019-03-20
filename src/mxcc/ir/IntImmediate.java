package mxcc.ir;

public class IntImmediate extends Operand {
    private int val;

    public IntImmediate(int val) {
        this.val = val;
    }

    public String toString() {
        return String.valueOf(val);
    }

    public int getVal() {
        return val;
    }
}
