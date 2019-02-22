package mxcc.ast;

import mxcc.symbol.FunctionSymbol;
import mxcc.symbol.Scope;

import java.util.List;

public class FunctionDecl extends Decl {
    public final FunctionSymbol func;
    public final TypeNode retType;
    public final List<VariableDecl> paramList;
    public final List<Stmt> stmts;

    public FunctionDecl(FunctionSymbol func, TypeNode retType, List<VariableDecl> paramList,
                        List<Stmt> stmts, Scope parent) {
        super(parent);
        this.func = func;
        this.retType = retType;
        this.paramList = paramList;
        this.stmts = stmts;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }
}
