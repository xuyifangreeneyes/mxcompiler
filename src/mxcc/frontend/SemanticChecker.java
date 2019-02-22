package mxcc.frontend;

import mxcc.ast.*;
import mxcc.symbol.ArrayType;
import mxcc.symbol.BaseType;
import mxcc.symbol.Scope;
import mxcc.symbol.Symbol;

public class SemanticChecker extends AstBaseVisitor {
    private Scope currentScope;

    public void check(AstNode node) {
        if (node == null) return;
        node.accept(this);
    }

    public void visit(Program node) {
        node.decls.forEach(this::check);
    }

    public void visit(TypeNode node) {
        currentScope = node.scope;
        Symbol base = currentScope.resolve(node.baseType);
        if (base instanceof BaseType) {
            if (node.dim == 0) node.type = (BaseType) base;
            else node.type = new ArrayType((BaseType) base, node.dim);
        } else {
            throw new RuntimeException("Cannot resolve type");
        }
    }

    public void visit(VariableDecl node) {
        check(node.typeNode);
        node.var.type = node.typeNode.type;
    }

    public void visit(FunctionDecl node) {
        check(node.retType);
        node.paramList.forEach(this::check);
        node.stmts.forEach(this::check);
    }

    public void visit(ClassDecl node) {
        node.decls.forEach(this::check);
    }

    
}
