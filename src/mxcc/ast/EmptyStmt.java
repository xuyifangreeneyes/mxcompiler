package mxcc.ast;

import mxcc.symbol.Scope;

public class EmptyStmt extends Stmt {
    public EmptyStmt(Scope scope) { super(scope); }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
