package mxcc.symbol;

public class PrimitiveTypeSymbol extends Symbol implements BaseType {
    public PrimitiveTypeSymbol(String name) { super(name); }

    public boolean isSameType(Type type) {
        return this == type;
    }
}
