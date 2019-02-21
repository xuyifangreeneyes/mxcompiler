package mxcc.symbol;

import sun.jvm.hotspot.debugger.cdbg.Sym;

import java.util.LinkedHashMap;
import java.util.Map;

public class ClassSymbol extends ScopedSymbol implements Scope, BaseType {
    public Map<String, Symbol> members = new LinkedHashMap<>();

    public ClassSymbol(String name, Scope enclosingScope) {
        super(name, enclosingScope);
    }

    public Symbol resolveMember(String name) {
        return members.get(name);
    }

    public Map<String, Symbol> getMembers() { return members; }

    public String toString() {
        return "class " + name + ":{" + stripBrackets(members.keySet().toString()) + "}";
    }
}
