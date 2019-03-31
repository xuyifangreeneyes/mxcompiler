package mxcc.optim;

import mxcc.ir.*;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class SSADestructor extends Pass {

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            SSADestructor destructor = new SSADestructor(func);
            destructor.pass();
        }
        module.isSSA = false;
    }

    private SSADestructor(Function irFunc) {
        super(irFunc);
    }

    private void pass() {
        buildCFG();

        for (BasicBlock bb : predMap.keySet()) {
            if (!(bb.getFirstInst() instanceof Phi)) continue;
            Map<BasicBlock, BasicBlock> pcMap = new HashMap<>();
            for (BasicBlock pred : predMap.get(bb)) {
                if (succMap.get(pred).size() == 1) {
                    pcMap.put(pred, pred);
                } else {
                    BasicBlock pcBB = irFunc.makeBB("parallel_copy");
                    // the condition of function inline may be lost here
                    pred.addNext(pcBB);


//                    System.out.println("pred " + pred.getLabel() + " to " + pcBB.getLabel());
                    assert pred.getLastInst() instanceof CondBranch;
                    ((CondBranch) pred.getLastInst()).replaceTarget(bb, pcBB);
//                    System.out.println("pred " + pcBB.getLabel() + " to " + bb.getLabel());
                    pcBB.append(new DirectBranch(pcBB, bb));

                    pcMap.put(pred, pcBB);
                }
            }

            Instruction inst = bb.getFirstInst();
            while (inst instanceof Phi) {
                Phi phiInst = (Phi) inst;
                LocalReg varAddr = irFunc.makeLocalReg("varAddr");
                irFunc.getStartBB().appendFront(new Alloca(irFunc.getStartBB(), varAddr, 4));
                for (BasicBlock pred : phiInst.getAllSource().keySet()) {
                    BasicBlock pcBB = pcMap.get(pred);
                    Operand val = phiInst.getAllSource().get(pred);
                    pcBB.appendBeforeTerminator(new Store(pcBB, val, varAddr));
                }
                phiInst.replacedBy(new Load(bb, phiInst.getDst(), varAddr));
                inst = inst.next;
            }
        }
    }

}
