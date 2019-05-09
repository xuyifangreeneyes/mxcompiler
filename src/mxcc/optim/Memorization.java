package mxcc.optim;

import mxcc.ast.FunctionDecl;
import mxcc.ir.*;
import mxcc.symbol.FunctionSymbol;

import java.util.*;

import static mxcc.symbol.GlobalSymbolTable.*;

public class Memorization {
    private Module module;
    private int counter = 0;
    private final int tableSize = 256;
    private Map<Function, GlobalReg> tableMap = new HashMap<>();
    private Set<Function> relevantFuncs;

    public Memorization(Module module) {
        this.module = module;
        RelevantFuncCollector collector = new RelevantFuncCollector(module);
        relevantFuncs = collector.getRelevantFuncs();
    }

    public void work() {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin() || func.getName().equals("main") || func.getName().equals("__globalInit")) continue;
            List<Call> selfCalls = fetchSelfCalls(func);
            if (selfCalls != null) {
                makeTable(func);
                for (Call call : selfCalls) {
                    rewrite(call);
                }
            }
        }
    }

    private void makeTable(Function func) {
        // There may be a GlobalReg name conflict.
        GlobalReg tablePtrPtr = new GlobalReg("tablePtrPtr_" + counter);
        ++counter;
        module.globalRegs.add(tablePtrPtr);
        Function globalInit = module.funcs.get("__globalInit");
        BasicBlock lastBB = globalInit.getLastBB();
        LocalReg tablePtr = globalInit.makeLocalReg("tablePtr");
        lastBB.appendBeforeTerminator(new Malloc(lastBB, tablePtr, new IntImmediate(tableSize * 8)));
        lastBB.appendBeforeTerminator(new Store(lastBB, tablePtr, tablePtrPtr));
        tableMap.put(func, tablePtrPtr);
    }

    private void rewrite(Call call) {
        BasicBlock beforeCall = call.getParentBB();
        Function func = beforeCall.getParentFunc();
        beforeCall.spiltBlock(call);
        BasicBlock afterCall = beforeCall.next;
        Operand arg = call.getArgs().get(0);
        LocalReg dst = call.getDst();
        FunctionSymbol functionSymbol = call.getFunc();

        BasicBlock checkTable = func.makeBB("check_table");
        BasicBlock getAns = func.makeBB("get_ans");
        BasicBlock setAns = func.makeBB("set_ans");
        BasicBlock normalCall = func.makeBB("normal_call");

        beforeCall.addNext(checkTable);
        checkTable.addNext(getAns);
        getAns.addNext(setAns);
        setAns.addNext(normalCall);

        LocalReg retValAddr = func.makeLocalReg("retValAddr");
        func.getStartBB().appendFront(new Alloca(func.getStartBB(), retValAddr, 8));

        call.delete();
        LocalReg inTable = func.makeLocalReg("inTable");
        beforeCall.append(new BinaryOperation(beforeCall, inTable, BinaryOperation.BinaryOp.LT, arg, new IntImmediate(tableSize)));
        beforeCall.append(new CondBranch(beforeCall, inTable, checkTable, normalCall));

        LocalReg tablePtr = func.makeLocalReg("tablePtr");
        checkTable.append(new Load(checkTable, tablePtr, tableMap.get(func)));
        LocalReg offset = func.makeLocalReg("offset");
        checkTable.append(new BinaryOperation(checkTable, offset, BinaryOperation.BinaryOp.MUL, arg, new IntImmediate(8)));
        LocalReg ansAddr = func.makeLocalReg("ansAddr");
        checkTable.append(new BinaryOperation(checkTable, ansAddr, BinaryOperation.BinaryOp.ADD, tablePtr, offset));
        LocalReg ans = func.makeLocalReg("ans");
        checkTable.append(new Load(checkTable, ans, ansAddr));
        LocalReg ansValid = func.makeLocalReg("ansValid");
        checkTable.append(new BinaryOperation(checkTable, ansValid, BinaryOperation.BinaryOp.NEQ, ans, new IntImmediate(0)));
        checkTable.append(new CondBranch(checkTable, ansValid, getAns, setAns));

        getAns.append(new Store(getAns, ans, retValAddr));
        getAns.append(new DirectBranch(getAns, afterCall));

        LocalReg res1 = func.makeLocalReg("res1");
        List<Operand> args1 = new ArrayList<>();
        args1.add(arg);
        setAns.append(new Call(setAns, functionSymbol, res1, args1));
        setAns.append(new Store(setAns, res1, ansAddr));
        setAns.append(new Store(setAns, res1, retValAddr));
        setAns.append(new DirectBranch(setAns, afterCall));

        LocalReg res2 = func.makeLocalReg("res2");
        List<Operand> args2 = new ArrayList<>();
        args2.add(arg);
        normalCall.append(new Call(normalCall, functionSymbol, res2, args2));
        normalCall.append(new Store(normalCall, res2, retValAddr));
        normalCall.append(new DirectBranch(normalCall, afterCall));

        afterCall.appendFront(new Load(afterCall, dst, retValAddr));
    }


    private boolean match(FunctionSymbol functionSymbol) {
        if (functionSymbol.type != INT_TYPE) return false;
        assert functionSymbol.def instanceof FunctionDecl;
        FunctionDecl functionDecl = (FunctionDecl) functionSymbol.def;
        return functionDecl.paramList.get(0).var.type == INT_TYPE;
    }

    public List<Call> fetchSelfCalls(Function func) {
        if (func.args.size() != 1 || relevantFuncs.contains(func)) return null;
        List<Call> selfCalls = null;
        BasicBlock bb = func.getStartBB();
        while (bb != null) {
            Instruction inst = bb.getFirstInst();
            while (inst != null) {
                if (inst instanceof Call) {
                    Call call = (Call) inst;
                    if (call.getFunc().IRFunc == func) {
                        if (selfCalls == null) {
                            selfCalls = new ArrayList<>();
                            if (match(call.getFunc())) {
                                selfCalls.add(call);
                            }
                        } else if (!selfCalls.isEmpty()) {
                            selfCalls.add(call);
                        }
                    }
                }
                inst = inst.next;
            }
            bb = bb.next;
        }
        if (selfCalls != null && !selfCalls.isEmpty()) {
            return selfCalls;
        } else {
            return null;
        }
    }
}
