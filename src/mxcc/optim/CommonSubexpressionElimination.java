package mxcc.optim;

import mxcc.ir.*;

import java.util.HashMap;
import java.util.Map;

public class CommonSubexpressionElimination extends Pass {

    private static class BinaryExpr {
        private String lhs;
        private String rhs;
        private String op;

        public BinaryExpr(String lhs, String rhs, String op) {
            this.lhs = lhs;
            this.rhs = rhs;
            this.op = op;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof BinaryExpr)) return false;
            BinaryExpr other = (BinaryExpr) obj;
            return this.lhs.equals(other.lhs) && this.rhs.equals(other.rhs) && this.op.equals(other.op);
        }

        @Override
        public int hashCode() {
            return lhs.hashCode() ^ rhs.hashCode() ^ op.hashCode();
        }
    }

    // maybe it won't have much effect for unary expression

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            CommonSubexpressionElimination cse = new CommonSubexpressionElimination(func);
            cse.pass();
        }
    }

    private CommonSubexpressionElimination(Function irFunc) {
        super(irFunc);
    }

    private void pass() {
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            eliminateCommonSubexpression(bb);
            bb = bb.next;
        }
    }

    private void eliminateCommonSubexpression(BasicBlock bb) {
        Map<BinaryExpr, BinaryOperation> binaryExprTable = new HashMap<>();
        Instruction inst = bb.getFirstInst();
        while (inst != null) {
            if (inst instanceof BinaryOperation) {
                BinaryOperation binaryInst = (BinaryOperation) inst;
//                System.out.println(binaryInst.getDst() + " = " + binaryInst.getOp() + " " + binaryInst.getLhs() + " " + binaryInst.getRhs());
                BinaryExpr binaryExpr = new BinaryExpr(binaryInst.getLhs().toString(),
                        binaryInst.getRhs().toString(), binaryInst.getOp().toString());
                if (binaryExprTable.containsKey(binaryExpr)) {
                    Move moveInst = new Move(bb, binaryInst.getDst(), binaryExprTable.get(binaryExpr).getDst());
                    binaryInst.replacedBy(moveInst);
                } else {
                    binaryExprTable.put(binaryExpr, binaryInst);
                }
            }
            inst = inst.next;
        }
    }

}
