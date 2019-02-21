package mxcc.ast;

import mxcc.symbol.Scope;

public abstract class Stmt extends AstNode {
    public Stmt(Scope scope) {
        super(scope);
    }
}
