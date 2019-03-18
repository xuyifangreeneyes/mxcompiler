package mxcc.ssa;

import javafx.util.Pair;
import mxcc.ir.*;

import java.util.*;

public class SSAConstructor extends SSATransformer {
    private Map<BasicBlock, List<BasicBlock>> domMap = new HashMap<>();
    private Map<BasicBlock, BasicBlock> iDomMap = new HashMap<>();
    private Map<BasicBlock, List<BasicBlock>> DFMap = new HashMap<>();

    public SSAConstructor(Function irFunc) {
        super(irFunc);
    }

    public void constructSSA() {
        preprocess();
        insertPhiFunction();
        renameVariables();
    }

    private void preprocess() {
        buildDominatorTree();
        calcImmediateDominator();
        calcDominanceFrontier();
    }

    private void insertPhiFunction() {
        List<LocalReg> varAddrs = new ArrayList<>();
        Instruction inst = irFunc.getStartBB().getFirstInst();
        while (inst != null) {
            if (inst instanceof Alloca) {
                varAddrs.add(((Alloca) inst).getDst());
            }
            inst = inst.next;
        }
        for (LocalReg varAddr : varAddrs) {
            Set<BasicBlock> defBBs = getDefBBs(varAddr);
            LinkedList<BasicBlock> workList = new LinkedList<>();
            workList.addAll(defBBs);
            Set<BasicBlock> visited = new HashSet<>();
            while (!workList.isEmpty()) {
                BasicBlock bb = workList.poll();
                List<BasicBlock> dfBBs = DFMap.get(bb);
                if (dfBBs == null) continue;
                for (BasicBlock dfBB : dfBBs) {
                    if (visited.contains(dfBB)) continue;
                    dfBB.appendFront(new Phi(varAddr));
                    visited.add(dfBB);
                    if (!defBBs.contains(dfBB)) {
                        workList.add(dfBB);
                    }
                }
            }
        }
    }

    private void renameVariables() {

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

    private boolean strictlyDominate(BasicBlock bb1, BasicBlock bb2) {
        return domMap.get(bb2).contains(bb1) && bb1 != bb2;
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
        for (Pair<BasicBlock, BasicBlock> edge : collectCFGEdges()) {
            BasicBlock x = edge.getKey(), b = edge.getValue();
            while (x != null && !strictlyDominate(x, b)) {
                if (!DFMap.containsKey(x)) {
                    DFMap.put(x, new ArrayList<>());
                }
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

    private void buildDominatorTree() {
        BasicBlock deletedBB = irFunc.getStartBB();
        while (deletedBB != null) {
            List<BasicBlock> touchedBBs = new ArrayList<>();
            touch(irFunc.getStartBB(), deletedBB, touchedBBs);
            BasicBlock bb = irFunc.getStartBB();
            while (bb != null) {
                if (!touchedBBs.contains(bb)) {
                    if (!domMap.containsKey(bb)) {
                        domMap.put(bb, new ArrayList<>());
                    }
                    domMap.get(bb).add(deletedBB);
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
            for (BasicBlock dom : domMap.get(bb)) {
                if (iDom == null) {
                    iDom = dom;
                } else {
                    if (domMap.get(dom).contains(iDom)) {
                        iDom = dom;
                    }
                }
            }
            iDomMap.put(bb, iDom);
            bb = bb.next;
        }
    }


}
