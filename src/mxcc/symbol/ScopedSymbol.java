package mxcc.symbol;

import java.util.Map;

public abstract class ScopedSymbol extends Symbol implements Scope {
    private Scope enclosingScope;

    public ScopedSymbol(String name, Type type, Scope enclosingScope) {
        super(name, type);
        this.enclosingScope = enclosingScope;
    }

    public ScopedSymbol(String name, Scope enclosingScope) {
        super(name);
        this.enclosingScope = enclosingScope;
    }

    public Symbol resolve(String name) {
        Symbol s = getMembers().get(name);
        if (s != null) return s;
        if (getEnclosingScope() != null) return getEnclosingScope().resolve(name);
        return null;
    }

    public void define(Symbol sym) {
        if (getMembers().containsKey(sym.name)) {
            throw new RuntimeException("The symbol " + sym.name + " has been declared in the same scope");
        }
        getMembers().put(sym.name, sym);
    }

    public Scope getEnclosingScope() { return enclosingScope; }

    public String getScopeName() { return name; }

    public abstract Map<String, Symbol> getMembers();
}
