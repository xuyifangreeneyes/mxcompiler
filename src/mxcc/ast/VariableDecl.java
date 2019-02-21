package mxcc.ast;

import mxcc.symbol.Scope;
import mxcc.symbol.VariableSymbol;

public class VariableDecl extends Decl {
    private TypeNode typeNode;
    private VariableSymbol var;
    private Expr init;

    public VariableDecl(TypeNode typeNode, VariableSymbol var, Expr init, Scope scope) {
        super(scope);
        this.typeNode = typeNode;
        this.var = var;
        this.scope = scope;
    }
}
