package mxcc.nasm;

import java.util.*;

import static mxcc.nasm.CommonInfo.physicalRegMap;

public class SpillEditor implements NasmVisitor {

    private Map<VirtualReg, Memory> spillMap = new HashMap<>();
    private List<VirtualReg> newTemps = new ArrayList<>();
    private LinkedList<Inst> oldInstList;
    private LinkedList<Inst> newInstList;
    private int regCounter = 0;

    public SpillEditor(Set<VirtualReg> spilledNodes) {
        for (VirtualReg reg : spilledNodes) {
            spillMap.put(reg, new Memory());
        }
    }

    public List<VirtualReg> visit(Func func) {
        for (Block block : func.getBbList()) {
            oldInstList = block.getInstList();
            newInstList = new LinkedList<>();
            for (Inst inst : oldInstList) {
                visit(inst);
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

    public void visit(BinOp inst) {
        VirtualReg first = needSpill(inst.getFirst());
        VirtualReg second = needSpill(inst.getSecond());
        if (first != null && second != null) {
            // ===================
            // add ar br
            // ======== 1 ========
            // mov tmp [am]
            // add tmp [bm]
            // mov [am] tmp
            // ======== 2 ========
            // mov tmp [bm]
            // add [am] tmp
            // ===================
            // For now I choose 2
            VirtualReg tmp = makeTmpReg();
            newInstList.add(new Mov(tmp, spillMap.get(second)));
            inst.setFirst(spillMap.get(first));
            inst.setSecond(tmp);
            newInstList.add(inst);
        } else if (first != null) {
            if (inst.getSecond() instanceof Memory) {
                // ====================
                // add ar [ ]
                // ====================
                // mov tmp [am]
                // add tmp [ ]
                // mov [am] tmp
                // ====================
                VirtualReg tmp = makeTmpReg();
                newInstList.add(new Mov(tmp, spillMap.get(first)));
                inst.setFirst(tmp);
                newInstList.add(inst);
                newInstList.add(new Mov(spillMap.get(first), tmp));
            } else {
                // ====================
                // add ar br
                // ====================
                // add [am] br
                // ====================
                inst.setFirst(spillMap.get(first));
                newInstList.add(inst);
            }
        } else if (second != null) {
            if (inst.getFirst() instanceof Memory) {
                // ====================
                // add [ ] br
                // ====================
                // mov tmp [bm]
                // add [ ] tmp
                // ====================
                VirtualReg tmp = makeTmpReg();
                newInstList.add(new Mov(tmp, spillMap.get(second)));
                inst.setSecond(tmp);
                newInstList.add(inst);
            } else {
                // ====================
                // add ar br
                // ====================
                // add ar [bm]
                // ====================
                inst.setSecond(spillMap.get(second));
                newInstList.add(inst);
            }
        } else {
            newInstList.add(inst);
        }
    }

    public void visit(Cmp inst) {
        VirtualReg lhs = needSpill(inst.getLhs());
        VirtualReg rhs = needSpill(inst.getRhs());
        if (lhs != null && rhs != null) {
            // ===================
            // cmp ar br
            // ===================
            // mov tmp [bm]
            // cmp [am] tmp
            // ===================
            VirtualReg tmp = makeTmpReg();
            newInstList.add(new Mov(tmp, spillMap.get(rhs)));
            inst.setLhs(spillMap.get(lhs));
            inst.setRhs(tmp);
            newInstList.add(inst);
        } else if (lhs != null) {
            if (inst.getRhs() instanceof Memory) {
                // ===================
                // cmp ar [ ]
                // ===================
                // mov tmp [am]
                // cmp tmp [ ]
                // ===================
                VirtualReg tmp = makeTmpReg();
                newInstList.add(new Mov(tmp, spillMap.get(lhs)));
                inst.setLhs(tmp);
                newInstList.add(inst);
            } else {
                // ===================
                // cmp ar br
                // ===================
                // cmp [am] br
                // ===================
                inst.setLhs(spillMap.get(lhs));
                newInstList.add(inst);
            }
        } else if (rhs != null) {
            if (inst.getLhs() instanceof Memory) {
                // ===================
                // cmp [ ] br
                // ===================
                // mov tmp [bm]
                // cmp [ ] tmp
                // ===================
                VirtualReg tmp = makeTmpReg();
                newInstList.add(new Mov(tmp, spillMap.get(rhs)));
                inst.setRhs(tmp);
                newInstList.add(inst);
            } else {
                // ===================
                // cmp ar br
                // ===================
                // cmp ar [bm]
                // ===================
                inst.setRhs(spillMap.get(rhs));
                newInstList.add(inst);
            }
        } else {
            newInstList.add(inst);
        }
    }

    public void visit(Cqo inst) {
        newInstList.add(inst);
    }

    public void visit(FuncCall inst) {
        newInstList.add(inst);
    }

    public void visit(Idiv inst) {
        VirtualReg divisor = needSpill(inst.getDivisor());
        if (divisor != null) {
            inst.setDivisor(spillMap.get(divisor));
        }
        newInstList.add(inst);
    }

    public void visit(Jmp inst) {
        newInstList.add(inst);
    }

    private void editMemory(Memory memory) {
        if (!memory.isValid() || memory.getLabel() != null) return;
        assert !spillMap.keySet().contains(physicalRegMap.get("rbp"));
        VirtualReg base = memory.getBase();
        VirtualReg index = memory.getIndex();
        assert base != null;
        if (spillMap.keySet().contains(base)) {
            VirtualReg tmp = makeTmpReg();
            newInstList.add(new Mov(tmp, spillMap.get(base)));
            memory.setBase(tmp);
        }
        if (index != null && spillMap.keySet().contains(index)) {
            VirtualReg tmp = makeTmpReg();
            newInstList.add(new Mov(tmp, spillMap.get(index)));
            memory.setIndex(tmp);
        }
    }

    public void visit(Mov inst) {
        VirtualReg dst = needSpill(inst.getDst());
        VirtualReg src = needSpill(inst.getSrc());
        if (dst != null && src != null) {
            // ===================
            // mov ar br
            // ===================
            // mov tmp [bm]
            // mov [am] tmp
            // ===================
            VirtualReg tmp = makeTmpReg();
            newInstList.add(new Mov(tmp, spillMap.get(src)));
            inst.setDst(spillMap.get(dst));
            inst.setSrc(tmp);
            newInstList.add(inst);
        } else {
            if (inst.getDst() instanceof Memory) {
                editMemory((Memory) inst.getDst());
            }
            if (inst.getSrc() instanceof Memory) {
                editMemory((Memory) inst.getSrc());
            }
            if (dst != null) {
                if (inst.getSrc() instanceof Memory) {
                    // ===================
                    // mov ar [ ]
                    // ===================
                    // mov tmp [ ]
                    // mov [am] tmp
                    // ===================
                    VirtualReg tmp = makeTmpReg();
                    inst.setDst(tmp);
                    newInstList.add(inst);
                    newInstList.add(new Mov(spillMap.get(dst), tmp));
                } else {
                    // ===================
                    // mov ar br
                    // ===================
                    // mov [am] br
                    // ===================
                    inst.setDst(spillMap.get(dst));
//                    if (newInstList == null) {
//                        System.out.println("newInstList is null");
//                    }
                    newInstList.add(inst);
                }
            } else if (src != null) {
                if (inst.getDst() instanceof Memory) {
                    // ===================
                    // mov [ ] br
                    // ===================
                    // mov tmp [bm]
                    // mov [ ] tmp
                    // ===================
                    VirtualReg tmp = makeTmpReg();
                    newInstList.add(new Mov(tmp, spillMap.get(src)));
                    inst.setSrc(tmp);
                    newInstList.add(inst);
                } else {
                    // ===================
                    // mov ar br
                    // ===================
                    // mov ar [bm]
                    // ===================
                    inst.setSrc(spillMap.get(src));
                    newInstList.add(inst);
                }
            } else {
                newInstList.add(inst);
            }
        }
    }


    public void visit(Movzx inst) {
        // src is always rax(al)
        assert inst.getSrc() instanceof VirtualReg && physicalRegMap.values().contains(inst.getSrc());
        VirtualReg dst = inst.getDst();
        if (spillMap.keySet().contains(dst)) {
            VirtualReg tmp = makeTmpReg();
            inst.setDst(tmp);
            newInstList.add(inst);
            newInstList.add(new Mov(spillMap.get(dst), tmp));
        } else {
            newInstList.add(inst);
        }
    }

    public void visit(Nop inst) {
        newInstList.add(inst);
    }

    public void visit(Pop inst) {
        // In phase of register allocation, there is no pop.
        newInstList.add(inst);
    }

    public void visit(Push inst) {
        VirtualReg src = needSpill(inst.getSrc());
        if (src != null) {
            inst.setSrc(spillMap.get(src));
        }
        newInstList.add(inst);
    }

    public void visit(Ret inst) {
        newInstList.add(inst);
    }

    public void visit(SetFlag inst) {
        // dst is always rax(al)
        assert physicalRegMap.values().contains(inst.getDst());
        newInstList.add(inst);
    }

    public void visit(Shift inst) {
        // second is imm or rcx(cl)
        assert inst.getSecond() instanceof Imm ||
                (inst.getSecond() instanceof VirtualReg && physicalRegMap.values().contains(inst.getSecond()));
        VirtualReg first = needSpill(inst.getFirst());
        if (first != null) {
            inst.setFirst(spillMap.get(first));
        }
        newInstList.add(inst);
    }

    // inc qword [rel a]
    // this is ok
    public void visit(UnOp inst) {
        VirtualReg var = needSpill(inst.getVar());
        if (var != null) {
            inst.setVar(spillMap.get(var));
        }
        newInstList.add(inst);
    }

}
