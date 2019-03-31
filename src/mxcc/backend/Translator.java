package mxcc.backend;


import mxcc.ir.*;
import mxcc.utility.StringHandler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Translator implements IRVisitor {
    private List<String> asm = new ArrayList<>();
    // Map<localReg, offset for rbp>
    private Map<LocalReg, Integer> stackFrame;
    private String[] paramRegs = { "rdi", "rsi", "rdx", "rcx", "r8", "r9" };

    public Translator() {

    }

    private String asmName(String raw) {
        if (raw.startsWith("@")) {
            return raw.replaceAll("@", "_");
        }
        if (raw.startsWith("#")) {
            if (raw.lastIndexOf("#") != 0) {
                return "_" + raw.replaceAll("#", "_");
            }
            return raw.replaceAll("#", "_");
        }
        if (raw.startsWith("$")) {
            return raw.substring(1);
        }
        assert false;
        return null;
    }

    private void addLine(String inst, String... operands) {
        StringBuilder line = new StringBuilder(String.format("\t\t%-8s", inst));
        for (int i = 0; i < operands.length; ++i) {
            if (i != 0) line.append(", ");
            line.append(operands[i]);
        }
        asm.add(line.toString());
    }

    private String getMemory(LocalReg reg) {
        assert stackFrame.containsKey(reg);
        if (stackFrame.get(reg) < 0) return "qword [rbp" + stackFrame.get(reg) + "]";
        else return "qword [rbp+" + stackFrame.get(reg) + "]";
    }

    private String getOperand(Operand operand) {
        if (operand instanceof IntImmediate) {
            return operand.toString();
        }
        if (operand instanceof LocalReg) {
            return getMemory((LocalReg) operand);
        }
        if (operand instanceof GlobalReg) {
            return "qword [rel " + asmName(operand.toString()) + "]";
        }
        if (operand instanceof StringLiteral) {
            return asmName(operand.toString());
        }
        assert false;
        return null;
    }

    private void writeMain() {
        asm.add("main:");
        addLine("push", "rbp");
        addLine("mov", "rbp", "rsp");
        addLine("call", "_global_init");
        addLine("call", "_main");
        addLine("mov", "rax", "0");
        addLine("pop", "rbp");
        addLine("ret");

    }

    public void visit(Module module) {
        asm.add("default rel");
        asm.add("");

        for (GlobalReg globalReg : module.globalRegs) {
            asm.add("global " + asmName(globalReg.toString()));
        }

        for (Function func : module.funcs.values()) {
            asm.add("global " + asmName(func.getName()));
        }

        asm.add("external malloc");

        asm.add("");
        asm.add("SECTION .text");
        asm.add("");
        writeMain();

        for (Function func : module.funcs.values()) {
            asm.add("");
            visit(func);
        }

        asm.add("");
        asm.add("SECTION .data");

        for (StringLiteral stringLiteral : module.stringPool.values()) {
            asm.add("");
            asm.add(asmName(stringLiteral.toString()) + ":");
            asm.add("\t\tdq\t" + stringLiteral.getValue().length());
            asm.add("\t\tdb\t\"" + StringHandler.unescape(stringLiteral.getValue()) + "\"");
        }
    }

    public int buildStackFrame(Function func) {
        stackFrame = new HashMap<>();
        int offset = 8;
        for (int i = func.args.size() - 1; i >= 6; --i) {
            offset += 8;
            stackFrame.put(func.args.get(i), offset);
        }

        offset = 0;
        int max = func.args.size() < 6 ? func.args.size() : 6;
        for (int i = 0; i < max; ++i) {
            offset -= 8;
            stackFrame.put(func.args.get(i), offset);
        }

        BasicBlock bb = func.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
                LocalReg reg = inst.getDst();
                if (reg != null) {
                    offset -= 8;
                    stackFrame.put(reg, offset);
                }
                inst = inst.next;
            }
            bb = bb.next;
        }

        if (offset % 16 != 0) offset -= 8;
        return offset;
    }

    public void visit(Function func) {
        int offset = buildStackFrame(func);
        asm.add(asmName(func.getName()) + "_entry:");
        addLine("push", "rbp");
        addLine("mov", "rbp", "rsp");
        addLine("sub", "rsp", Integer.toString(offset));

        int max = func.args.size() < 6 ? func.args.size() : 6;
        for (int i = 0; i < max; ++i) {
            addLine("mov", getMemory(func.args.get(i)), paramRegs[i]);
        }

        BasicBlock bb = func.getStartBB();
        while (bb != null) {
            visit(bb);
            bb = bb.next;
        }
    }

    public void visit(BasicBlock bb) {
        if (bb != bb.getParentFunc().getStartBB()) {
            asm.add(asmName(bb.getParentFunc().getName()) + "_" + bb.getName() + ":");
        }
        Instruction inst = bb.getFirstInst();
        while (inst != null) {
            visit(inst);
            inst = inst.next;
        }
    }

    public void visit(Instruction node) {
        node.accept(this);
    }

    public void visit(Alloca node) {
        addLine("mov", "rdi", "8");
        addLine("call" , "malloc");
        addLine("mov", getMemory(node.getDst()), "rax");
    }

    public void visit(Malloc node) {
        String size;
        if (node.getSize() instanceof IntImmediate) {
            size = node.getSize().toString();
        } else {
            assert node.getSize() instanceof LocalReg;
            size = getMemory((LocalReg) node.getSize());
        }
        addLine("mov", "rdi", size);
        addLine("call", "malloc");
        addLine("mov", getMemory(node.getDst()), "rax");
    }

    public void visit(Load node) {
        addLine("mov", "rax", getOperand(node.getAddr()));
        addLine("mov", getMemory(node.getDst()), "rax");
    }

    public void visit(Store node) {
        addLine("mov", "rax", getOperand(node.getVal()));
        if (node.getAddr() instanceof LocalReg) {
            addLine("mov", "rdx", getMemory((LocalReg) node.getAddr()));
            addLine("mov", "qword [rdx]", "rax");
            return;
        }
        if (node.getAddr() instanceof GlobalReg) {
            addLine("mov", getOperand(node.getAddr()), "rax");
            return;
        }
        assert false;
    }

    private boolean isCmp(BinaryOperation node) {
        return node.getOp() == BinaryOperation.BinaryOp.EQ || node.getOp() == BinaryOperation.BinaryOp.NEQ
                || node.getOp() == BinaryOperation.BinaryOp.LT || node.getOp() == BinaryOperation.BinaryOp.GT
                || node.getOp() == BinaryOperation.BinaryOp.LE || node.getOp() == BinaryOperation.BinaryOp.GE;
    }

    private void writeCmp(BinaryOperation node) {
        addLine("mov", "rax", getOperand(node.getLhs()));
        addLine("cmp", "rax", getOperand(node.getRhs()));
        String set = "";
        switch (node.getOp()) {
            case EQ: set = "sete"; break;
            case NEQ: set = "setne"; break;
            case LT: set = "setl"; break;
            case GT: set = "setg"; break;
            case LE: set = "setle"; break;
            case GE: set = "setge"; break;
        }
        addLine(set, "al");
        addLine("movzx","rax", "al");
        addLine("mov", getMemory(node.getDst()), "rax");
    }

    public void visit(BinaryOperation node) {
        if (isCmp(node)) {
            writeCmp(node);
            return;
        }
        if (node.getOp() == BinaryOperation.BinaryOp.DIV || node.getOp() == BinaryOperation.BinaryOp.MOD) {
            addLine("mov", "rax", getOperand(node.getLhs()));
            addLine("cqo");
            addLine("idiv", getOperand(node.getRhs()));
            String operand = node.getOp() == BinaryOperation.BinaryOp.DIV ? "rax" : "rdx";
            addLine("mov", getMemory(node.getDst()), operand);
            return;
        }
        if (node.getOp() == BinaryOperation.BinaryOp.LSFT || node.getOp() == BinaryOperation.BinaryOp.RSFT) {
            addLine("mov", "rax", getOperand(node.getLhs()));
            addLine("mov", "rcx", getOperand(node.getRhs()));
            String shift = node.getOp() == BinaryOperation.BinaryOp.LSFT ? "shl" : "sar";
            addLine(shift, "rax", "cl");
            return;
        }
        String inst = "";
        switch (node.getOp()) {
            case MUL: inst = "imul"; break;
            case ADD: inst = "add"; break;
            case SUB: inst = "sub"; break;
            case BIT_AND: inst = "and"; break;
            case BIT_OR: inst = "or"; break;
            case BIT_XOR: inst = "xor"; break;
        }
        addLine("mov", "rax", getOperand(node.getLhs()));
        addLine(inst, "rax", getOperand(node.getRhs()));
        addLine("mov", getMemory(node.getDst()), "rax");
    }

    public void visit(UnaryOperation node) {
        String inst = "";
        switch(node.getOp()) {
            case INC: inst = "inc"; break;
            case DEC: inst = "dec"; break;
            case NEG: inst = "neg"; break;
            case BIT_NOT: inst = "not"; break;
        }
        addLine("mov", "rax", getOperand(node.getSrc()));
        addLine(inst, "rax");
        addLine("mov", getMemory(node.getDst()), "rax");
    }

    public void visit(Call node) {
        int offset = 0;
        for (int i = node.getArgs().size() - 1; i >= 6; --i) {
            addLine("mov", "rax", getOperand(node.getArgs().get(i)));
            addLine("push", "rax");
            offset += 8;
        }
        int max = node.getArgs().size() < 6 ? node.getArgs().size() : 6;
        for (int i = 0; i < max; ++i) {
            addLine("mov", paramRegs[i], getOperand(node.getArgs().get(i)));
        }
        addLine("call", asmName(node.getFunc().IRFunc.getName()));
        if (offset != 0) {
            addLine("add", "rsp", Integer.toString(offset));
        }
    }

    public void visit(Phi node) {
        // Phi wouldn't appear after SSA destruction
    }

    public void visit(Move node) {
        addLine("mov", "rax", getOperand(node.getSrc()));
        addLine("mov", getMemory(node.getDst()), "rax");
    }

    public void visit(CondBranch node) {

    }

    public void visit(DirectBranch node) {

    }

    public void visit(Return node) {

    }


}
