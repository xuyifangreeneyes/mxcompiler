package mxcc.ast;

import mxcc.symbol.VariableSymbol;

public class IdentifierExpr extends Expr {
    private String name;
    private VariableSymbol var;
}
