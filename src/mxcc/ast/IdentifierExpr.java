package mxcc.ast;

import mxcc.symbol.Scope;
import mxcc.symbol.VariableSymbol;

public class IdentifierExpr extends Expr {
    public final String name;
    public VariableSymbol var;

    public IdentifierExpr(String name, Scope scope) {
        super(scope);
        this.name = name;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
