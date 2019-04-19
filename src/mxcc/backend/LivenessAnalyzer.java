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

            }
        }
    }

    private void solve() {

    }

    private void record() {

    }

}
