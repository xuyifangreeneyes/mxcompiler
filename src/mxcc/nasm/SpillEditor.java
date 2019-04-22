package mxcc.nasm;

import java.util.*;

import static mxcc.nasm.CommonInfo.physicalRegMap;

public class SpillEditor implements NasmVisitor {

    private Map<VirtualReg, Memory> spillMap = new HashMap<>();
    private List<VirtualReg> newTemps = new ArrayList<>();
    private Inst loadInst;
    private Inst storeInst;
    private int regCounter = 0;

    public SpillEditor(Set<VirtualReg> spilledNodes) {
        for (VirtualReg reg : spilledNodes) {
            spillMap.put(reg, new Memory());
        }
    }

    public List<VirtualReg> visit(Func func) {
        for (Block block : func.getBbList()) {
            LinkedList<Inst> oldInstList = block.getInstList();
            LinkedList<Inst> newInstList = new LinkedList<>();
            for (Inst inst : oldInstList) {
                loadInst = null;
                storeInst = null;
                visit(inst);
                if (loadInst != null) {
                    newInstList.add(loadInst);
                }
                newInstList.add(inst);
                if (storeInst != null) {
                    newInstList.add(storeInst);
                }
            }
            block.setInstList(newInstList);
        }
        return newTemps;
    }

    public void visit(Inst inst) {
        inst.accept(this);
    }

    private VirtualReg makeTmpReg() {
        ++regCounter;
        VirtualReg tmp = new VirtualReg("%tmp_" + regCounter, true);
        newTemps.add(tmp);
        return tmp;
    }

    private VirtualReg needSpill(Var var) {
        if (var instanceof VirtualReg && spillMap.keySet().contains(var)) {
            return (VirtualReg) var;
        }
        return null;
    }

    // ===================
    // add [am] [bm]
    // ======== 1 ========
    // mov ar [am]
    // add ar [bm]
    // mov [am] ar
    // ======== 2 ========
    // mov br [bm]
    // add [am] br
    // ===================
    // For now I choose 2

    public void visit(BinOp inst) {
        VirtualReg first = needSpill(inst.getFirst());
        VirtualReg second = needSpill(inst.getSecond());
        if (first != null && second != null) {
            VirtualReg tmp = makeTmpReg();
            loadInst = new Mov(tmp, spillMap.get(second));
            inst.setFirst(spillMap.get(first));
            inst.setSecond(tmp);
        } else if (first != null) {
            inst.setFirst(spillMap.get(first));
        } else if (second != null) {
            inst.setSecond(spillMap.get(second));
        }
    }

    // ===================
    // cmp [am] [bm]
    // ===================
    // mov br [bm]
    // cmp [am] br
    // ===================

    public void visit(Cmp inst) {
        VirtualReg lhs = needSpill(inst.getLhs());
        VirtualReg rhs = needSpill(inst.getRhs());
        if (lhs != null && rhs != null) {
            VirtualReg tmp = makeTmpReg();
            loadInst = new Mov(tmp, spillMap.get(rhs));
            inst.setLhs(spillMap.get(lhs));
            inst.setRhs(tmp);
        } else if (lhs != null) {
            inst.setLhs(spillMap.get(lhs));
        } else if (rhs != null) {
            inst.setRhs(spillMap.get(rhs));
        }
    }

    public void visit(Cqo inst) {

    }

    public void visit(FuncCall inst) {

    }

    public void visit(Idiv inst) {
        VirtualReg divisor = needSpill(inst.getDivisor());
        if (divisor != null) {
            inst.setDivisor(spillMap.get(divisor));
        }
    }

    public void visit(Jmp inst) {

    }

    // ===================
    // mov [am] [bm]
    // ===================
    // mov br [bm]
    // mov [am] br
    // ===================

    public void visit(Mov inst) {
        VirtualReg dst = needSpill(inst.getDst());
        VirtualReg src = needSpill(inst.getSrc());
        if (dst != null && src != null) {
            VirtualReg tmp = makeTmpReg();
            loadInst = new Mov(tmp, spillMap.get(src));
            inst.setDst(spillMap.get(dst));
            inst.setSrc(tmp);
        } else if (dst != null) {
            inst.setDst(spillMap.get(dst));
        } else if (src != null) {
            inst.setSrc(spillMap.get(src));
        }
    }

    public void visit(Movzx inst) {
        // src is always rax(al)
        assert inst.getSrc() instanceof VirtualReg && physicalRegMap.values().contains(inst.getSrc());
        VirtualReg dst = inst.getDst();
        if (spillMap.keySet().contains(dst)) {
            VirtualReg tmp = makeTmpReg();
            inst.setDst(tmp);
            storeInst = new Mov(spillMap.get(dst), tmp);
        }
    }

    public void visit(Nop inst) {

    }

    public void visit(Pop inst) {
        // In phase of register allocation, there is no pop.
    }

    public void visit(Push inst) {
        VirtualReg src = needSpill(inst.getSrc());
        if (src != null) {
            inst.setSrc(spillMap.get(src));
        }
    }

    public void visit(Ret inst) {

    }

    public void visit(SetFlag inst) {
        // dst is always rax(al)
        assert physicalRegMap.values().contains(inst.getDst());
    }

    public void visit(Shift inst) {
        // second is imm or rcx(cl)
        assert inst.getSecond() instanceof Imm ||
                (inst.getSecond() instanceof VirtualReg && physicalRegMap.values().contains(inst.getSecond()));
        VirtualReg first = needSpill(inst.getFirst());
        if (first != null) {
            inst.setFirst(spillMap.get(first));
        }
    }

    // inc qword [rel a]
    // this is ok
    public void visit(UnOp inst) {
        VirtualReg var = needSpill(inst.getVar());
        if (var != null) {
            inst.setVar(spillMap.get(var));
        }
    }

}
