package mxcc.symbol;

public class SymbolTable {
    GlobalScope globals = new GlobalScope();

    public SymbolTable() { initTypeSystem(); }

    private void initTypeSystem() {
        globals.define(new BuiltInTypeSymbol("int"));
        globals.define(new BuiltInTypeSymbol("bool"));
        globals.define(new BuiltInTypeSymbol("void"));
        // TODO: add builtin functions and add string as a builtin class.
    }

    public static Symbol resolveID() {

    }

    public static ClassSymbol getEnclosingClass(Scope s) {
        while (s != null) {
            if (s instanceof ClassSymbol) return (ClassSymbol)s;
            s = s.getEnclosingScope();
        }
        return null;
    }

    public String toString() { return globals.toString(); }
}
