package mxcc.ssa;

import javafx.util.Pair;
import mxcc.ir.*;

import java.util.*;

public class SSAConstructor extends SSATransformer {
    // Map<BB, dominators>
    private Map<BasicBlock, List<BasicBlock>> dominatorMap = new HashMap<>();
    // Map<BB, nodes which it immediately dominates>
    private Map<BasicBlock, List<BasicBlock>> dominatingTree = new HashMap<>();
    private Map<BasicBlock, BasicBlock> iDomMap = new HashMap<>();
    private Map<BasicBlock, List<BasicBlock>> DFMap = new HashMap<>();

    private Map<Register, LocalReg> reachingDef = new HashMap<>();

    public static void process(Module module) {
        for(Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            SSAConstructor constructor = new SSAConstructor(func);
            constructor.build();
        }
    }

    private SSAConstructor(Function irFunc) {
        super(irFunc);
    }

    private void build() {
        preprocess();
        insertPhiFunction();
        renameVariables();
    }

    private void preprocess() {
        calcDominators();
        calcImmediateDominator();
        calcDominanceFrontier();
        buildDominatorTree();
    }

    private void insertPhiFunction() {
        List<LocalReg> varAddrs = new ArrayList<>();
        Instruction inst = irFunc.getStartBB().getFirstInst();
        while (inst != null) {
            if (inst instanceof Alloca) {
                varAddrs.add(((Alloca) inst).getDst());
                inst.delete();
            }
            inst = inst.next;
        }

        for (LocalReg varAddr : varAddrs) {
            reachingDef.put(varAddr, null);
        }

        for (LocalReg varAddr : varAddrs) {
            Set<BasicBlock> defBBs = getDefBBs(varAddr);
            LinkedList<BasicBlock> workList = new LinkedList<>(defBBs);
            Set<BasicBlock> visited = new HashSet<>();
            while (!workList.isEmpty()) {
                BasicBlock bb = workList.poll();
                List<BasicBlock> dfBBs = DFMap.get(bb);
                for (BasicBlock dfBB : dfBBs) {
                    if (visited.contains(dfBB)) continue;
                    dfBB.appendFront(new Phi(dfBB, varAddr));
                    visited.add(dfBB);
                    if (!defBBs.contains(dfBB)) {
                        workList.add(dfBB);
                    }
                }
            }
        }
    }

    private void renameVariables() {
        renameVariables(irFunc.getStartBB());
    }

    private void renameVariables(BasicBlock curBB) {
        Map<Register, LocalReg> changedReachingDef = new HashMap<>();
        Instruction inst = curBB.getFirstInst();
        while (inst != null) {
            if (inst instanceof Store) {
                Store storeInst = (Store) inst;
                Register varAddr = (Register) storeInst.getAddr();
                if (reachingDef.containsKey(varAddr)) {
                    LocalReg varDef = irFunc.makeLocalReg("varDef");
                    if (!changedReachingDef.containsKey(varAddr)) {
                        changedReachingDef.put(varAddr, reachingDef.get(varAddr));
                    }
                    reachingDef.put(varAddr, varDef);
                    inst.replace(new Move(curBB, varDef, storeInst.getVal()));
                }
            }
            if (inst instanceof Phi) {
                Phi phiInst = (Phi) inst;
                Register varAddr = phiInst.getVarAddr();
                assert reachingDef.containsKey(varAddr);
                LocalReg varDef = irFunc.makeLocalReg("varDef");
                if (!changedReachingDef.containsKey(varAddr)) {
                    changedReachingDef.put(varAddr, reachingDef.get(varAddr));
                }
                reachingDef.put(varAddr, varDef);
                phiInst.setDst(varDef);
            }
            if (inst instanceof Load) {
                Load loadInst = (Load) inst;
                Register varAddr = (Register) loadInst.getAddr();
                if (reachingDef.containsKey(varAddr)) {
                    LocalReg varDef = reachingDef.get(varAddr);
                    inst.replace(new Move(curBB, loadInst.getDst(), varDef == null ? new IntImmediate(0) : varDef));
                }
            }
            inst = inst.next;
        }
        for (BasicBlock successor : curBB.getSuccessors()) {
            Instruction succInst = successor.getFirstInst();
            while (succInst instanceof Phi) {
                Phi phiInst = (Phi) succInst;
                Register varAddr = phiInst.getVarAddr();
                assert reachingDef.containsKey(varAddr);
                LocalReg varDef = reachingDef.get(varAddr);
                phiInst.acceptSource(curBB, varDef == null ? new IntImmediate(0) : varDef);
                succInst = succInst.next;
            }
        }
        for (BasicBlock son : dominatingTree.get(curBB)) {
            renameVariables(son);
        }
        reachingDef.putAll(changedReachingDef);
    }

