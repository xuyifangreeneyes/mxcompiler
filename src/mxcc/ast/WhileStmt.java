package mxcc.ast;

import mxcc.symbol.Scope;

public class WhileStmt extends Stmt {
    public final Expr cond;
    public BlockStmt body;

    public WhileStmt(Expr cond, BlockStmt body, Scope scope) {
        super(scope);
        this.cond = cond;
        this.body = body;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
