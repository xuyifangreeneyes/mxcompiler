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

    private boolean hasSideEffect(Instruction inst) {
        // alloca and malloc have no side effect ??
        return inst instanceof Call;
    }

    private void pass() {
        LinkedList<Register> workList = new LinkedList<>(irFunc.defMap.keySet());
        while (!workList.isEmpty()) {
            Register var = workList.poll();
            if (!irFunc.useMap.get(var).isEmpty()) continue;
            Instruction defInst = irFunc.defMap.get(var);
            // defInst == null means that var is a function parameter or global variable
            if (defInst == null || hasSideEffect(defInst)) continue;
            defInst.delete();
            for (Register useReg : defInst.getUseRegs()) {
                irFunc.useMap.get(useReg).remove(defInst);
                workList.add(useReg);
            }
        }
    }

}
