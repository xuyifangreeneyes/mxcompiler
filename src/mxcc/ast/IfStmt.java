package mxcc.ast;

import mxcc.symbol.Scope;

public class IfStmt extends Stmt {
    public final Expr cond;
    public BlockStmt then;
    public BlockStmt otherwise;

    public IfStmt(Expr cond, BlockStmt then, BlockStmt otherwise, Scope scope) {
        super(scope);
        this.cond = cond;
        this.then = then;
        this.otherwise = otherwise;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
