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

    public Module() {
        PRINT.IRFunc = new Function("print", true);
        PRINTLN.IRFunc = new Function("println", true);
        GET_STRING.IRFunc = new Function("getString", true);
        GET_INT.IRFunc = new Function("getInt", true);
        TO_STRING.IRFunc = new Function("getInt", true);
        STR_LENGTH.IRFunc = new Function("string#length", true);
        STR_SUBSTRING.IRFunc = new Function("string#substring", true);
        STR_PARSE_INT.IRFunc = new Function("string#parseInt", true);
        STR_ORD.IRFunc = new Function("string#ord", true);
        ARRAY_SIZE.IRFunc = new Function("array#size", true);

        STR_ADD.IRFunc = new Function("#stringAdd", true);
        STR_EQ.IRFunc = new Function("#stringEq", true);
        STR_NEQ.IRFunc = new Function("#stringNeq", true);
        STR_LT.IRFunc = new Function("#stringLt", true);
        STR_GT.IRFunc = new Function("#stringGt", true);
        STR_LE.IRFunc = new Function("#stringLe", true);
        STR_GE.IRFunc = new Function("#stringGe", true);

        funcs.put("print", PRINT.IRFunc);
        funcs.put("println", PRINTLN.IRFunc);
        funcs.put("getString", GET_STRING.IRFunc);
        funcs.put("getInt", GET_INT.IRFunc);
        funcs.put("toString", TO_STRING.IRFunc);
        funcs.put("string#length", STR_LENGTH.IRFunc);
        funcs.put("string#substring", STR_SUBSTRING.IRFunc);
        funcs.put("string#parseInt", STR_PARSE_INT.IRFunc);
        funcs.put("string#ord", STR_ORD.IRFunc);
        funcs.put("array#size", ARRAY_SIZE.IRFunc);

        funcs.put("#stringAdd", STR_ADD.IRFunc);
        funcs.put("#stringEq", STR_EQ.IRFunc);
        funcs.put("#stringNeq", STR_NEQ.IRFunc);
        funcs.put("#stringLt", STR_LT.IRFunc);
        funcs.put("#stringGt", STR_GT.IRFunc);
        funcs.put("#stringLe", STR_LE.IRFunc);
        funcs.put("#stringGe", STR_GE.IRFunc);

        funcs.put("#globalInit", new Function("#globalInit", false));
    }

}
