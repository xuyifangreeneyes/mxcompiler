package mxcc.ast;

import java.util.List;

public class FunctionCall extends Expr {
    private Expr caller;
    private List<Expr> args;
}
