package mxcc.ast;

import mxcc.symbol.Scope;

public class ContinueStmt extends Stmt {
    public ContinueStmt(Scope scope) { super(scope); }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
