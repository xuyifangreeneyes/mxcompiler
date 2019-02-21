package mxcc.symbol;

public class GlobalScope extends BaseScope {
    public GlobalScope() { super(null); }
    public String getScopeName() { return "global"; }
}
