package mxcc.optim;

import mxcc.ir.*;

import java.util.LinkedList;

public class ConstantPropagation extends Pass {

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            ConstantPropagation cp = new ConstantPropagation(func);
            cp.pass();
        }
    }

    private ConstantPropagation(Function irFunc) {
        super(irFunc);
    }

    private LinkedList<Instruction> collectInst() {
        LinkedList<Instruction> workList = new LinkedList<>();
        BasicBlock bb = irFunc.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
                workList.add(inst);
                inst = inst.next;
            }
            bb = bb.next;
        }
        return workList;
    }

    private void pass() {
        LinkedList<Instruction> workList = collectInst();
        while (!workList.isEmpty()) {
            Instruction inst = workList.poll();
            if (inst instanceof Phi) {
                Phi phiInst = (Phi) inst;
                boolean isConstant = true;
                boolean gotFirstValue = false;
                int constantValue = 0;
                for (Operand operand : phiInst.getSource().values()) {
                    if (!(operand instanceof IntImmediate)) {
                        isConstant = false;
                        break;
                    }
                    int value = ((IntImmediate) operand).getVal();
                    if (gotFirstValue) {
                        if (constantValue != value) {
                            isConstant = false;
                            break;
                        }
                    } else {
                        constantValue = value;
                        gotFirstValue = true;
                    }
                }
                if (isConstant) {
                    Move moveInst = new Move(phiInst.getParentBB(), phiInst.getDst(), new IntImmediate(constantValue));
                    phiInst.replace(moveInst);
                    irFunc.defMap.put(phiInst.getDst(), moveInst);
                }
            }
            if (inst instanceof Move) {
                Move moveInst = (Move) inst;
                if (!(moveInst.getSrc() instanceof IntImmediate)) continue;
                moveInst.delete();
                Register reg = moveInst.getDst();
                IntImmediate value = (IntImmediate) moveInst.getSrc();
                for (Instruction use : irFunc.useMap.get(reg)) {
                    use.replaceOperand(reg, value);
                }
                irFunc.defMap.remove(reg);
                irFunc.useMap.remove(reg);
            }
        }
    }

}
