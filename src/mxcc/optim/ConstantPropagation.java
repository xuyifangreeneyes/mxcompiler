package mxcc.optim;

import javafx.util.Pair;
import mxcc.ir.*;
import mxcc.utility.Config;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

// constant propagation and copy propagation
public class ConstantPropagation extends Pass {

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
//            if (Config.debugMode) System.out.println("constantPropagation in " + func.getName());
            ConstantPropagation cp = new ConstantPropagation(func);
            cp.pass();
        }
    }

    private ConstantPropagation(Function irFunc) {
        super(irFunc);
    }

    private void pass() {
        collectDefUseRelation();
        propagateConstant();
    }

    private LinkedList<Instruction> collectMoveAndPhi() {
        LinkedList<Instruction> workList = new LinkedList<>();
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
                if (inst instanceof Move || inst instanceof Phi) {
                    workList.add(inst);
                }
                inst = inst.next;
            }
            bb = bb.next;
        }
        return workList;
    }

    private Pair<Boolean, Operand> checkPhi(Phi phiInst) {
        boolean ok = true;
        boolean gotFirstVal = false;
        Operand firstVal = null;
        boolean isInt = false;
        int intVal = 0;
        for (Operand val : phiInst.getAllSource().values()) {
            if (gotFirstVal) {
                if (isInt) {
                    if (!(val instanceof IntImmediate) || ((IntImmediate) val).getVal() != intVal) {
                        ok = false;
                        break;
                    }
                } else {
                    if (val != firstVal) {
                        ok = false;
                        break;
                    }
                }
            } else {
                gotFirstVal = true;
                firstVal = val;
                if (firstVal instanceof IntImmediate) {
                    isInt = true;
                    intVal = ((IntImmediate) firstVal).getVal();
                }
            }
        }
        return new Pair<>(ok, firstVal);
    }

    private void propagateConstant() {
        LinkedList<Instruction> workList = collectMoveAndPhi();
        Set<Instruction> workSet = new HashSet<>(workList);
        while (!workList.isEmpty()) {
            Instruction inst = workList.poll();
            workSet.remove(inst);
            if (inst instanceof Phi) {
                Phi phiInst = (Phi) inst;
                Pair<Boolean, Operand> checkResult = checkPhi(phiInst);
                boolean ok = checkResult.getKey();
                Operand value = checkResult.getValue();
                if (ok) {
                    Move moveInst = new Move(phiInst.getParentBB(), phiInst.getDst(), value);
                    phiInst.replacedBy(moveInst);
                    workList.add(moveInst);
                    workSet.add(moveInst);
                    defMap.put(phiInst.getDst(), moveInst);
                    if (value instanceof Register) {
                        Register reg = (Register) value;
                        useMap.get(reg).remove(phiInst);
                        useMap.get(reg).add(moveInst);
                    }
                }
            }
            if (inst instanceof Move) {
                Move moveInst = (Move) inst;
                moveInst.delete();
                Register dst = moveInst.getDst();
                Operand src = moveInst.getSrc();
                if (src instanceof Register) {
                    useMap.get(src).remove(moveInst);
                }
//                System.out.println(dst);
                for (Instruction use : useMap.get(dst)) {
                    use.replaceOperand(dst, src);
                    if (use instanceof Phi && !workSet.contains(use)) {
                        workList.add(use);
                        workSet.add(use);
                    }
                    if (src instanceof Register) {
                        useMap.get(src).add(use);
                    }
                }
                defMap.remove(dst);
                useMap.remove(dst);
            }
        }
    }

}
