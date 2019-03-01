package mxcc.ir;

public class BinaryOperation extends AssignInst {
    public enum BinaryOp {
        MUL, DIV, MOD,
        ADD, SUB, LSFT, RSFT,
        LT, GT, LE, GE, EQ, NEQ,
        BIT_AND, BIT_OR, BIT_XOR,
    }

    private BinaryOp op;
    private Operand lhs;
    private Operand rhs;

    public BinaryOperation(Register reg, BinaryOp op, Operand lhs, Operand rhs) {
        super(reg);
        this.op = op;
        this.lhs = lhs;
        this.rhs = rhs;
    }

}
