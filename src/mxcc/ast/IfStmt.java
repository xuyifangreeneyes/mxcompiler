package mxcc.ast;

import mxcc.symbol.Scope;

public class IfStmt extends Stmt {
    public final Expr cond;
    public final Stmt then;
    public final Stmt otherwise;

    public IfStmt(Expr cond, Stmt then, Stmt otherwise, Scope scope) {
        super(scope);
        this.cond = cond;
        this.then = then;
        this.otherwise = otherwise;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
