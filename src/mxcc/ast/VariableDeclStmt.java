package mxcc.ast;

import mxcc.symbol.Scope;

public class VariableDeclStmt extends Stmt {
    public final VariableDecl decl;

    public VariableDeclStmt(VariableDecl decl, Scope scope) {
        super(scope);
        this.decl = decl;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
