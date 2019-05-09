package mxcc.optim;

import javafx.util.Pair;
import mxcc.ir.*;

import java.util.*;

public class SSAConstructor extends Pass {
    private DominatorManager dominatorManager;
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
        dominatorManager = new DominatorManager(irFunc);
    }

    private void pass() {
        insertPhiFunction();
        renameVariables();
        postProcess();
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
                List<BasicBlock> dfBBs = dominatorManager.getDFMap().get(bb);
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
        for (BasicBlock son : dominatorManager.getDominatingTree().get(curBB)) {
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

}
