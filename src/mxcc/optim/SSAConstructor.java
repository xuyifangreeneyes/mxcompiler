package mxcc.optim;

import javafx.util.Pair;
import mxcc.ir.*;

import java.util.*;

public class SSAConstructor extends Pass {
    // Map<BB, dominators>
    private Map<BasicBlock, List<BasicBlock>> dominatorMap = new HashMap<>();
    // Map<BB, nodes which it immediately dominates>
    private Map<BasicBlock, List<BasicBlock>> dominatingTree = new HashMap<>();
    private Map<BasicBlock, BasicBlock> iDomMap = new HashMap<>();
    private Map<BasicBlock, List<BasicBlock>> DFMap = new HashMap<>();

    private Map<Register, LocalReg> reachingDef = new HashMap<>();

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            SSAConstructor constructor = new SSAConstructor(func);
            constructor.pass();
        }
        module.isSSA = true;
    }

    private SSAConstructor(Function irFunc) {
        super(irFunc);
    }

    private void pass() {
        preprocess();
        insertPhiFunction();
        renameVariables();
        postProcess();
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
                    inst.replacedBy(new Move(curBB, varDef, storeInst.getVal()));
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
                    inst.replacedBy(new Move(curBB, loadInst.getDst(), varDef == null ? new IntImmediate(0) : varDef));
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

    private void postProcess() {
        collectDefUseRelation();
        removeUselessPhi();
    }

    private void removeUselessPhi() {
        LinkedList<Phi> workList = collectPhi();
        Set<Phi> workSet = new HashSet<>(workList);
        while (!workList.isEmpty()) {
            Phi phi = workList.poll();
            workSet.remove(phi);
            if (deleteSelfSource(phi)) {
                continue;
            }
            List<Phi> phiList = getRealSource(phi);
            if (phiList != null) {
                for (Phi other : phiList) {
                    if (workSet.contains(other)) continue;
                    workList.add(other);
                    workSet.add(other);
                }
            }
        }
    }

    private List<Phi> getRealSource(Phi phi) {
        if (phi.getAllSource().size() != 2) return null;
        LocalReg dst = phi.getDst();
        IntImmediate fake = null;
        LocalReg real = null;
        for (Operand operand : phi.getAllSource().values()) {
            if (operand instanceof IntImmediate) {
                fake = (IntImmediate) operand;
                assert fake.getVal() == 0;
            } else {
                assert operand instanceof LocalReg;
                if (real != dst) {
                    real = (LocalReg) operand;
                }
            }
        }
        if (fake == null || real == null) return null;
        List<Phi> phiList = new ArrayList<>();
        useMap.get(real).remove(phi);
        for (Instruction inst : useMap.get(dst)) {
            inst.replaceOperand(dst, real);
            useMap.get(real).add(inst);
            if (inst instanceof Phi) {
                phiList.add((Phi) inst);
            }
        }
        defMap.remove(dst);
        useMap.remove(dst);
        phi.delete();
        return phiList;
    }

    private boolean deleteSelfSource(Phi phi) {
        if (phi.getAllSource().size() != 2) return false;
        LocalReg dst = phi.getDst();
        if (!phi.getAllSource().values().contains(dst) || useMap.get(dst).size() != 1) return false;
        assert useMap.get(dst).contains(phi);
        for (Operand operand : phi.getAllSource().values()) {
            if (operand == dst) continue;
            assert operand instanceof LocalReg;
            useMap.get(operand).remove(phi);
        }
        defMap.remove(dst);
        useMap.remove(dst);
        phi.delete();
        return true;
    }

    private LinkedList<Phi> collectPhi() {
        LinkedList<Phi> workList= new LinkedList<>();
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
                if (inst instanceof Phi) {
                    workList.add((Phi) inst);
                }
                inst = inst.next;
            }
            bb = bb.next;
        }
        return workList;
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
//        if (dominatorMap.get(bb2) == null) {
//            System.out.println(bb2.getName() + " null");
//        }
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
    // TODO: change type of touchedBBs from List to Set
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
