package mxcc.symbol;

import mxcc.ast.AstNode;

public class Symbol {
    public String name;
    public Type type;
    public AstNode def;

    public Symbol(String name) { this.name = name; }
    public Symbol(String name, Type type) { this(name); this.type = type; }
    public String getName() { return name; }

    public String toString() {
        String s = "";
        if (type != null) return "<" + s + getName() + ":" + type + ">";
        return s + getName();
    }

    public static String stripBrackets(String s) {
        return s.substring(1, s.length() - 1);
    }
}
