package mxcc.optim;

import mxcc.ir.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ConstGlobalRegEliminator {
    private Module module;
    private Map<GlobalReg, List<Store>> stores = new HashMap<>();
    private Map<GlobalReg, List<Load>> loads = new HashMap<>();

    public ConstGlobalRegEliminator(Module module) {
        this.module = module;
    }

    public void work() {
        collect();
        rewrite();
    }

    private void collect() {
        for (GlobalReg globalReg : module.globalRegs) {
            stores.put(globalReg, new ArrayList<>());
            loads.put(globalReg, new ArrayList<>());
        }
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            BasicBlock bb = func.getStartBB();
            while (bb != null) {
                Instruction inst = bb.getFirstInst();
                while (inst != null) {
                    if (inst instanceof Store) {
                        Store store = (Store) inst;
                        if (store.getAddr() instanceof GlobalReg) {
                            stores.get(store.getAddr()).add(store);
                        }
                    } else if (inst instanceof Load) {
                        Load load = (Load) inst;
                        if (load.getAddr() instanceof GlobalReg) {
                            loads.get(load.getAddr()).add(load);
                        }
                    }
                    inst = inst.next;
                }
                bb = bb.next;
            }
        }
    }

    private void rewrite() {
        List<GlobalReg> deletedGlobalRegs = new ArrayList<>();
        for (GlobalReg globalReg : module.globalRegs) {
            int num = stores.get(globalReg).size();
            if (num == 0) {
                load2move(loads.get(globalReg), 0);
                deletedGlobalRegs.add(globalReg);
            } else if (num == 1) {
                Store store = stores.get(globalReg).get(0);
                if (store.getParentBB().getParentFunc().getName().equals("_globalInit") &&
                        store.getVal() instanceof IntImmediate) {
                    int val = ((IntImmediate) store.getVal()).getVal();
                    load2move(loads.get(globalReg), val);
                    store.delete();
                    deletedGlobalRegs.add(globalReg);
                }
            }
        }
        module.globalRegs.removeAll(deletedGlobalRegs);
    }

    private void load2move(List<Load> loadList, int val) {
        for (Load load : loadList) {
            load.replacedBy(new Move(load.getParentBB(), load.getDst(), new IntImmediate(val)));
        }
    }
}
