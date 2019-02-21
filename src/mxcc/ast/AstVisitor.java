package mxcc.ast;

public interface AstVisitor<T> {
    T visit(AstNode node);
    T visit(Program node);
    T visit(Stmt node);
    T visit(Decl node);

}
