package mxcc.ast;

import mxcc.symbol.Scope;
import mxcc.symbol.VariableSymbol;
import mxcc.utility.Location;

public class VariableDecl extends Decl {
    public final TypeNode typeNode;
    public String varName;
    public VariableSymbol var;
    public final Expr init;

    public VariableDecl(TypeNode typeNode, VariableSymbol var, Expr init, Scope scope) {
        super(scope);
        this.typeNode = typeNode;
        this.var = var;
        this.init = init;
    }

    public VariableDecl(TypeNode typeNode, String varName, Expr init, Scope scope) {
        super(scope);
        this.typeNode = typeNode;
        this.varName = varName;
        this.init = init;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
