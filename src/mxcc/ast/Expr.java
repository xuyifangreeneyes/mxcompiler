package mxcc.ast;

import mxcc.ir.BasicBlock;
import mxcc.ir.Operand;
import mxcc.symbol.Scope;
import mxcc.symbol.Type;

public abstract class Expr extends Stmt {
    public Type type;
    public boolean isLvalue;

    public BasicBlock ifTrueBB;
    public BasicBlock ifFalseBB;

    public Operand val;

    public Expr(Scope scope) { super(scope); }
}
