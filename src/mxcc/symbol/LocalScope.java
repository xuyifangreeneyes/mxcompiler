package mxcc.symbol;

public class LocalScope extends BaseScope {
    public LocalScope(Scope scope) { super(scope); }
    public String getScopeName() { return "local"; }
}
