package mxcc.symbol;

import sun.jvm.hotspot.debugger.cdbg.Sym;

import java.util.Map;
import java.util.LinkedHashMap;

public class FunctionSymbol extends ScopedSymbol {
    Map<String, Symbol> orderedArgs = new LinkedHashMap<>();

    public FunctionSymbol(String name, Type retType, Scope parent) {
        super(name, retType, parent);
    }

    public FunctionSymbol(String name, Scope parent) { super(name, parent); }

    public Map<String, Symbol> getMembers() { return orderedArgs; }

    public String getName() {
        return name + "(" + stripBrackets(orderedArgs.keySet().toString())+ ")";
    }

}
