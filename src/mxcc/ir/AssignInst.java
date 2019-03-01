package mxcc.ir;

public class AssignInst extends Instruction {
    protected Register dst;

    public AssignInst(Register dst) {
        this.dst = dst;
    }
}
