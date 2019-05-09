package mxcc.ast;

import mxcc.symbol.Scope;

public class ForStmt extends Stmt {
    public final Expr init;
    public final Expr cond;
    public final Expr step;
    public BlockStmt body;

    public ForStmt(Expr init, Expr cond, Expr step, BlockStmt body, Scope scope) {
        super(scope);
        this.init = init;
        this.cond = cond;
        this.step = step;
        this.body = body;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
