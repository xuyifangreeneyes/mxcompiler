package mxcc.ast;

import mxcc.symbol.Scope;
import mxcc.symbol.Type;

public class TypeNode extends AstNode {
    private String baseType;
    private int dim;
    private Type type;

    public TypeNode(String baseType, int dim, Scope scope) {
        super(scope);
        this.baseType = baseType;
        this.dim = dim;
    }
}
