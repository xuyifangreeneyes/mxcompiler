package mxcc.optim;

import mxcc.ir.*;

import java.util.ArrayList;
import java.util.List;

//public class InlineAndConstOptim {
//    private Module module;
//
//    public InlineAndConstOptim(Module module) {
//        this.module = module;
//    }
//
//    public void work() {
//        for (Function func : module.funcs.values()) {
//            if (func.isBuiltin()) continue;
//            iterate(func);
//        }
//    }
//
//    public void iterate(Function func) {
//        while (true) {
//            List<Call> calls = collectCalls(func);
//            if (calls.isEmpty()) break;
//            for (Call call : calls) {
//                inline(call);
//            }
//
//        }
//    }
//
//    private List<Call> collectCalls(Function func) {
//        List<Call> calls = new ArrayList<>();
//        BasicBlock bb = func.getStartBB();
//        while (bb != null) {
//            Instruction inst = bb.getFirstInst();
//            while (inst != null) {
//                if (inst instanceof Call) {
//                    Call call = (Call) inst;
//                    boolean ok = true;
//                    if (call.getFunc().IRFunc.isBuiltin()) {
//                        ok = false;
//                    } else {
//                        for (Operand arg : call.getArgs()) {
//                            if (!(arg instanceof IntImmediate)) {
//                                ok = false;
//                                break;
//                            }
//                        }
//                    }
//                    if (ok) {
//                        calls.add(call);
//                    }
//                }
//                inst = inst.next;
//            }
//            bb = bb.next;
//        }
//        return calls;
//    }
//
//    private void inline(Call call) {
//
//    }
//
//    private void consOptim(Function func) {
//
//    }
//
//}
