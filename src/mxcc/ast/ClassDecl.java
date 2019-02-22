package mxcc.ast;

import mxcc.symbol.ClassSymbol;
import mxcc.symbol.Scope;

import java.util.List;

public class ClassDecl extends Decl {
    public final ClassSymbol classSymbol;
    public final List<Decl> decls;

    public ClassDecl(ClassSymbol classSymbol, List<Decl> decls, Scope scope) {
        super(scope);
        this.classSymbol = classSymbol;
        this.decls = decls;
    }

    public void accept(AstVisitor visitor) {
        visitor.visit(this);
    }

}
