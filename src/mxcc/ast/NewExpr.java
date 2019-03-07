package mxcc.ast;

import mxcc.symbol.Scope;
import java.util.List;

public class NewExpr extends Expr {
    public final String baseType;
    public final List<Expr> dimArgs;
    public final int dim;

    public NewExpr(String baseType, List<Expr> dimArgs, int dim, Scope scope) {
        super(scope);
        this.baseType = baseType;
        this.dimArgs = dimArgs;
        this.dim = dim;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
