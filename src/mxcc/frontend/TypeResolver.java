package mxcc.frontend;

import mxcc.ast.*;
import mxcc.symbol.ArrayType;
import mxcc.symbol.BaseType;
import mxcc.symbol.Symbol;

public class TypeResolver extends AstBaseVisitor {

    public void visit(Program node) {
        node.decls.forEach(this::visit);
    }

    public void visit(TypeNode node) {
        if (node == null) return;
        Symbol base = node.scope.resolve(node.baseType);
        if (base instanceof BaseType) {
            if (node.dim == 0) node.type = (BaseType) base;
            else node.type = new ArrayType((BaseType) base, node.dim);
        } else {
            throw new RuntimeException("Cannot resolve type");
        }
    }

    public void visit(VariableDecl node) {
        if (node.var == null) return;
        visit(node.typeNode);
        node.var.type = node.typeNode.type;
    }

    public void visit(FunctionDecl node) {
        visit(node.retType);
        node.func.type = node.retType.type;
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
