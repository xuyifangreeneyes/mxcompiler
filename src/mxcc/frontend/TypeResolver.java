package mxcc.frontend;

import mxcc.ast.*;
import mxcc.symbol.ArrayType;
import mxcc.symbol.BaseType;
import mxcc.symbol.Scope;
import mxcc.symbol.Symbol;

public class TypeResolver extends AstBaseVisitor {

    private Scope globalScope;

    public void visit(Program node) {
        globalScope = node.scope;
        node.decls.forEach(this::visit);
    }

    public void visit(TypeNode node) {
        if (node == null) return;
        Symbol base = globalScope.resolve(node.baseType);
        if (base instanceof BaseType) {
            if (node.dim == 0) node.type = (BaseType) base;
            else node.type = new ArrayType((BaseType) base, node.dim);
        } else {
            throw new RuntimeException("Cannot resolve type " + node.baseType + " " + node.dim);
        }
    }

    public void visit(VariableDecl node) {
        if (node.var == null) return;
        visit(node.typeNode);
        node.var.type = node.typeNode.type;
    }

    public void visit(FunctionDecl node) {
        visit(node.retType);
        if (node.retType != null) node.func.type = node.retType.type;
        node.paramList.forEach(this::visit);
        node.stmts.forEach(this::visit);
    }

    public void visit(ClassDecl node) {
        node.decls.forEach(this::visit);
    }

    public void visit(BlockStmt node) {
        node.stmts.forEach(this::visit);
    }

    public void visit(VariableDeclStmt node) {
        visit(node.decl);
    }

    public void visit(IfStmt node) {
        visit(node.then);
        visit(node.otherwise);
    }

    public void visit(ForStmt node) {
        visit(node.body);
    }

    public void visit(WhileStmt node) {
        visit(node.body);
    }

}
