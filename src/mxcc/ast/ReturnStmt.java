package mxcc.ast;

import mxcc.symbol.Scope;

public class ReturnStmt extends Stmt {
    public final Expr value;

    public ReturnStmt(Expr value, Scope scope) {
        super(scope);
        this.value = value;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
