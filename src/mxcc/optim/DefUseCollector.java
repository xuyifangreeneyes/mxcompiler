package mxcc.optim;

import mxcc.ir.*;

import java.util.HashSet;

public class DefUseCollector extends Pass {

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            DefUseCollector collector = new DefUseCollector(func);
            collector.pass();
        }
    }

    private DefUseCollector(Function irFunc) {
        super(irFunc);
    }

    private void pass() {
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
                Register defReg = inst.getDefReg();
                if (defReg != null) {
                    irFunc.defMap.put(defReg, inst);
                    if (!irFunc.useMap.containsKey(defReg)) {
                        irFunc.useMap.put(defReg, new HashSet<>());
                    }
                }
                for (Register useReg : inst.getUseRegs()) {
                    if (!irFunc.defMap.containsKey(useReg)) {
                        irFunc.defMap.put(useReg, null);
                    }
                    if (!irFunc.useMap.containsKey(useReg)) {
                        irFunc.useMap.put(useReg, new HashSet<>());
                    }
                    irFunc.useMap.get(useReg).add(inst);
                }
                inst = inst.next;
            }
            bb = bb.next;
        }
    }
}
