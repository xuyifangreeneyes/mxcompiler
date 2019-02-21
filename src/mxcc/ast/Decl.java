package mxcc.ast;

import mxcc.symbol.Scope;

public abstract class Decl extends AstNode {
    public Decl(Scope scope) { super(scope); }
}
