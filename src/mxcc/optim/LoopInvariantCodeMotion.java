package mxcc.optim;

import mxcc.ir.*;

import java.util.*;

public class LoopInvariantCodeMotion extends Pass {
    private Set<Function> relevantFuncs;
    // Map<header, starts of back edges>
    private Map<BasicBlock, Set<BasicBlock>> backEdge;
    // Map<header, loop>
    private Map<BasicBlock, Set<BasicBlock>> loopMap;

    // Map<header, preheader>
//    private Map<BasicBlock, BasicBlock> preheader = new HashMap<>();
    // Map<bb, headers whose loops bb belongs to>
//    private Map<BasicBlock, Set<BasicBlock>> headerMap = new HashMap<>();

    public static void visit(Module module) {
        RelevantFuncCollector collector = new RelevantFuncCollector(module);
        Set<Function> relevantFuncs = collector.getRelevantFuncs();
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
//            if (func.getName().equals("main")) {
//                System.out.println("i am in");
//            }
            LoopInvariantCodeMotion worker = new LoopInvariantCodeMotion(func, relevantFuncs);
            worker.pass();
        }
    }

    private LoopInvariantCodeMotion(Function func, Set<Function> relevantFuncs) {
        super(func);
        this.relevantFuncs = relevantFuncs;
        LoopFinder loopFinder = new LoopFinder(func);
        backEdge = loopFinder.getBackEdge();
        loopMap = loopFinder.getLoopMap();
    }

    private void pass() {
        update();
        for (BasicBlock header : loopMap.keySet()) {
            if (hoist(header, loopMap.get(header))) {
                update();
            }
        }
    }

    private void update() {
        buildCFG();
        collectDefUseRelation();
    }

    private void replaceBranchTarget(BasicBlock bb, BasicBlock oldTarget, BasicBlock newTarget) {
        Instruction lastInst = bb.getLastInst();
        if (lastInst instanceof CondBranch) {
            ((CondBranch) lastInst).replaceTarget(oldTarget, newTarget);
        } else if (lastInst instanceof DirectBranch) {
            assert ((DirectBranch) lastInst).getTarget() == oldTarget;
            ((DirectBranch) lastInst).replaceTarget(newTarget);
        } else {
            assert false;
        }
    }

    private List<Call> fetchInvariantCalls(Set<BasicBlock> loop) {
        List<Call> invariantCalls = new ArrayList<>();
        for (BasicBlock bb : loop) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
                if (inst instanceof Call) {
                    Call call = (Call) inst;
                    boolean invariant = !relevantFuncs.contains(call.getFunc().IRFunc);
                    if (invariant) {
                        for (Operand arg : call.getArgs()) {
                            if (arg instanceof IntImmediate || arg instanceof StringLiteral) continue;
                            assert arg instanceof LocalReg;
                            BasicBlock defBB = defMap.get(arg).getParentBB();
                            if (loop.contains(defBB)) {
                                invariant = false;
                                break;
                            }
                        }
                    }
                    if (invariant) {
                        invariantCalls.add(call);
                    }
                }
                inst = inst.next;
            }
        }
        return invariantCalls;
    }

    private BasicBlock insertPreheader(BasicBlock header) {
        BasicBlock preheader = irFunc.makeBB("preheader");
        // FirstBB must be StartBB.
        if (header == irFunc.getStartBB()) {
            header.addNext(preheader);
        } else {
            header.addPrev(preheader);
        }

//        succMap.put(preheader, new HashSet<>());
//        predMap.put(preheader, new HashSet<>());
        for (BasicBlock pred : predMap.get(header)) {
            if (!backEdge.get(header).contains(pred)) {
                replaceBranchTarget(pred, header, preheader);
//                succMap.get(pred).remove(header);
//                predMap.get(header).remove(pred);
//                succMap.get(pred).add(preheader);
//                predMap.get(preheader).add(pred);
            }
        }
        preheader.append(new DirectBranch(preheader, header));
//        succMap.get(preheader).add(header);
//        predMap.get(header).add(preheader);

        return preheader;
    }

    private void rewritePhi(BasicBlock header, BasicBlock preheader) {
        Instruction phiInst = header.getFirstInst();
        while (phiInst instanceof Phi) {
            Phi phi = (Phi) phiInst;
            Map<BasicBlock, Operand> originSource = phi.getAllSource();
            Map<BasicBlock, Operand> preheaderSource = new LinkedHashMap<>();
            Map<BasicBlock, Operand> headerSource = new LinkedHashMap<>();
            for (BasicBlock pred : originSource.keySet()) {
                if (backEdge.get(header).contains(pred)) {
                    headerSource.put(pred, originSource.get(pred));
                } else {
                    preheaderSource.put(pred, originSource.get(pred));
                }
            }
            assert !preheaderSource.isEmpty();
            if (preheaderSource.size() == 1) {
                headerSource.put(preheader, preheaderSource.values().iterator().next());
            } else {
                LocalReg preheaderDst = irFunc.makeLocalReg("preheaderDst");
                preheader.appendBeforeTerminator(new Phi(preheader, preheaderDst, preheaderSource));
                headerSource.put(preheader, preheaderDst);
            }
            phi.replacedBy(new Phi(header, phi.getDst(), headerSource));
            phiInst = phiInst.next;
        }
    }

    private boolean hoist(BasicBlock header, Set<BasicBlock> loop) {
        List<Call> invariantCalls = fetchInvariantCalls(loop);
        if (invariantCalls.isEmpty()) return false;

        BasicBlock preheader = insertPreheader(header);

        rewritePhi(header, preheader);

        for (Call call : invariantCalls) {
            preheader.appendBeforeTerminator(new Call(preheader, call.getFunc(), call.getDst(), call.getArgs()));
            call.delete();
            System.err.println("hoist " + call.getFunc().IRFunc.getName() + " in " + call.getParentBB().getParentFunc().getName());
        }

        return true;
    }

}