    private Set<BasicBlock> getDefBBs(LocalReg varAddr) {
        Set<BasicBlock> defBBs = new HashSet<>();
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            boolean containDef = false;
            while (inst != null) {
                if (inst instanceof Store && ((Store) inst).getAddr() == varAddr) {
                    containDef = true;
                    break;
                }
                inst = inst.next;
            }
            if (containDef) defBBs.add(bb);
            bb = bb.next;
        }
        return defBBs;
    }

    // self-loop does not strictly dominate itself ?
    private boolean strictlyDominate(BasicBlock bb1, BasicBlock bb2) {
        if (dominatorMap.get(bb2) == null) {
            System.out.println(bb2.getName() + " null");
        }
        return dominatorMap.get(bb2).contains(bb1) && bb1 != bb2;
    }

    private List<Pair<BasicBlock, BasicBlock>> collectCFGEdges() {
        List<Pair<BasicBlock, BasicBlock>> edges = new ArrayList<>();
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            for (BasicBlock succ : bb.getSuccessors()) {
                edges.add(new Pair<>(bb, succ));
            }
            bb = bb.next;
        }
        return edges;
    }

    private void calcDominanceFrontier() {
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            DFMap.put(bb, new ArrayList<>());
            bb = bb.next;
        }
        for (Pair<BasicBlock, BasicBlock> edge : collectCFGEdges()) {
            BasicBlock x = edge.getKey(), b = edge.getValue();
            while (x != null && !strictlyDominate(x, b)) {
                DFMap.get(x).add(b);
                x = iDomMap.get(x);
            }
        }
    }

    // delete a BB in cfg and make dfs search from function entry
    // the deletedBB is dominator of those untouched BBs
    private void touch(BasicBlock curBB, BasicBlock deletedBB, List<BasicBlock> touchedBBs) {
        if (curBB == deletedBB || touchedBBs.contains(curBB)) return;
        touchedBBs.add(curBB);
        for (BasicBlock successor : curBB.getSuccessors()) {
            touch(successor, deletedBB, touchedBBs);
        }
    }

    private void calcDominators() {
        BasicBlock deletedBB = irFunc.getStartBB();
        while (deletedBB != null) {
            List<BasicBlock> touchedBBs = new ArrayList<>();
            touch(irFunc.getStartBB(), deletedBB, touchedBBs);
            BasicBlock bb = irFunc.getStartBB();
            while (bb != null) {
                if (!touchedBBs.contains(bb)) {
                    if (!dominatorMap.containsKey(bb)) {
                        dominatorMap.put(bb, new ArrayList<>());
                    }
                    dominatorMap.get(bb).add(deletedBB);
                }
                bb = bb.next;
            }
            deletedBB = deletedBB.next;
        }
    }

    private void calcImmediateDominator() {
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            BasicBlock iDom = null;
            for (BasicBlock dom : dominatorMap.get(bb)) {
                if (dom == bb) continue;
                if (iDom == null) {
                    iDom = dom;
                } else {
                    if (dominatorMap.get(dom).contains(iDom)) {
                        iDom = dom;
                    }
                }
            }
            iDomMap.put(bb, iDom);
            bb = bb.next;
        }
    }

    private void buildDominatorTree() {
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            dominatingTree.put(bb, new ArrayList<>());
            bb = bb.next;
        }

        bb = irFunc.getStartBB();
        while (bb != null) {
            BasicBlock iDom = iDomMap.get(bb);
            if (iDom != null) {
                dominatingTree.get(iDom).add(bb);
            }
            bb = bb.next;
        }
    }


}
