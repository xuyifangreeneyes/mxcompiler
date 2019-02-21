package mxcc.ast;

import mxcc.symbol.Scope;

import java.util.List;

public class Program extends AstNode {
    private List<Decl> decls;

    public Program(List<Decl> decls, Scope scope) { super(scope); this.decls = decls; }
}
