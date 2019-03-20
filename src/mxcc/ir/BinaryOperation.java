package mxcc.ir;

public class BinaryOperation extends Instruction {
    public enum BinaryOp {
        MUL, DIV, MOD,
        ADD, SUB, LSFT, RSFT,
        LT, GT, LE, GE, EQ, NEQ,
        BIT_AND, BIT_OR, BIT_XOR,
    }

    private Register dst;
    private BinaryOp op;
    private Operand lhs;
    private Operand rhs;

    public BinaryOperation(BasicBlock parent, Register dst, BinaryOp op, Operand lhs, Operand rhs) {
        super(parent);
        this.dst = dst;
        this.op = op;
        this.lhs = lhs;
        this.rhs = rhs;

        defReg = dst;
        if (lhs instanceof Register) useRegs.add((Register) lhs);
        if (rhs instanceof Register) useRegs.add((Register) rhs);
    }

    public Register getDst() {
        return dst;
    }

    public BinaryOp getOp() {
        return op;
    }

    public Operand getLhs() {
        return lhs;
    }

    public Operand getRhs() {
        return rhs;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

}
