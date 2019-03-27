package mxcc.optim;

import mxcc.ir.*;
import mxcc.utility.Config;

import java.util.*;

public class CFGSimplifier extends Pass {
    private boolean modified;

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
//            if (Config.debugMode) {
//                System.out.println("CFG simplification in " + func.getName());
//            }
            CFGSimplifier simplifier = new CFGSimplifier(func);
            simplifier.pass(module.isSSA);
        }
    }

    private CFGSimplifier(Function irFunc) {
        super(irFunc);
    }

    private void pass(boolean isSSA) {
        buildCFG();
        while (true) {
            modified = false;
            condBranch2DirectBranch();
            if (!isSSA) removeSingleBranchBlock();
            mergeBlock();
            eliminateDeadBlock();
            if (!modified) break;
        }
        eliminateUnreachableBlocks();
    }

    private void mergeBlock() {
        // irFunc.getStartBB() is not allowed merging to other BB
        BasicBlock bb = irFunc.getStartBB().next;
        while (bb != null) {
            if (succMap.get(bb).size() == 1) {
                BasicBlock succ = succMap.get(bb).iterator().next();
//                System.out.println("[ " + bb.getParentFunc().getName() + "<" + bb.getLabel() + "> <" + succ.getLabel() + "> ]");

                // Succ is not allowed being irFunc.getStartBB() since it is entry of function.
                if (predMap.get(succ).size() == 1 && succ != irFunc.getStartBB()) {

                    assert predMap.get(succ).iterator().next() == bb;
                    // succ has only one predecessor, which indicates that it can't be a join node.
                    assert !(succ.getFirstInst() instanceof Phi);

                    for (BasicBlock succOfSucc : succMap.get(succ)) {
                        Instruction inst = succOfSucc.getFirstInst();
                        while (inst instanceof Phi) {
                            ((Phi) inst).replaceSourceBB(succ, bb);
                            inst = inst.next;
                        }
                    }

                    succMap.put(bb, succMap.get(succ));
                    for (BasicBlock succOfSucc : succMap.get(succ)) {
                        predMap.get(succOfSucc).remove(succ);
                        predMap.get(succOfSucc).add(bb);
                    }
                    succMap.remove(succ);
                    predMap.remove(succ);

                    bb.mergeSuccBlock(succ);

//                    if (Config.debugMode) {
//                        System.out.println("==============================");
//                        System.out.println("merge <" + succ.getLabel() + "> to <" + bb.getLabel() + ">");
//                    }

                    modified = true;
                }
            }
            bb = bb.next;
        }
    }

    private void eliminateDeadBlock() {
        // irFunc.getStartBB() is not allowed deleting
        BasicBlock bb = irFunc.getStartBB().next;
        while (bb != null) {
            if (predMap.get(bb).isEmpty()) {
                for (BasicBlock succ : succMap.get(bb)) {
                    Instruction inst = succ.getFirstInst();
                    while (inst instanceof Phi) {
                        ((Phi) inst).removeSource(bb);
                        inst = inst.next;
                    }
                }

                for (BasicBlock succ : succMap.get(bb)) {
                    predMap.get(succ).remove(bb);
                }
                succMap.remove(bb);
                predMap.remove(bb);

                bb.delete();

//                if (Config.debugMode) {
//                    System.out.println("==============================");
//                    System.out.println("delete <" + bb.getLabel() + ">");
//                }

                modified = true;
            }
            bb = bb.next;
        }
    }


    private void touch(BasicBlock curBB, Set<BasicBlock> touchedBBs) {
        if (touchedBBs.contains(curBB)) return;
        touchedBBs.add(curBB);
        for (BasicBlock succ : succMap.get(curBB)) {
            touch(succ, touchedBBs);
        }
    }

    private void eliminateUnreachableBlocks() {
        Set<BasicBlock> touchedBBs = new HashSet<>();
        touch(irFunc.getStartBB(), touchedBBs);
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            if (!touchedBBs.contains(bb)) {
                bb.delete();
            }
            bb = bb.next;
        }
    }

    // cannot apply to IR in SSA mode
    private void removeSingleBranchBlock() {
        // irFunc.getStartBB() is not allowed removing
        BasicBlock bb = irFunc.getStartBB().next;
        while (bb != null) {
            if (bb.getFirstInst() instanceof DirectBranch) {
                assert succMap.get(bb).size() == 1;
                BasicBlock succ = succMap.get(bb).iterator().next();
                if (bb != succ) {

                    Set<BasicBlock> preds = predMap.get(bb);

                    for (BasicBlock pred : preds) {
                        Instruction lastInst = pred.getLastInst();
                        assert lastInst instanceof CondBranch || lastInst instanceof DirectBranch;
                        if (lastInst instanceof CondBranch) {
                            ((CondBranch) lastInst).replaceTarget(bb, succ);
                        }
                        if (lastInst instanceof DirectBranch) {
                            ((DirectBranch) lastInst).replaceTarget(succ);
                        }
                    }

//                Instruction inst = succ.getFirstInst();
//                while (inst instanceof Phi) {
//                    ((Phi) inst).replaceSourceBB(bb, preds);
//                    inst = inst.next;
//                }

                    for (BasicBlock pred : preds) {
                        succMap.get(pred).remove(bb);
                        succMap.get(pred).add(succ);
                    }

                    predMap.get(succ).remove(bb);
                    for (BasicBlock pred : preds) {
                        predMap.get(succ).add(pred);
                    }

                    succMap.remove(bb);
                    predMap.remove(bb);

                    bb.delete();

//                    if (Config.debugMode) {
//                        System.out.println("==============================");
//                        System.out.println("remove <" + bb.getLabel() + ">");
//                    }

                    modified = true;
                }
            }
            bb = bb.next;
        }
    }

    private void condBranch2DirectBranch() {
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            if (bb.getLastInst() instanceof CondBranch) {
                CondBranch condBranch = (CondBranch) bb.getLastInst();
                if (condBranch.getIfTrue() == condBranch.getIfFalse()) {
                    DirectBranch directBranch = new DirectBranch(condBranch.getParentBB(), condBranch.getIfTrue());
                    condBranch.replacedBy(directBranch);

//                    if (Config.debugMode) {
//                        System.out.println("==============================");
//                        System.out.println("br " + condBranch.getCond() + " <" + condBranch.getIfTrue().getLabel() + "> <" + condBranch.getIfFalse().getLabel() + ">");
//                        System.out.println("->");
//                        System.out.println("br <" + directBranch.getTarget().getLabel() + ">");
//                    }

                    modified = true;
                } else if (condBranch.getCond() instanceof IntImmediate) {
                    int cond = ((IntImmediate) condBranch.getCond()).getVal();
                    BasicBlock realTarget = cond == 1 ? condBranch.getIfTrue() : condBranch.getIfFalse();
                    BasicBlock fakeTarget = cond == 0 ? condBranch.getIfTrue() : condBranch.getIfFalse();
                    DirectBranch directBranch = new DirectBranch(condBranch.getParentBB(), realTarget);
                    condBranch.replacedBy(directBranch);

                    Instruction inst = fakeTarget.getFirstInst();
                    while (inst instanceof Phi) {
                        ((Phi) inst).removeSource(bb);
                        inst = inst.next;
                    }

                    succMap.get(bb).remove(fakeTarget);
                    predMap.get(fakeTarget).remove(bb);

//                    if (Config.debugMode) {
//                        System.out.println("==============================");
//                        System.out.println("br " + condBranch.getCond() + " <" + condBranch.getIfTrue().getLabel() + "> <" + condBranch.getIfFalse().getLabel() + ">");
//                        System.out.println("->");
//                        System.out.println("br <" + directBranch.getTarget().getLabel() + ">");
//                    }

                    modified = true;
                }
            }
            bb = bb.next;
        }
    }

}
