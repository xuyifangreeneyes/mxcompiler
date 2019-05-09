package mxcc.ast;

import mxcc.symbol.Scope;

public abstract class AstNode {
    public final Scope scope;

    public AstNode(Scope scope) { this.scope = scope; }

    public abstract void accept(AstVisitor visitor);
}
