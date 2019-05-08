package mxcc.optim;

import mxcc.ir.*;
import mxcc.symbol.FunctionSymbol;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import static mxcc.symbol.GlobalSymbolTable.*;

public class RelevantFuncCollector {
    private Module module;
    private Set<Function> relevantFuncs = new HashSet<>();

    public RelevantFuncCollector(Module module) {
        this.module = module;
        collect();
    }

    public Set<Function> getRelevantFuncs() {
        return relevantFuncs;
    }

    private void collect() {
        relevantFuncs.add(module.funcs.get("main"));
        relevantFuncs.add(PRINT.IRFunc);
        relevantFuncs.add(PRINTLN.IRFunc);
        relevantFuncs.add(PRINT_INT.IRFunc);
        relevantFuncs.add(PRINTLN_INT.IRFunc);

        Map<Function, Set<Function>> callMap = new HashMap<>();
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            callMap.put(func, check(func));
        }

        boolean changed = true;
        while (changed) {
            changed = false;
            int oldSize = relevantFuncs.size();
            for (Function func : callMap.keySet()) {
                if (relevantFuncs.contains(func)) continue;
                for (Function callee : callMap.get(func)) {
                    if (relevantFuncs.contains(callee)) {
                        relevantFuncs.add(func);
                        break;
                    }
                }
            }
            int newSize = relevantFuncs.size();
            if (newSize - oldSize  > 0) changed = true;
        }
    }

    private boolean isOutputRelevant(FunctionSymbol functionSymbol) {
        return functionSymbol == PRINT || functionSymbol == PRINTLN ||
                functionSymbol == PRINT_INT || functionSymbol == PRINTLN_INT;
    }

    private Set<Function> check(Function func) {
        boolean relevant = false;
        Set<Function> callees = new HashSet<>();
        BasicBlock bb = func.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
                if (inst instanceof Call) {
                    Call call = (Call) inst;
                    callees.add(call.getFunc().IRFunc);
                    if (isOutputRelevant(call.getFunc())) {
                        relevant = true;
                    }
                } else if (inst instanceof Load) {
                    Load load = (Load) inst;
                    if (!(load.getAddr() instanceof LocalReg) || !((LocalReg) load.getAddr()).isFromAlloca()) {
                        relevant = true;
                    }
                } else if (inst instanceof Store) {
                    Store store = (Store) inst;
                    if (!(store.getAddr() instanceof LocalReg) || !(((LocalReg) store.getAddr()).isFromAlloca())) {
                        relevant = true;
                    }
                }
                inst = inst.next;
            }
            bb = bb.next;
        }
        if (relevant) {
            relevantFuncs.add(func);
        }
        return callees;
    }
}
