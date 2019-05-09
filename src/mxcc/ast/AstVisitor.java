package mxcc.ast;

public interface AstVisitor {
    void visit(AstNode node);

    void visit(Program node);
    void visit(TypeNode node);

    void visit(VariableDecl node);
    void visit(FunctionDecl node);
    void visit(ClassDecl node);

    void visit(BlockStmt node);
    void visit(VariableDeclStmt node);
    void visit(IfStmt node);
    void visit(ForStmt node);
    void visit(WhileStmt node);
    void visit(ReturnStmt node);
    void visit(BreakStmt node);
    void visit(ContinueStmt node);
    void visit(EmptyStmt node);

    void visit(BinaryExpr node);
    void visit(UnaryExpr node);
    void visit(FunctionCall node);
    void visit(ArrayAccess node);
    void visit(MemberAccess node);
    void visit(NewExpr node);
    void visit(IdentifierExpr node);

    void visit(IntConst node);
    void visit(BoolConst node);
    void visit(StringConst node);
    void visit(NullLiteral node);
}
