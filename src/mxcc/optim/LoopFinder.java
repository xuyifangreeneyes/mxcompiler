package mxcc.optim;

import mxcc.ir.BasicBlock;
import mxcc.ir.Function;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class LoopFinder extends Pass {
    private DominatorManager dm;
    // Map<header, starts of back edges>
    private Map<BasicBlock, Set<BasicBlock>> backEdge = new HashMap<>();
    // Map<header, loop>
    private Map<BasicBlock, Set<BasicBlock>> loopMap = new HashMap<>();

    public LoopFinder(Function func) {
        super(func);
        this.dm = new DominatorManager(func);
        work();
    }

    private void work() {
        buildCFG();
        findLoops();
    }

    private boolean dom(BasicBlock x, BasicBlock y) {
        return dm.getDominatorMap().get(y).contains(x);
    }

    private void findHeaders() {
        for (BasicBlock bb : predMap.keySet()) {
            for (BasicBlock pred : predMap.get(bb)) {
                if (!dom(bb, pred)) continue;
                if (!backEdge.containsKey(bb)) {
                    backEdge.put(bb, new HashSet<>());
                }
                backEdge.get(bb).add(pred);
            }
        }
    }

    private void touch(BasicBlock curBB, BasicBlock deletedBB, Set<BasicBlock> touchedBBs) {
        if (curBB == deletedBB || touchedBBs.contains(curBB)) return;
        touchedBBs.add(curBB);
        for (BasicBlock pred : predMap.get(curBB)) {
            touch(pred, deletedBB, touchedBBs);
        }
    }

    private Set<BasicBlock> findNaturalLoop(BasicBlock header, BasicBlock tail) {
        Set<BasicBlock> touchedBBs = new HashSet<>();
        touch(tail, header, touchedBBs);
        Set<BasicBlock> naturalLoop = new HashSet<>();
        for (BasicBlock bb : touchedBBs) {
            if (dom(header, bb)) {
                naturalLoop.add(bb);
            }
        }
        return naturalLoop;
    }

    private void findLoops() {
        findHeaders();

        for (BasicBlock header : backEdge.keySet()) {
            loopMap.put(header, new HashSet<>());
            for (BasicBlock tail : backEdge.get(header)) {
                loopMap.get(header).addAll(findNaturalLoop(header, tail));
            }
            loopMap.get(header).add(header);
        }
    }

    public Map<BasicBlock, Set<BasicBlock>> getBackEdge() {
        return backEdge;
    }

    public Map<BasicBlock, Set<BasicBlock>> getLoopMap() {
        return loopMap;
    }
}
