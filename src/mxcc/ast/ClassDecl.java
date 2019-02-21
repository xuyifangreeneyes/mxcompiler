package mxcc.ast;

import mxcc.symbol.ClassSymbol;
import mxcc.symbol.Scope;

import java.util.List;

public class ClassDecl extends Decl {
    private ClassSymbol classSymbol;
    private List<Decl> decls;

    public ClassDecl(ClassSymbol classSymbol, List<Decl> decls, Scope scope) {
        super(scope);
        this.classSymbol = classSymbol;
        this.decls = decls;
    }
}
