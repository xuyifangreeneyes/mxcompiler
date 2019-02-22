package mxcc.ast;

import mxcc.symbol.Scope;

public class NullLiteral extends Expr {
    public NullLiteral(Scope scope) { super(scope); }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
