package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Nasm {
    private List<String> globalVars;
    private Map<String, String> stringLiteralMap;

    private List<String> builtins = new ArrayList<>();
    private List<String> externs = new ArrayList<>();

    private List<Func> funcs = new ArrayList<>();

    private void addExtern() {
        externs.add("strcmp");
        externs.add("snprintf");
        externs.add("__stack_chk_fail");
        externs.add("strcpy");
        externs.add("malloc");
        externs.add("strlen");
        externs.add("__isoc99_scanf");
        externs.add("puts");
        externs.add("strcmp");
        externs.add("printf");
    }

    public Nasm() {
        addExtern();
    }

    public void setGlobalVars(List<String> globalVars) {
        this.globalVars = globalVars;
    }

    public void setStringLiteralMap(Map<String, String> stringLiteralMap) {
        this.stringLiteralMap = stringLiteralMap;
    }

    public void addBuiltin(String builtin) {
        builtins.add(builtin);
    }

    public void addFunc(Func func) {
        funcs.add(func);
    }


}
