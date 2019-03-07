package mxcc.ir;

public class LocalReg extends Register {
    private int id;

    public LocalReg(String hint, int id) {
        super("%" + hint + "_" + id);
        this.id = id;
    }

}
