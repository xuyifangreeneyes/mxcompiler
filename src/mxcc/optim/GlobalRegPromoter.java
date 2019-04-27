package mxcc.optim;

import mxcc.ir.*;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class GlobalRegPromoter {
    private Module module;
    private Map<Function, Set<GlobalReg>> directRegMap = new HashMap<>();
    private Map<Function, Set<GlobalReg>> implicitRegMap = new HashMap<>();
    private Map<Function, Set<Function>> callMap = new HashMap<>();

    public GlobalRegPromoter(Module module) {
        this.module = module;
    }

    public void work() {
        collect();
        iterate();
        rewrite();
    }

    private void collect() {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) {
                continue;
            }
            directRegMap.put(func, new HashSet<>());
            implicitRegMap.put(func, new HashSet<>());
            callMap.put(func, new HashSet<>());

            BasicBlock bb = func.getStartBB();
            while (bb != null) {
                Instruction inst = bb.getFirstInst();
                while (inst != null) {
                    if (inst instanceof Load) {
                        Load load = (Load) inst;
                        if (load.getAddr() instanceof GlobalReg) {
                            directRegMap.get(func).add((GlobalReg) load.getAddr());
                        }
                    } else if (inst instanceof Store) {
                        Store store = (Store) inst;
                        if (store.getAddr() instanceof GlobalReg) {
                            directRegMap.get(func).add((GlobalReg) store.getAddr());
                        }
                    } else if (inst instanceof Call) {
                        Function callee = ((Call) inst).getFunc().IRFunc;
                        if (!callee.isBuiltin()) {
                            callMap.get(func).add(callee);
                        }
                    }
                    inst = inst.next;
                }
                bb = bb.next;
            }

            implicitRegMap.get(func).addAll(directRegMap.get(func));
        }
    }

    private void iterate() {
        boolean changed = true;
        while (changed) {
            changed = false;
            for (Function func : implicitRegMap.keySet()) {
                int before = implicitRegMap.get(func).size();
                for (Function callee : callMap.get(func)) {
                    implicitRegMap.get(func).addAll(implicitRegMap.get(callee));
                }
                int after = implicitRegMap.get(func).size();
                if (after > before) {
                    changed = true;
                }
            }
        }
    }

    private void rewrite() {
        for (Function func : directRegMap.keySet()) {
            rewrite(func);
        }
    }

    private void rewrite(Function func) {
        if (directRegMap.get(func).isEmpty()) {
            return;
        }

        Map<GlobalReg, LocalReg> global2localMap = new HashMap<>();
        for (GlobalReg globalReg : directRegMap.get(func)) {
            LocalReg localReg = func.makeLocalReg("global2local");
            global2localMap.put(globalReg, localReg);
        }

        BasicBlock bb = func.getStartBB();
        for (LocalReg localReg : global2localMap.values()) {
            bb.appendFront(new Alloca(bb, localReg, 8));
        }

        // First inst must be Alloca because we add some Allocas at head just now.
        // Here we want last Alloca.
        Instruction inst = bb.getFirstInst();
        while (inst.next instanceof Alloca) {
            inst = inst.next;
        }
        for (GlobalReg globalReg : global2localMap.keySet()) {
            LocalReg tmp = func.makeLocalReg("tmp");
            inst.insertAfter(new Store(bb, tmp, global2localMap.get(globalReg)));
            inst.insertAfter(new Load(bb, tmp, globalReg));
            // As a result:
            // Alloca
            // Load tmp globalReg
            // Store tmp localReg
        }

        int step = global2localMap.keySet().size() * 2;
        for (int i = 0; i < step; ++i) {
            inst = inst.next;
        }
        inst = inst.next;

        while (bb != null) {
            if (!bb.isEntry()) {
                inst = bb.getFirstInst();
            }
            while (inst != null) {
                if (inst instanceof Load) {
                    Load load = (Load) inst;
                    if (load.getAddr() instanceof GlobalReg) {
                        GlobalReg globalReg = (GlobalReg) load.getAddr();
                        Load newLoad = new Load(bb, load.getDst(), global2localMap.get(globalReg));
                        load.replacedBy(newLoad);
                        inst = newLoad;
                    }
                } else if (inst instanceof Store) {
                    Store store = (Store) inst;
                    if (store.getAddr() instanceof GlobalReg) {
                        GlobalReg globalReg = (GlobalReg) store.getAddr();
                        Store newStore = new Store(bb, store.getVal(), global2localMap.get(globalReg));
                        store.replacedBy(newStore);
                        inst = newStore;
                    }
                } else if (inst instanceof Call) {
                    Function callee = ((Call) inst).getFunc().IRFunc;
                    if (!callee.isBuiltin()) {
                        int counter = 0;
                        for (GlobalReg globalReg : global2localMap.keySet()) {
//                        System.out.println(callee.getName());
                            if (!(implicitRegMap.get(callee).contains(globalReg))) {
                                continue;
                            }

                            LocalReg localReg = global2localMap.get(globalReg);

                            LocalReg tmp1 = func.makeLocalReg("tmp");
                            inst.insertBefore(new Load(bb, tmp1, localReg));
                            inst.insertBefore(new Store(bb, tmp1, globalReg));

                            LocalReg tmp2 = func.makeLocalReg("tmp");
                            inst.insertAfter(new Store(bb, tmp2, localReg));
                            inst.insertAfter(new Load(bb, tmp2, globalReg));

                            counter += 2;
                        }
                        for (int i = 0; i < counter; ++i) {
                            inst = inst.next;
                        }
                    }
                } else if (inst instanceof Return) {
                    for (GlobalReg globalReg : global2localMap.keySet()) {
                        LocalReg tmp = func.makeLocalReg("tmp");
                        inst.insertBefore(new Load(bb, tmp, global2localMap.get(globalReg)));
                        inst.insertBefore(new Store(bb, tmp, globalReg));
                    }
                }
                inst = inst.next;
            }
            bb = bb.next;
        }
    }
}
