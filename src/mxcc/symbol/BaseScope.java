package mxcc.symbol;

import java.util.Map;
import java.util.LinkedHashMap;

public abstract class BaseScope implements Scope {
    Scope enclosingScope;
    Map<String, Symbol> symbols = new LinkedHashMap<>();

    public BaseScope(Scope parent) { this.enclosingScope = parent; }

    public Symbol resolve(String name) {
        Symbol s = symbols.get(name);
        if (s != null) return s;
        if (getEnclosingScope() != null) return getEnclosingScope().resolve(name);
        return null;
    }

    public void define(Symbol sym) {
        if (symbols.containsKey(sym.name)) {
            // TODO: throw a compile error
        }
        symbols.put(sym.name, sym);
        sym.scope = this;
    }

    public Scope getEnclosingScope() { return enclosingScope; }

    public String toString() { return symbols.keySet().toString(); }
}
