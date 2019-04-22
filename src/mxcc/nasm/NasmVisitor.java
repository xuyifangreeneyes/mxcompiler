package mxcc.nasm;

public interface NasmVisitor {

    void visit(Inst inst);

    void visit(BinOp inst);
    void visit(Cmp inst);
    void visit(Cqo inst);
    void visit(FuncCall inst);
    void visit(Idiv inst);
    void visit(Jmp inst);
    void visit(Mov inst);
    void visit(Movzx inst);
    void visit(Nop inst);
    void visit(Pop inst);
    void visit(Push inst);
    void visit(Ret inst);
    void visit(SetFlag inst);
    void visit(Shift inst);
    void visit(UnOp inst);

}
