package mxcc.ast;

import mxcc.symbol.Scope;
import mxcc.symbol.VariableSymbol;

public class VariableDecl extends Decl {
    public final TypeNode typeNode;
    public final VariableSymbol var;
    public final Expr init;

    public VariableDecl(TypeNode typeNode, VariableSymbol var, Expr init, Scope scope) {
        super(scope);
        this.typeNode = typeNode;
        this.var = var;
        this.init = init;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
