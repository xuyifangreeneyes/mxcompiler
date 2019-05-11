package mxcc.nasm;

import java.io.*;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.List;

public class NasmPrinter implements NasmVisitor {
    private List<String> code = new ArrayList<>();
    private boolean allocated;

    private void addLine(String inst, String... operands) {
        StringBuilder line = new StringBuilder(String.format("\t\t%-8s", inst));
        for (int i = 0; i < operands.length; ++i) {
            if (i != 0) line.append(", ");
            line.append(operands[i]);
        }
        code.add(line.toString());
    }

    private void pasteLibFunc() throws IOException {
//        File file = new File("lib/lib.asm");
        File file = new File("lib/libO3.asm");
        BufferedReader br = new BufferedReader(new FileReader(file));
        String line;
        while ((line = br.readLine()) != null) {
            code.add(line);
        }
    }

    // Before allocation, dump VirtualReg's name.
    // After allocation, dump VirtualRegs's color.
    private String dump(Var var) {
        if (!allocated) {
            if (var instanceof VirtualReg) {
                return ((VirtualReg) var).getName();
            }
            if (var instanceof Memory) {
                return ((Memory) var).show();
            }
        }
        if (var instanceof VirtualReg) {
//            return ((VirtualReg) var).getName() + "$" + ((VirtualReg) var).getColor();
            return ((VirtualReg) var).getColor();
        }
        return var.toString();
    }

    public NasmPrinter() {

    }

    public void visit(Nasm nasm) throws IOException {
        allocated = nasm.isAllocated();

        code.add("default rel");

        code.add("");
        for (String globalVar : nasm.getGlobalVars()) {
            code.add("global " + globalVar);
        }
        for (Func func : nasm.getFuncs()) {
            code.add("global " + func.getName());
        }
        for (String builtin : nasm.getBuiltins()) {
            code.add("global " + builtin);
        }

        code.add("");
        for (String extern : nasm.getExterns()) {
            code.add("extern " + extern);
        }

        code.add("");
        code.add("SECTION .text");

        for (Func func : nasm.getFuncs()) {
            code.add("");
            visit(func);
        }

        code.add("");
        code.add("SECTION .data");

        for (String label : nasm.getStringLiteralMap().keySet()) {
            code.add("");
            code.add(label + ":");
            String content = nasm.getStringLiteralMap().get(label);
            addLine("dq", Integer.toString(content.length()));
            StringBuilder builder = new StringBuilder("\t\tdb      ");
            for (int i = 0; i < content.length(); ++i) {
                Formatter formatter = new Formatter();
                formatter.format("%02XH, ", (int) content.charAt(i));
                builder.append(formatter.toString());
            }
            builder.append("00H");
            code.add(builder.toString());
        }

        code.add("");
        code.add("SECTION .bss");

        for (String globalVar : nasm.getGlobalVars()) {
            code.add("");
            code.add(globalVar + ":");
            addLine("resb", "8");
        }

        pasteLibFunc();
    }

    public void visit(Func func) {
        for (Block block : func.getBbList()) {
            code.add(block.getName() + ":");
            for (Inst inst : block.getInstList()) {
                visit(inst);
            }
        }
    }

    public void visit(Inst inst) {
        inst.accept(this);
    }

    public void visit(BinOp inst) {
        addLine(inst.getName(), dump(inst.getFirst()), dump(inst.getSecond()));
    }

    public void visit(Cmp inst) {
        addLine("cmp", dump(inst.getLhs()), dump(inst.getRhs()));
    }

    public void visit(Cqo inst) {
//        addLine("cqo");
        addLine("cdq");
    }

    public void visit(FuncCall inst) {
        addLine("call", inst.getFuncName());
    }

    public void visit(Idiv inst) {
//        addLine("idiv", dump(inst.getDivisor()));
        String divisor = dump(inst.getDivisor());
        if (divisor.startsWith("qword")) {
            divisor = divisor.replace("qword", "dword");
        } else {
            switch (divisor) {
                case "rax": case "rcx": case "rdx": case "rbx":
                case "rsp": case "rbp": case "rsi": case "rdi":
                    divisor = divisor.replace("r", "e");
                    break;
                default:
                    divisor = divisor + "d"; break;
            }
        }
        addLine("idiv", divisor);
    }

    public void visit(Jmp inst) {
        addLine(inst.getName(), inst.getTarget().toString());
    }

    public void visit(Mov inst) {
//        System.out.println("==================");
//        if (inst.getDst() instanceof Memory) {
//            System.out.println("dst is mem " + ((Memory) inst.getDst()).show());
//        }
        addLine("mov", dump(inst.getDst()), dump(inst.getSrc()));
    }

    public void visit(Movzx inst) {
        assert inst.getSrc().toString().equals("rax");
        addLine("movzx", dump(inst.getDst()), "al");
    }

    public void visit(Nop inst) {
        addLine("nop");
    }

    public void visit(Pop inst) {
        addLine("pop", dump(inst.getDst()));
    }

    public void visit(Push inst) {
        addLine("push", dump(inst.getSrc()));
    }

    public void visit(Ret inst) {
        addLine("ret");
    }

    public void visit(SetFlag inst) {
        assert inst.getDst().toString().equals("rax");
        addLine(inst.getName(), "al");
    }

    public void visit(Shift inst) {
        String second;
        if (inst.getSecond() instanceof Imm) {
            second = inst.getSecond().toString();
        } else {
            assert inst.getSecond().toString().equals("rcx");
            second = "cl";
        }
        addLine(inst.getName(), dump(inst.getFirst()), second);
    }

    public void visit(UnOp inst) {
        addLine(inst.getName(), dump(inst.getVar()));
    }

    public void print(PrintStream out) {
        for (String line : code) {
            out.println(line);
        }
    }

}
