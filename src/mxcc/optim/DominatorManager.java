package mxcc.optim;

import mxcc.ir.BasicBlock;
import mxcc.ir.Function;
import mxcc.utility.Pair;

import java.util.*;

public class DominatorManager {
    private Function func;
    // Map<BB, dominators>
    private Map<BasicBlock, List<BasicBlock>> dominatorMap = new HashMap<>();
    // Map<BB, nodes which it immediately dominates>
    private Map<BasicBlock, List<BasicBlock>> dominatingTree = new HashMap<>();
    private Map<BasicBlock, BasicBlock> iDomMap = new HashMap<>();
    private Map<BasicBlock, List<BasicBlock>> DFMap = new HashMap<>();

    public DominatorManager(Function func) {
        this.func = func;
        build();
    }

    private void build() {
        calcDominators();
        calcImmediateDominator();
        calcDominanceFrontier();
        buildDominatorTree();
    }

    public Map<BasicBlock, List<BasicBlock>> getDominatorMap() {
        return dominatorMap;
    }

    public Map<BasicBlock, List<BasicBlock>> getDominatingTree() {
        return dominatingTree;
    }

    public Map<BasicBlock, BasicBlock> getiDomMap() {
        return iDomMap;
    }

    public Map<BasicBlock, List<BasicBlock>> getDFMap() {
        return DFMap;
    }

    // delete a BB in cfg and make dfs search from function entry
    // the deletedBB is dominator of those untouched BBs
    private void touch(BasicBlock curBB, BasicBlock deletedBB, Set<BasicBlock> touchedBBs) {
        if (curBB == deletedBB || touchedBBs.contains(curBB)) return;
        touchedBBs.add(curBB);
        for (BasicBlock successor : curBB.getSuccessors()) {
            touch(successor, deletedBB, touchedBBs);
        }
    }

    private void calcDominators() {
        BasicBlock deletedBB = func.getStartBB();
        while (deletedBB != null) {
            Set<BasicBlock> touchedBBs = new HashSet<>();
            touch(func.getStartBB(), deletedBB, touchedBBs);
            BasicBlock bb = func.getStartBB();
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
        BasicBlock bb = func.getStartBB();
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

    // self-loop does not strictly dominate itself ?
    private boolean strictlyDominate(BasicBlock bb1, BasicBlock bb2) {
//        if (dominatorMap.get(bb2) == null) {
//            System.out.println(bb2.getName() + " null");
//        }
        return dominatorMap.get(bb2).contains(bb1) && bb1 != bb2;
    }

    private List<Pair<BasicBlock, BasicBlock>> collectCFGEdges() {
        List<Pair<BasicBlock, BasicBlock>> edges = new ArrayList<>();
        BasicBlock bb = func.getStartBB();
        while (bb != null) {
            for (BasicBlock succ : bb.getSuccessors()) {
                edges.add(new Pair<>(bb, succ));
            }
            bb = bb.next;
        }
        return edges;
    }

    private void calcDominanceFrontier() {
        BasicBlock bb = func.getStartBB();
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

    private void buildDominatorTree() {
        BasicBlock bb = func.getStartBB();
        while (bb != null) {
            dominatingTree.put(bb, new ArrayList<>());
            bb = bb.next;
        }

        bb = func.getStartBB();
        while (bb != null) {
            BasicBlock iDom = iDomMap.get(bb);
            if (iDom != null) {
                dominatingTree.get(iDom).add(bb);
            }
            bb = bb.next;
        }
    }
}
