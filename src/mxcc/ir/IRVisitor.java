package mxcc.ir;

public interface IRVisitor {
//    void visit(Module node);
//    void visit(Function node);
//    void visit(BasicBlock node);

    void visit(Instruction node);

    void visit(Alloca node);
    void visit(Malloc node);
    void visit(Load node);
    void visit(Store node);
    void visit(BinaryOperation node);
    void visit(UnaryOperation ndoe);
    void visit(Call node);
    void visit(Phi node);
    void visit(Move node);

    void visit(CondBranch node);
    void visit(DirectBranch node);
    void visit(Return node);


}
