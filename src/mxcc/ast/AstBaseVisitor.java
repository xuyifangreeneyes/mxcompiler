package mxcc.ast;

public class AstBaseVisitor implements AstVisitor {
    public void visit(AstNode node) {
        if (node == null) return;
        node.accept(this);
    }

    public void visit(Program node) {}
    public void visit(TypeNode node) {}

    public void visit(VariableDecl node) {}
    public void visit(FunctionDecl node) {}
    public void visit(ClassDecl node) {}

    public void visit(BlockStmt node) {}
    public void visit(VariableDeclStmt node) {}
    public void visit(IfStmt node) {}
    public void visit(ForStmt node) {}
    public void visit(WhileStmt node) {}
    public void visit(ReturnStmt node) {}
    public void visit(BreakStmt node) {}
    public void visit(ContinueStmt node) {}
    public void visit(EmptyStmt node) {}

    public void visit(BinaryExpr node) {}
    public void visit(UnaryExpr node) {}
    public void visit(FunctionCall node) {}
    public void visit(ArrayAccess node) {}
    public void visit(MemberAccess node) {}
    public void visit(NewExpr node) {}
    public void visit(IdentifierExpr node) {}

    public void visit(IntConst node) {}
    public void visit(BoolConst node) {}
    public void visit(StringConst node) {}
    public void visit(NullLiteral node) {}
}
