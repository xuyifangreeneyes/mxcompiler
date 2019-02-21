package mxcc.ast;

import mxcc.symbol.Scope;

import java.util.List;

public class BlockStmt extends Stmt {
    private List<Stmt> stmts;

    public BlockStmt(List<Stmt> stmts, Scope scope) {
        super(scope);
        this.stmts = stmts;
    }

}
