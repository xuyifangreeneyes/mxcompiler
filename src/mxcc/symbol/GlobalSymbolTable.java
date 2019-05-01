package mxcc.symbol;

public class GlobalSymbolTable extends BaseScope {
    public final static PrimitiveTypeSymbol INT_TYPE = new PrimitiveTypeSymbol("int");
    public final static PrimitiveTypeSymbol BOOL_TYPE = new PrimitiveTypeSymbol("bool");
    public final static PrimitiveTypeSymbol VOID_TYPE = new PrimitiveTypeSymbol("void");
    public final static PrimitiveTypeSymbol NULL_TYPE = new PrimitiveTypeSymbol("null");
    public final static PrimitiveTypeSymbol STRING_TYPE = new PrimitiveTypeSymbol("string");

    public final static FunctionSymbol PRINT
            = new FunctionSymbol("print", VOID_TYPE, null, new VariableSymbol("str", STRING_TYPE));

    public final static FunctionSymbol PRINTLN
            = new FunctionSymbol("println", VOID_TYPE, null, new VariableSymbol("str", STRING_TYPE));

    public final static FunctionSymbol GET_STRING
            = new FunctionSymbol("getString", STRING_TYPE, null);

    public final static FunctionSymbol GET_INT
            = new FunctionSymbol("getInt", INT_TYPE, null);

    public final static FunctionSymbol TO_STRING
            = new FunctionSymbol("toString", STRING_TYPE, null, new VariableSymbol("i", INT_TYPE));

    public final static FunctionSymbol STR_LENGTH
            = new FunctionSymbol("string.length", INT_TYPE, null);

    public final static FunctionSymbol STR_SUBSTRING
            = new FunctionSymbol("string.substring", STRING_TYPE, null, new VariableSymbol("left", INT_TYPE), new VariableSymbol("right", INT_TYPE));

    public final static FunctionSymbol STR_PARSE_INT
            = new FunctionSymbol("string.parseInt", INT_TYPE, null);

    public final static FunctionSymbol STR_ORD
            = new FunctionSymbol("string.ord", INT_TYPE, null, new VariableSymbol("pos", INT_TYPE));

    public final static FunctionSymbol ARRAY_SIZE
            = new FunctionSymbol("array.size", INT_TYPE, null);

    public final static FunctionSymbol STR_ADD
            = new FunctionSymbol("#stringAdd", STRING_TYPE, null, new VariableSymbol("str1", STRING_TYPE), new VariableSymbol("str2", STRING_TYPE));

    public final static FunctionSymbol STR_EQ
            = new FunctionSymbol("#stringEq", BOOL_TYPE, null, new VariableSymbol("str1", STRING_TYPE), new VariableSymbol("str2", STRING_TYPE));

    public final static FunctionSymbol STR_NEQ
            = new FunctionSymbol("#stringNeq", BOOL_TYPE, null, new VariableSymbol("str1", STRING_TYPE), new VariableSymbol("str2", STRING_TYPE));

    public final static FunctionSymbol STR_LT
            = new FunctionSymbol("#stringLt", BOOL_TYPE, null, new VariableSymbol("str1", STRING_TYPE), new VariableSymbol("str2", STRING_TYPE));

    public final static FunctionSymbol STR_GT
            = new FunctionSymbol("#stringGt", BOOL_TYPE, null, new VariableSymbol("str1", STRING_TYPE), new VariableSymbol("str2", STRING_TYPE));

    public final static FunctionSymbol STR_LE
            = new FunctionSymbol("#stringLe", BOOL_TYPE, null, new VariableSymbol("str1", STRING_TYPE), new VariableSymbol("str2", STRING_TYPE));

    public final static FunctionSymbol STR_GE
            = new FunctionSymbol("#stringGe", BOOL_TYPE, null, new VariableSymbol("str1", STRING_TYPE), new VariableSymbol("str2", STRING_TYPE));

    public final static FunctionSymbol PRINT_INT
            = new FunctionSymbol("#printInt", VOID_TYPE, null, new VariableSymbol("num", INT_TYPE));

    public final static FunctionSymbol PRINTLN_INT
            = new FunctionSymbol("#printlnInt", VOID_TYPE, null, new VariableSymbol("num", INT_TYPE));

    private void initTypeSystem() {
        define(INT_TYPE);
        define(BOOL_TYPE);
        define(VOID_TYPE);
        define(STRING_TYPE);

        define(PRINT);
        define(PRINTLN);
        define(GET_STRING);
        define(GET_INT);
        define(TO_STRING);

        define(STR_LENGTH);
        define(STR_SUBSTRING);
        define(STR_PARSE_INT);
        define(STR_ORD);
        define(ARRAY_SIZE);
    }

    public GlobalSymbolTable() {
        super(null);
        initTypeSystem();
    }
    public String getScopeName() { return "global"; }
}
