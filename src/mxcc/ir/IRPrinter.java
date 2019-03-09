package mxcc.ir;

import java.io.PrintStream;
import java.util.List;

import static jdk.nashorn.internal.objects.NativeString.toLowerCase;

public class IRPrinter implements IRVisitor {
    private PrintStream out;
    private String indent = "";

    public IRPrinter(PrintStream out) {
        this.out = out;
    }

    private void addIndent() {
        indent += "\t";
    }

    private void subIndent() {
        indent = indent.substring(0, indent.length() - 1);
    }

    private void println(String s) {
        this.out.println(indent + s);
    }

    private void print(String s) {
        this.out.print(indent + s);
    }

    public void visit(Module node) {
        for (GlobalReg globalReg : node.globalRegs) {
            println(globalReg.toString());
            out.println();
        }
        for (StringLiteral stringLiteral : node.stringPool.values()) {
            println(stringLiteral.toString() + " \"" + stringLiteral.getValue() + "\"");
            out.println();
        }
        for (Function function : node.funcs.values()) {
            visit(function);
            out.println();
        }
    }

    public void visit(Function node) {
        if (node.isBuiltin()) {
            out.println(node.getName());
            return;
        }
        StringBuilder funcSignature = new StringBuilder(node.getName() + " ( ");
        for (LocalReg arg : node.args) {
            funcSignature.append(arg).append(" ");
        }
        funcSignature.append(")");
        print(funcSignature.toString());
        println(" {");
        BasicBlock curBB = node.getStartBB();
        while (curBB != null) {
            visit(curBB);
            out.println();
            curBB = curBB.next;
        }
        println("}");
    }

    public void visit(BasicBlock node) {
        println("<" + node.getLabel() + "> " + node.getName());
        addIndent();
        Instruction curInst = node.getFirstInst();
        while (curInst != null) {
            visit(curInst);
            curInst = curInst.next;
        }
        subIndent();
    }

    public void visit(Instruction node) {
        node.accept(this);
    }

    public void visit(Alloca node) {
        println(node.getDst() + " = alloca " + node.getSize());
    }

    public void visit(Malloc node) {
        println(node.getDst() + " = malloc " + node.getSize());
    }

    public void visit(Load node) {
        println(node.getDst() + " = load " + node.getAddr());
    }

    public void visit(Store node) {
        println("store " + node.getVal() + " " + node.getAddr());
    }

    public void visit(BinaryOperation node) {
        println(node.getDst() + " = " + toLowerCase(node.getOp()) + " " + node.getLhs() + " " + node.getRhs());
    }

    public void visit(UnaryOperation node) {
        println(node.getDst() + " = " + toLowerCase(node.getOp()) + " " + node.getSrc());
    }

    public void visit(Call node) {
        StringBuilder funcCall = new StringBuilder();
        if (node.getDst() != null) {
            funcCall.append(node.getDst()).append(" = ");
        }
        funcCall.append(node.getName()).append(" ( ");
        for (Operand arg : node.getArgs()) {
            funcCall.append(arg).append(" ");
        }
        funcCall.append(")");
        println(funcCall.toString());
    }

    public void visit(CondBranch node) {
        println("br " + node.getCond() + " <" + node.getIfTrue().getLabel() + "> <" + node.getIfFalse().getLabel() + ">");
    }

    public void visit(DirectBranch node) {
        println("br <" + node.getTarget().getLabel() + ">");
    }

    public void visit(Return node) {
        StringBuilder ret = new StringBuilder("ret ");
        if (node.getRetVal() != null) ret.append(node.getRetVal());
        println(ret.toString());
    }
}
