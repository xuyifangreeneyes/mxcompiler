package mxcc.ast;

import mxcc.symbol.Scope;
import mxcc.symbol.Type;

public abstract class Expr extends Stmt {
    public Type type;
    public boolean isLvalue;

    public Expr(Scope scope) { super(scope); }
}
