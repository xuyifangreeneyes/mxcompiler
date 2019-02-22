package mxcc.ast;

import mxcc.symbol.Scope;

public class BreakStmt extends Stmt {
    public BreakStmt(Scope scope) { super(scope); }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
