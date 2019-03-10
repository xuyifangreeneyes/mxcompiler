package mxcc.ir;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import static mxcc.symbol.GlobalSymbolTable.*;

public class Module {
    // map ? array ?
    public Map<String, Function> funcs = new LinkedHashMap<>();
    public Map<String, StringLiteral> stringPool = new LinkedHashMap<>();
    public List<GlobalReg> globalRegs = new ArrayList<>();

    public void defineFunction(Function function) {
        funcs.put(function.getName(), function);
    }

    public Module() {
        PRINT.IRFunc = new Function("print", true);
        PRINTLN.IRFunc = new Function("println", true);
        GET_STRING.IRFunc = new Function("getString", true);
        GET_INT.IRFunc = new Function("getInt", true);
        TO_STRING.IRFunc = new Function("toString", true);
        STR_LENGTH.IRFunc = new Function("string#length", true);
        STR_SUBSTRING.IRFunc = new Function("string#substring", true);
        STR_PARSE_INT.IRFunc = new Function("string#parseInt", true);
        STR_ORD.IRFunc = new Function("string#ord", true);
        ARRAY_SIZE.IRFunc = new Function("array#size", true);

        STR_ADD.IRFunc = new Function("string#add", true);
        STR_EQ.IRFunc = new Function("string#eq", true);
        STR_NEQ.IRFunc = new Function("string#neq", true);
        STR_LT.IRFunc = new Function("string#lt", true);
        STR_GT.IRFunc = new Function("string#gt", true);
        STR_LE.IRFunc = new Function("string#le", true);
        STR_GE.IRFunc = new Function("string#ge", true);

        defineFunction(PRINT.IRFunc);
        defineFunction(PRINTLN.IRFunc);
        defineFunction(GET_STRING.IRFunc);
        defineFunction(GET_INT.IRFunc);
        defineFunction(TO_STRING.IRFunc);
        defineFunction(STR_LENGTH.IRFunc);
        defineFunction(STR_SUBSTRING.IRFunc);
        defineFunction(STR_PARSE_INT.IRFunc);
        defineFunction(STR_ORD.IRFunc);
        defineFunction(ARRAY_SIZE.IRFunc);

        defineFunction(STR_ADD.IRFunc);
        defineFunction(STR_EQ.IRFunc);
        defineFunction(STR_NEQ.IRFunc);
        defineFunction(STR_LT.IRFunc);
        defineFunction(STR_GT.IRFunc);
        defineFunction(STR_LE.IRFunc);
        defineFunction(STR_GE.IRFunc);

        defineFunction(new Function("global#init", false));
    }

}
