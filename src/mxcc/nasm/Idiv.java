package mxcc.nasm;

public class Idiv extends Inst {
    // divisor must be VirtualReg or Memory
    // Cann't be Imm
    private Var divisor;

    public Idiv(Var divisor) {
        this.divisor = divisor;
    }
}
