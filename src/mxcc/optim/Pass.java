package mxcc.optim;

import mxcc.ir.*;

import java.util.*;

public class Pass {
    protected Function irFunc;

    // for data flow analysis
    protected Map<Register, Instruction> defMap;
    protected Map<Register, Set<Instruction>> useMap;

    // for control flow analysis
    protected Map<BasicBlock, Set<BasicBlock>> succMap;
    protected Map<BasicBlock, Set<BasicBlock>> predMap;

    public Pass(Function irFunc) {
        this.irFunc = irFunc;
    }

    protected void collectDefUseRelation() {
        defMap = new LinkedHashMap<>();
        useMap = new LinkedHashMap<>();
        for (LocalReg reg : irFunc.args) {
            defMap.put(reg, null);
            useMap.put(reg, new HashSet<>());
        }
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
//                if (inst instanceof UnaryOperation) {
//                    System.out.println(((UnaryOperation) inst).getOp());
//                }
                Register defReg = inst.getDefReg();
                if (defReg != null) {
                    defMap.put(defReg, inst);
                    if (!useMap.containsKey(defReg)) {
                        useMap.put(defReg, new HashSet<>());
                    }
                }
                for (Register useReg : inst.getUseRegs()) {
                    if (!defMap.containsKey(useReg)) {
                        defMap.put(useReg, null);
                    }
                    if (!useMap.containsKey(useReg)) {
                        useMap.put(useReg, new HashSet<>());
                    }
                    useMap.get(useReg).add(inst);
                }
                inst = inst.next;
            }
            bb = bb.next;
        }
    }

    protected LinkedList<Instruction> collectInst() {
        LinkedList<Instruction> workList = new LinkedList<>();
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
                workList.add(inst);
                inst = inst.next;
            }
            bb = bb.next;
        }
        return workList;
    }

    protected void buildCFG() {
        succMap = new HashMap<>();
        predMap = new HashMap<>();

        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            succMap.put(bb, bb.getSuccessors());
            predMap.put(bb, new HashSet<>());
            bb = bb.next;
        }

        bb = irFunc.getStartBB();
        while (bb != null) {
            for (BasicBlock succ : succMap.get(bb)) {
                predMap.get(succ).add(bb);
            }
            bb = bb.next;
        }
    }
}
