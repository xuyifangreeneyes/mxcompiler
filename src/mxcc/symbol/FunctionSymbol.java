package mxcc.symbol;

import mxcc.ast.FunctionDecl;
import mxcc.ast.VariableDecl;
import sun.jvm.hotspot.debugger.cdbg.Sym;

import java.util.*;

public class FunctionSymbol extends ScopedSymbol implements Type {
    // include parameters and local variables
    Map<String, Symbol> symbols = new LinkedHashMap<>();

    public FunctionSymbol(String name, Type retType, Scope parent, Symbol... params) {
        super(name, retType, parent);
        for (Symbol param : params) {
            symbols.put(param.name, param);
        }
    }

    public FunctionSymbol(String name, Scope parent) { super(name, parent); }

    public boolean isConstructor() {
        return type == null;
    }

    public List<Type> getParamTypes() {
        List<Type> types = new ArrayList<>();
        if (def == null) {
            for (Symbol symbol : symbols.values())
                types.add(symbol.type);
        } else {
            for (VariableDecl varDecl : ((FunctionDecl) def).paramList)
                types.add(varDecl.var.type);
        }
        return types;
    }

    public Map<String, Symbol> getMembers() { return symbols; }

    public String getName() {
        // need fixing
        return name + "(" + stripBrackets(symbols.keySet().toString())+ ")";
    }

    public boolean isSameType(Type rhs) {
        return this == rhs;
    }
}
