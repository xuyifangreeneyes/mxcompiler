package mxcc.symbol;

public class ArrayType implements Type {
    private BaseType baseType;
    private int dim;

    public ArrayType(BaseType baseType, int dim) {
        this.baseType = baseType;
        this.dim = dim;
    }

    public String getName() {
        StringBuilder name = new StringBuilder(baseType.getName());
        for (int i = 0; i < dim; ++i) {
            name.append("[]");
        }
        return name.toString();
    }
}
