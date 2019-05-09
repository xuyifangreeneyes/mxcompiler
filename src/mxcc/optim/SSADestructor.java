package mxcc.optim;

import mxcc.ir.*;

import java.util.*;

public class SSADestructor extends Pass {

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            SSADestructor destructor = new SSADestructor(func);
            destructor.pass();
        }
        module.isSSA = false;
    }

    private SSADestructor(Function irFunc) {
        super(irFunc);
    }

    private void pass() {
        buildCFG();

        Set<BasicBlock> bbSet = new HashSet<>();

        for (BasicBlock bb : predMap.keySet()) {
            if (!(bb.getFirstInst() instanceof Phi)) continue;

            Map<BasicBlock, BasicBlock> pcMap = new HashMap<>();
            Map<BasicBlock, Set<Move>> parallelMap = new HashMap<>();
            for (BasicBlock pred : predMap.get(bb)) {
                if (succMap.get(pred).size() == 1) {
                    pcMap.put(pred, pred);
                } else {
                    BasicBlock pcBB = irFunc.makeBB("parallel_copy");
                    pred.addNext(pcBB);

//                    System.out.println("pred " + pred.getLabel() + " to " + pcBB.getLabel());
                    assert pred.getLastInst() instanceof CondBranch;
                    ((CondBranch) pred.getLastInst()).replaceTarget(bb, pcBB);
//                    System.out.println("pred " + pcBB.getLabel() + " to " + bb.getLabel());
                    pcBB.append(new DirectBranch(pcBB, bb));

                    pcMap.put(pred, pcBB);
                }
            }

            for (BasicBlock pcBB : pcMap.values()) {
                assert !bbSet.contains(pcBB);
                parallelMap.put(pcBB, new HashSet<>());
            }
            bbSet.addAll(pcMap.values());

            Instruction inst = bb.getFirstInst();
            while (inst instanceof Phi) {
                Phi phiInst = (Phi) inst;
                LocalReg dst = phiInst.getDst();
                for (BasicBlock pred : phiInst.getAllSource().keySet()) {
                    BasicBlock pcBB = pcMap.get(pred);
                    Operand val = phiInst.getAllSource().get(pred);
                    parallelMap.get(pcBB).add(new Move(pcBB, dst, val));
                }
                phiInst.delete();
                inst = inst.next;
            }

            for (BasicBlock pcBB : parallelMap.keySet()) {
                parallel2sequential(parallelMap.get(pcBB), pcBB);
            }
        }
    }

    private boolean check(Set<Move> parallel) {
        for (Move move : parallel) {
            if (move.getDst() != move.getSrc()) return true;
        }
        return false;
    }

    private Move find(Set<Move> parallel) {
        for (Move move : parallel) {
            LocalReg b = move.getDst();
            boolean ok = true;
            for (Move other : parallel) {
                if (b == other.getSrc()) {
                    ok = false;
                    break;
                }
            }
            if (ok) return move;
        }
        return null;
    }

    private void parallel2sequential(Set<Move> parallel, BasicBlock pcBB) {
        while (check(parallel)) {
            Move x = find(parallel);
            if (x != null) {
                pcBB.appendBeforeTerminator(x);
                parallel.remove(x);
            } else {
                Move y = null;
                for (Move z : parallel) {
                    if (z.getDst() != z.getSrc()) {
                        y = z;
                    }
                }
                assert y != null;
                LocalReg tmp = irFunc.makeLocalReg("tmp");
                pcBB.appendBeforeTerminator(new Move(pcBB, tmp, y.getSrc()));
                parallel.remove(y);
                parallel.add(new Move(pcBB, y.getDst(), tmp));
            }
        }
    }

}
