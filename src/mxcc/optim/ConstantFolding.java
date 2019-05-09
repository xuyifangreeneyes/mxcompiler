package mxcc.optim;

import mxcc.ir.*;

public class ConstantFolding extends Pass {

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            ConstantFolding cf = new ConstantFolding(func);
            cf.pass();
        }
    }

    private ConstantFolding(Function irFunc) {
        super(irFunc);
    }

    private void pass() {
        foldConstant();
    }

    private void foldConstant() {
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
                if (inst instanceof BinaryOperation) {
                    BinaryOperation binaryInst = (BinaryOperation) inst;
                    if (binaryInst.getLhs() instanceof IntImmediate && binaryInst.getRhs() instanceof IntImmediate) {
                        int lhs = ((IntImmediate) binaryInst.getLhs()).getVal();
                        int rhs = ((IntImmediate) binaryInst.getRhs()).getVal();
                        BinaryOperation.BinaryOp op = binaryInst.getOp();
                        int res = 0;
                        switch (op) {
                            case MUL: res = lhs * rhs; break;
                            case DIV: res = rhs == 0 ? 0 : lhs / rhs; break;
                            case MOD: res = rhs == 0 ? 0 : lhs % rhs; break;
                            case ADD: res = lhs + rhs; break;
                            case SUB: res = lhs - rhs; break;
                            case LSFT: res = lhs << rhs; break;
                            case RSFT: res = lhs >> rhs; break;
                            case LT: res = lhs < rhs ? 1 : 0; break;
                            case GT: res = lhs > rhs ? 1 : 0; break;
                            case LE: res = lhs <= rhs ? 1 : 0; break;
                            case GE: res = lhs >= rhs ? 1 : 0; break;
                            case EQ: res = lhs == rhs ? 1 : 0; break;
                            case NEQ: res = lhs != rhs ? 1 : 0; break;
                            case BIT_AND: res = lhs & rhs; break;
                            case BIT_OR: res = lhs | rhs; break;
                            case BIT_XOR: res = lhs ^ rhs; break;
                        }
                        Move moveInst = new Move(binaryInst.getParentBB(), binaryInst.getDst(), new IntImmediate(res));
                        binaryInst.replacedBy(moveInst);
                    }
                }
                if (inst instanceof UnaryOperation) {
                    UnaryOperation unaryInst = (UnaryOperation) inst;
                    if (unaryInst.getSrc() instanceof IntImmediate) {
                        int src = ((IntImmediate) unaryInst.getSrc()).getVal();
                        UnaryOperation.UnaryOp op = unaryInst.getOp();
                        int res = 0;
                        switch (op) {
                            case INC: res = src + 1; break;
                            case DEC: res = src - 1; break;
                            case NEG: res = - src; break;
                            case BIT_NOT: res = ~ src; break;
                        }
                        Move moveInst = new Move(unaryInst.getParentBB(), unaryInst.getDst(), new IntImmediate(res));
                        unaryInst.replacedBy(moveInst);
                    }
                }
                inst = inst.next;
            }
            bb = bb.next;
        }
    }

}
