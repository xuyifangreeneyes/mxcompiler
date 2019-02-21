package mxcc.symbol;

public class ArrayType implements Type {
    private BaseType baseType;
    private int dim;

    public String getName() {
        String name = baseType.getName();
        for (int i = 0; i < dim; ++i) {
            name += "[]";
        }
        return name;
    }
}
