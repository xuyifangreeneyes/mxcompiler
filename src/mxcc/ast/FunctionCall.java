package mxcc.ast;

import mxcc.symbol.FunctionSymbol;
import mxcc.symbol.Scope;

import java.util.List;

public class FunctionCall extends Expr {
    public FunctionSymbol func;
    public final Expr caller;
    public final List<Expr> args;

    public FunctionCall(Expr caller, List<Expr> args, Scope scope) {
        super(scope);
        this.caller = caller;
        this.args = args;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
