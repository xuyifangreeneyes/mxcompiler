package mxcc.symbol;

import mxcc.ir.Register;

public class VariableSymbol extends Symbol {
    public Register reg;

    public VariableSymbol(String name, Type type) { super(name, type); }


}
