package mxcc.optim;

import mxcc.ir.*;

import java.util.*;

public class CommonPhiElimination extends Pass {

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            CommonPhiElimination cpe = new CommonPhiElimination(func);
            cpe.pass();
        }
    }

    private CommonPhiElimination(Function irFunc) {
        super(irFunc);
    }

    private void pass() {
        buildCFG();
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            phi2move(bb);
            bb = bb.next;
        }
    }

    // Phi should be executed parallel. Since there exists the following case after copy propagation:
    // x = phi <0> ? <1> y
    // y = phi <0> ? <1> x
    // For now I think that phi2move may be ok but it may GO WRONG!
    private void phi2move(BasicBlock bb) {
        Instruction inst = bb.getFirstInst();
        if (!(inst instanceof Phi)) return;
        Set<BasicBlock> preds = predMap.get(bb);
        Map<PhiExpr, LocalReg> phiTable = new HashMap<>();
        List<Move> moves = new ArrayList<>();
        Phi lastPhi = null;
        while (true) {
            Phi phi = (Phi) inst;
            assert phi.getAllSource().size() == preds.size();
            List<String> source = new ArrayList<>();
            for (BasicBlock pred : preds) {
                assert phi.getAllSource().containsKey(pred);
                source.add(phi.getAllSource().get(pred).toString());
            }
            PhiExpr phiExpr = new PhiExpr(source);
            if (phiTable.containsKey(phiExpr)) {
                LocalReg reg = phiTable.get(phiExpr);
                moves.add(new Move(bb, phi.getDst(), reg));
                phi.delete();
            } else {
                phiTable.put(phiExpr, phi.getDst());
                lastPhi = phi;
            }
            if (inst.next instanceof Phi) {
                inst = inst.next;
            } else {
                break;
            }
        }
        for (Move move : moves) {
            lastPhi.insertAfter(move);
        }
    }

    private static class PhiExpr {
        private List<String> source;

        public PhiExpr(List<String> source) {
            this.source = source;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof PhiExpr)) return false;
            PhiExpr other = (PhiExpr) obj;
            if (this.source.size() != other.source.size()) return false;
            for (int i = 0; i < this.source.size(); ++i) {
                if (!this.source.get(i).equals(other.source.get(i))) return false;
            }
            return true;
        }

        @Override
        public int hashCode() {
            int val = 0;
            for (String str : source) {
                val = val ^ str.hashCode();
            }
            return val;
        }
    }

}
