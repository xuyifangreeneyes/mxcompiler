package mxcc.ir;

public class LocalReg extends Register {
    private int id;
    private boolean fromAlloca = false;

    public LocalReg(String hint, int id) {
        super("%" + hint + "_" + id);
        this.id = id;
    }

    public void setFromAlloca(boolean fromAlloca) {
        this.fromAlloca = fromAlloca;
    }

    public boolean isFromAlloca() {
        return fromAlloca;
    }
}
