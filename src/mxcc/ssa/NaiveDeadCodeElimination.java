package mxcc.ssa;

import mxcc.ir.*;
import java.util.*;

public class NaiveDeadCodeElimination extends Pass {
    private Map<Register, Instruction> defMap = new LinkedHashMap<>();
    private Map<Register, Set<Instruction>> useMap = new LinkedHashMap<>();


    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            NaiveDeadCodeElimination dce = new NaiveDeadCodeElimination(func);
            dce.pass();
        }
    }

    private NaiveDeadCodeElimination(Function irFunc) {
        super(irFunc);
    }

    private void pass() {
        collectDefUseRelation();
        eliminateDeadCode();
    }

    private void collectDefUseRelation() {
//        for (LocalReg arg : irFunc.args) {
//            defMap.put(arg, null);
//            useMap.put(arg, new HashSet<>());
//        }
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
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

    private boolean hasSideEffect(Instruction inst) {
        // alloca and malloc have no side effect ??
        return inst instanceof Call;
    }

    private void eliminateDeadCode() {
        LinkedList<Register> workList = new LinkedList<>(defMap.keySet());
        while (!workList.isEmpty()) {
            Register var = workList.poll();
            if (!useMap.get(var).isEmpty()) continue;
//            System.out.println(var);
//            System.out.println("defMap.size = " + defMap.size());
//            System.out.println("useMap.size = " + useMap.size());
            Instruction defInst = defMap.get(var);
            // defInst == null means that var is a function parameter or global variable
            if (defInst == null || hasSideEffect(defInst)) continue;
            defInst.delete();
            for (Register useReg : defInst.getUseRegs()) {
                useMap.get(useReg).remove(defInst);
//                if (useReg.toString().equals("%argVal_4"))
//                    System.out.println("find it");
                workList.add(useReg);
            }
        }
    }

}
