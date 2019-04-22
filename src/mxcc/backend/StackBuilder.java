package mxcc.backend;

import mxcc.nasm.*;

import java.util.LinkedList;

import static mxcc.nasm.CommonInfo.physicalRegMap;

public class StackBuilder implements NasmVisitor {
    private Func func;
    private LinkedList<Inst> oldInstList;
    private LinkedList<Inst> newInstList;

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
                newInstList.add(new BinOp("sub", physicalRegMap.get("rsp"), new Imm(rspOffset)));
            }
            for (Inst inst : oldInstList) {
                visit(inst);
            }
            block.setInstList(newInstList);
        }
    }

    public void visit(Inst inst) {

    }

    public void visit(BinOp inst) {

    }
    public void visit(Cmp inst) {

    }

    public void visit(Cqo inst) {

    }

    public void visit(FuncCall inst) {
        newInstList.add(inst);
        int rspOffset = inst.getRspOffset();
        if (rspOffset != 0) {
            newInstList.add(new BinOp("add", physicalRegMap.get("rsp"), new Imm(rspOffset)));
        }

    }

    public void visit(Idiv inst) {

    }

    public void visit(Jmp inst) {

    }

    public void visit(Mov inst) {

    }

    public void visit(Movzx inst) {

    }

    public void visit(Nop inst) {
        newInstList.add(new BinOp("sub", physicalRegMap.get("rsp"), new Imm(8)));
    }

    public void visit(Pop inst) {

    }

    public void visit(Push inst) {

    }

    public void visit(Ret inst) {
        newInstList.add(new Mov(physicalRegMap.get("rsp"), physicalRegMap.get("rbp")));
        newInstList.add(new Pop(physicalRegMap.get("rbp")));
        newInstList.add(inst);
    }

    public void visit(SetFlag inst) {

    }

    public void visit(Shift inst) {

    }

    public void visit(UnOp inst) {

    }

}
