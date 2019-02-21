package mxcc.ast;

import mxcc.symbol.FunctionSymbol;
import mxcc.symbol.Scope;

import java.util.List;

public class FunctionDecl extends Decl {
    private FunctionSymbol func;
    private TypeNode retType;
    private List<VariableDecl> paramList;
    private List<Stmt> stmts;

    public FunctionDecl(FunctionSymbol func, TypeNode retType, List<VariableDecl> paramList,
                        List<Stmt> stmts, Scope parent) {
        super(parent);
        this.func = func;
        this.retType = retType;
        this.paramList = paramList;
        this.stmts = stmts;
    }
}
