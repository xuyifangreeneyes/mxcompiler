package mxcc.ast;

import mxcc.symbol.Scope;

import java.util.List;

public class BlockStmt extends Stmt {
    public final List<Stmt> stmts;

    public BlockStmt(List<Stmt> stmts, Scope scope) {
        super(scope);
        this.stmts = stmts;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
