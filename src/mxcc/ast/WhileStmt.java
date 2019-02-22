package mxcc.ast;

import mxcc.symbol.Scope;

public class WhileStmt extends Stmt {
    public final Expr cond;
    public final Stmt body;

    public WhileStmt(Expr cond, Stmt body, Scope scope) {
        super(scope);
        this.cond = cond;
        this.body = body;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
