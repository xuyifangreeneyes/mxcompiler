package mxcc.ast;

import mxcc.symbol.Scope;
import mxcc.symbol.Type;

public class TypeNode extends AstNode {
    public final String baseType;
    public final int dim;
    public Type type;

    public TypeNode(String baseType, int dim, Scope scope) {
        super(scope);
        this.baseType = baseType;
        this.dim = dim;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
