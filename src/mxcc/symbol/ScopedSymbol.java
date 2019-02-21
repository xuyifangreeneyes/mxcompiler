package mxcc.symbol;

import java.util.Map;

public abstract class ScopedSymbol extends Symbol implements Scope {
    Scope enclosingScope;

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
            // TODO: throw a compile error
        }
        getMembers().put(sym.name, sym);
        sym.scope = this;
    }

    public Scope getEnclosingScope() { return enclosingScope; }

    public String getScopeName() { return name; }

    public abstract Map<String, Symbol> getMembers();
}
