package mxcc.backend;

import mxcc.nasm.Block;
import mxcc.nasm.Func;
import mxcc.nasm.Inst;
import mxcc.nasm.VirtualReg;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class LivenessAnalyzer {
    private Func func;
    private Map<Block, Set<VirtualReg>> ueVarMap = new HashMap<>();
    private Map<Block, Set<VirtualReg>> varKillMap = new HashMap<>();
    private Map<Block, Set<VirtualReg>> liveOutMap = new HashMap<>();

    public static void visit(Func func) {
        LivenessAnalyzer analyzer = new LivenessAnalyzer(func);
        analyzer.init();
        analyzer.solve();
        analyzer.record();
    }

    private LivenessAnalyzer(Func func) {
        this.func = func;
    }

    private void init() {
        for (Block block : func.getBbList()) {
            ueVarMap.put(block, new HashSet<>());
            varKillMap.put(block, new HashSet<>());
            for (Inst inst : block.getInstList()) {
                for (VirtualReg use : inst.getUse()) {
                    if (varKillMap.get(block).contains(use)) continue;
                    ueVarMap.get(block).add(use);
                }
                for (VirtualReg def : inst.getDef()) {
                    varKillMap.get(block).add(def);
                }
            }
        }
    }

    private void solve() {
        for (Block block : func.getBbList()) {
            liveOutMap.put(block, new HashSet<>());
            for (Block succ : block.getSuccs()) {
                liveOutMap.get(block).addAll(ueVarMap.get(succ));
            }
        }
        boolean changed = true;
        while (changed) {
            changed = false;
            for (Block block : func.getBbList()) {
                for (Block succ : block.getSuccs()) {
                    for (VirtualReg reg : liveOutMap.get(succ)) {
                        if (varKillMap.get(succ).contains(reg) || liveOutMap.get(block).contains(reg)) {
                            continue;
                        }
                        liveOutMap.get(block).add(reg);
                        changed = true;
                    }
                }
            }
        }
    }

    private void record() {
        for (Block block : func.getBbList()) {
            block.setLiveOut(liveOutMap.get(block));
        }
    }

}
