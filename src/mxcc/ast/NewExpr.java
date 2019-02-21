package mxcc.ast;

import mxcc.symbol.Type;
import java.util.List;

public class NewExpr extends Expr {
    private Type baseType;
    private List<Expr> dimArgs;
    private int emptyDim;
}
