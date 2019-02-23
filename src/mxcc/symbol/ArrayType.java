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

    public boolean isSameType(Type type) {
        if (!(type instanceof ArrayType)) return false;
        ArrayType arrayType = (ArrayType) type;
        return baseType.isSameType(arrayType.baseType) && dim == arrayType.dim;
    }
}
