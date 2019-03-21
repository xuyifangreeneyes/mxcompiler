package mxcc.optim;

import mxcc.ir.*;
import java.util.*;

public class DeadCodeElimination extends Pass {

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            DeadCodeElimination dce = new DeadCodeElimination(func);
            dce.pass();
        }
    }

    private DeadCodeElimination(Function irFunc) {
        super(irFunc);
    }

    private void pass() {
        collectDefUseRelation();
        eliminateDeadCode();
    }

    private boolean hasSideEffect(Instruction inst) {
        // alloca and malloc have no side effect ??
        return inst instanceof Call;
    }

    private void eliminateDeadCode() {
        LinkedList<Register> workList = new LinkedList<>(defMap.keySet());
        Set<Register> workSet = new HashSet<>(workList);
        while (!workList.isEmpty()) {
            Register var = workList.poll();
            workSet.remove(var);
            if (!useMap.get(var).isEmpty()) continue;
            Instruction defInst = defMap.get(var);
            // defInst == null means that var is a function parameter or global variable
            if (defInst == null || hasSideEffect(defInst)) continue;
            defInst.delete();

//            System.out.println(defInst.getDefReg());

            for (Register useReg : defInst.getUseRegs()) {
                useMap.get(useReg).remove(defInst);
                if (!workSet.contains(useReg)) {
                    workList.add(useReg);
                    workSet.add(useReg);
                }
            }
            defMap.remove(var);
            useMap.remove(var);
        }
    }

}
