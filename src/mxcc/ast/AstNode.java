package mxcc.ast;

import mxcc.symbol.Scope;

public abstract class AstNode {
    private Scope scope;

    public AstNode(Scope scope) { this.scope = scope; }
    public Scope getScope() { return scope; }
}
