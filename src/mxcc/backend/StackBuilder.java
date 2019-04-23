package mxcc.backend;

import mxcc.nasm.*;

import java.util.LinkedList;

import static mxcc.nasm.CommonInfo.physicalRegMap;

public class StackBuilder implements NasmVisitor {
    private Func func;
    private LinkedList<Inst> oldInstList;
    private LinkedList<Inst> newInstList;
    private int rbpOffset = 0;

    public static void visit(Nasm nasm) {
        for (Func func : nasm.getFuncs()) {
            StackBuilder builder = new StackBuilder(func);
            builder.work();
        }
    }

    private StackBuilder(Func func) {
        this.func = func;
    }

    private void work() {
        for (Block block : func.getBbList()) {
            oldInstList = block.getInstList();
            newInstList = new LinkedList<>();
            if (block.isEntry()) {
                int rspOffset = func.getRspOffset();
                if (rspOffset % 16 != 0) {
                    rspOffset += 8;
                }
                newInstList.add(new Push(physicalRegMap.get("rbp")));
                newInstList.add(new Mov(physicalRegMap.get("rbp"), physicalRegMap.get("rsp")));
                if (rspOffset != 0) {
                    newInstList.add(new BinOp("sub", physicalRegMap.get("rsp"), new Imm(rspOffset)));
                }
            }
            for (Inst inst : oldInstList) {
                visit(inst);
            }
            block.setInstList(newInstList);
        }
    }

    private void settle(Var var) {
        if (!(var instanceof Memory)) return;
        Memory memory = (Memory) var;
        if (memory.isValid()) return;
        rbpOffset -= 8;
        memory.settleOnStack(rbpOffset);
    }

    public void visit(Inst inst) {
        inst.accept(this);
    }

    public void visit(BinOp inst) {
        settle(inst.getFirst());
        settle(inst.getSecond());
        newInstList.add(inst);
    }
    public void visit(Cmp inst) {
        settle(inst.getLhs());
        settle(inst.getRhs());
        newInstList.add(inst);
    }

    public void visit(Cqo inst) {
        newInstList.add(inst);
    }

    public void visit(FuncCall inst) {
        newInstList.add(inst);
        int rspOffset = inst.getRspOffset();
        if (rspOffset != 0) {
            newInstList.add(new BinOp("add", physicalRegMap.get("rsp"), new Imm(rspOffset)));
        }

    }

    public void visit(Idiv inst) {
        settle(inst.getDivisor());
        newInstList.add(inst);
    }

    public void visit(Jmp inst) {
        newInstList.add(inst);
    }

    public void visit(Mov inst) {
        settle(inst.getDst());
        settle(inst.getSrc());
        newInstList.add(inst);
    }

    public void visit(Movzx inst) {
        // src is always rax(al)
        newInstList.add(inst);
    }

    public void visit(Nop inst) {
        newInstList.add(new BinOp("sub", physicalRegMap.get("rsp"), new Imm(8)));
    }

    public void visit(Pop inst) {
        newInstList.add(inst);
    }

    public void visit(Push inst) {
        settle(inst.getSrc());
        newInstList.add(inst);
    }

    public void visit(Ret inst) {
        newInstList.add(new Mov(physicalRegMap.get("rsp"), physicalRegMap.get("rbp")));
        newInstList.add(new Pop(physicalRegMap.get("rbp")));
        newInstList.add(inst);
    }

    public void visit(SetFlag inst) {
        // dst is always rax(al)
        newInstList.add(inst);
    }

    public void visit(Shift inst) {
        // second is imm or rcx(cl)
        settle(inst.getFirst());
        newInstList.add(inst);
    }

    public void visit(UnOp inst) {
        settle(inst.getVar());
        newInstList.add(inst);
    }

}
