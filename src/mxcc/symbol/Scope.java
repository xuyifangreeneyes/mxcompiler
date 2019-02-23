package mxcc.symbol;

public interface Scope {
    String getScopeName();

    Scope getEnclosingScope();

    void define(Symbol sym);

    Symbol resolve(String name);

}