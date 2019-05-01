package mxcc.backend;


import mxcc.ir.*;
import mxcc.utility.StringHandler;

import java.io.*;
import java.util.*;

public class Translator implements IRVisitor {
    private List<String> asm = new ArrayList<>();
    // Map<localReg, offset for rbp>
    private Map<LocalReg, Integer> stackFrame;
    // Map<alloca, offset for rbp>
    private Map<Alloca, Integer> allocaMap;
    private String[] paramRegs = { "rdi", "rsi", "rdx", "rcx", "r8", "r9" };
    private Map<BasicBlock, String> labelMap = new HashMap<>();


    public Translator() {

    }

    private String asmName(String raw) {
        if (raw.startsWith("@")) {
            return "_" + raw.substring(1);
        }
        if (raw.startsWith("$")) {
            return "__" + raw.substring(1);
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

    private void addExtern() {
        asm.add("extern strcmp");
        asm.add("extern snprintf");
        asm.add("extern __stack_chk_fail");
        asm.add("extern strcpy");
        asm.add("extern malloc");
        asm.add("extern strlen");
        asm.add("extern __isoc99_scanf");
        asm.add("extern puts");
        asm.add("extern strcmp");
        asm.add("extern printf");

    }

    public void visit(Module module) throws IOException {
        asm.add("default rel");
        asm.add("");

//        asm.add("global main");

        for (GlobalReg globalReg : module.globalRegs) {
            asm.add("global " + asmName(globalReg.toString()));
        }

        for (Function func : module.funcs.values()) {
            asm.add("global " + func.getName());
        }

        asm.add("");
        addExtern();

        int counter = 0;
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            BasicBlock bb = func.getStartBB().next;
            while (bb != null) {
                ++counter;
                labelMap.put(bb, "L" + counter);
                bb = bb.next;
            }
        }

        asm.add("");
        asm.add("SECTION .text");
        asm.add("");

        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            asm.add("");
            visit(func);
        }

        asm.add("");
        asm.add("SECTION .data");

        for (StringLiteral stringLiteral : module.stringPool.values()) {
            asm.add("");
            asm.add(asmName(stringLiteral.toString()) + ":");
            String literal = StringHandler.unescape(stringLiteral.getValue());
            addLine("dq", Integer.toString(literal.length()));
            StringBuilder db = new StringBuilder("\t\tdb      ");
            for (int i = 0; i < literal.length(); ++i) {
                Formatter formatter = new Formatter();
                formatter.format("%02XH, ", (int) literal.charAt(i));
                db.append(formatter.toString());
            }
            db.append("00H");
            asm.add(db.toString());
        }

        asm.add("");
        asm.add("SECTION .bss");

        for (GlobalReg globalReg : module.globalRegs) {
            asm.add(asmName(globalReg.toString()) + ":");
            addLine("resb", "8");
        }

        pasteLibFunction();
    }

    public int buildStackFrame(Function func) {
        stackFrame = new HashMap<>();
        allocaMap = new HashMap<>();
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
                if (inst instanceof Alloca) {
                    offset -= 8;
                    allocaMap.put((Alloca) inst, -offset);
                }
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
        asm.add(func.getName() + ":");
        addLine("push", "rbp");
        addLine("mov", "rbp", "rsp");
        if (offset != 0) {
            addLine("sub", "rsp", Integer.toString(-offset));
        }

        int max = func.args.size() < 6 ? func.args.size() : 6;
        for (int i = 0; i < max; ++i) {
            addLine("mov", getMemory(func.args.get(i)), paramRegs[i]);
        }

        if (func.getName().equals("main")) {
            addLine("call", "__globalInit");
        }

        BasicBlock bb = func.getStartBB();
        while (bb != null) {
            visit(bb);
            bb = bb.next;
        }
    }

    public void visit(BasicBlock bb) {
        if (!bb.isEntry()) {
            assert labelMap.containsKey(bb);
            asm.add(labelMap.get(bb) + ":");
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
        addLine("mov", "rax", "rbp");
        assert allocaMap.containsKey(node);
        addLine("sub", "rax", Integer.toString(allocaMap.get(node)));
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
        assert node.getAddr() instanceof LocalReg || node.getAddr() instanceof GlobalReg;
        if (node.getAddr() instanceof LocalReg) {
            addLine("mov", "rdx", getMemory((LocalReg) node.getAddr()));
            addLine("mov", "rax", "qword [rdx]");
        }
        if (node.getAddr() instanceof GlobalReg) {
            addLine("mov", "rax", getOperand(node.getAddr()));
        }
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
            addLine("mov", "rcx", getOperand(node.getRhs()));
            addLine("idiv", "rcx");
            String operand = node.getOp() == BinaryOperation.BinaryOp.DIV ? "rax" : "rdx";
            addLine("mov", getMemory(node.getDst()), operand);
            return;
        }
        if (node.getOp() == BinaryOperation.BinaryOp.LSFT || node.getOp() == BinaryOperation.BinaryOp.RSFT) {
            addLine("mov", "rax", getOperand(node.getLhs()));
            addLine("mov", "rcx", getOperand(node.getRhs()));
            String shift = node.getOp() == BinaryOperation.BinaryOp.LSFT ? "shl" : "sar";
            addLine(shift, "rax", "cl");
            addLine("mov", getMemory(node.getDst()), "rax");
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
        addLine("call", node.getFunc().IRFunc.getName());
        if (offset != 0) {
            addLine("add", "rsp", Integer.toString(offset));
        }
        if (node.getDst() != null) {
            addLine("mov", getMemory(node.getDst()), "rax");
        }
    }

    public void visit(Phi node) {
        // Phi wouldn't appear after SSA destruction
    }

    public void visit(Move node) {
        addLine("mov", "rax", getOperand(node.getSrc()));
        addLine("mov", getMemory(node.getDst()), "rax");
    }

    private String getBBLabel(BasicBlock bb) {
        if (bb.isEntry()) return bb.getParentFunc().getName();
        assert labelMap.containsKey(bb);
        return labelMap.get(bb);
    }

    public void visit(CondBranch node) {
        addLine("mov", "rax", getOperand(node.getCond()));
        addLine("cmp", "rax", "0");
        addLine("jne", getBBLabel(node.getIfTrue()));
        addLine("jmp", getBBLabel(node.getIfFalse()));
    }

    public void visit(DirectBranch node) {
        addLine("jmp", getBBLabel(node.getTarget()));
    }

    public void visit(Return node) {
        if (node.getRetVal() != null) {
            addLine("mov", "rax", getOperand(node.getRetVal()));
        }
        addLine("mov", "rsp", "rbp");
        addLine("pop", "rbp");
        addLine("ret");
    }


    private void pasteLibFunction() throws IOException {
        File file = new File("lib/lib.asm");
        BufferedReader br = new BufferedReader(new FileReader(file));
        String line;
        while ((line = br.readLine()) != null) {
            asm.add(line);
        }
    }

    public void print(PrintStream out) {
        for (String line : asm) {
            out.println(line);
        }
    }

}
