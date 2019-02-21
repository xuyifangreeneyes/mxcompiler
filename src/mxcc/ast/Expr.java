package mxcc.ast;

import mxcc.symbol.Scope;
import mxcc.symbol.Type;

public class Expr extends Stmt {
    private Type type;

    public Expr(Scope scope) { super(scope); }
}
