package mxcc.optim;

import mxcc.ir.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FunctionInliner {
    private Module module;
    // Map<originFunc, backupFunc>
    private Map<Function, Function> funcBackupMap = new HashMap<>();

    public FunctionInliner(Module module) {
        this.module = module;
        for (Function originFunc : module.funcs.values()) {
            if (originFunc.isBuiltin()) continue;
            FunctionBackuper backuper = new FunctionBackuper(originFunc);
            funcBackupMap.put(originFunc, backuper.fork());
        }
    }

    public void run() {
        for (Call callInst : collectInlineCall()) {
            inline(callInst);
        }
    }

    private List<Call> collectInlineCall() {
        List<Call> callList = new ArrayList<>();
        for (Function func : funcBackupMap.keySet()) {
            BasicBlock bb = func.getStartBB();
            while (bb != null) {
                Instruction inst = bb.getFirstInst();
                while (inst != null) {
                    if (inst instanceof Call) {
                        Call callInst = (Call) inst;
                        Function callFunc = funcBackupMap.get(callInst.getFunc().IRFunc);
                        if (callFunc != null && callFunc.isInlinable()) {
                            callList.add(callInst);
                        }
                    }
                    inst = inst.next;
                }
                bb = bb.next;
            }
        }
        return callList;
    }

    private BasicBlock copy(BasicBlock bb, Function func) {
        BasicBlock copyBB = func.makeBB("copy" + bb.getName());
        Instruction inst = bb.getFirstInst();
        while (inst != null) {

            inst = inst.next;
        }
    }

    private void inline(Call callInst) {
        BasicBlock curBB = callInst.getParentBB();
        Function func = curBB.getParentFunc();
        curBB.spiltBlock(callInst);
        BasicBlock afterCallBB = curBB.next;

        Function inlineFunc = funcBackupMap.get(callInst.getFunc().IRFunc);
        BasicBlock bb = inlineFunc.getStartBB();
        while (bb != null) {
            BasicBlock copyBB = copy(bb, func);
            bb = bb.next;
        }
    }

    private static class Transplantor implements IRVisitor {
        private Function hostFunc;
        private Function inlineFunc;
        private BasicBlock curBB;
        private BasicBlock afterCallBB;
        private Register RetVal;
        private Register RetValAddr;
        // Map<originLocalReg, copyLocalReg>
        private Map<LocalReg, Operand> varReplaceMap = new HashMap<>();

        public Transplantor(Call callInst, Function inlineFunc) {
            curBB = callInst.getParentBB();
            hostFunc = curBB.getParentFunc();
            curBB.spiltBlock(callInst);
            afterCallBB = curBB.next;
            callInst.delete();

            this.inlineFunc = inlineFunc;

            int numberOfArgs = inlineFunc.args.size();
            for (int i = 0; i < numberOfArgs; ++i) {
                varReplaceMap.put(inlineFunc.args.get(i), callInst.getArgs().get(i));
            }
        }

        public void fork() {
            BasicBlock bb = inlineFunc.getStartBB();
            while (bb != null) {

                bb = bb.next;
            }
        }

        public String copyName(String name) {
            return "c" + name.substring(1, name.indexOf("_"));
        }

        public void visit(Instruction node) {
            node.accept(this);
        }

        public void visit(Alloca node) {
            LocalReg dst = hostFunc.makeLocalReg(copyName(node.getDst().toString()));
            varReplaceMap.put(node.getDst(), dst);
            hostFunc.getStartBB().appendFront(new Alloca(hostFunc.getStartBB(), dst, node.getSize()));
        }

        public void visit(Malloc node) {

        }

        public void visit(Load node) {

        }

        public void visit(Store node) {

        }

        public void visit(BinaryOperation node) {

        }

        public void visit(UnaryOperation node) {

        }

        public void visit(Call node) {

        }

        public void visit(Phi node) {

        }

        public void visit(Move node) {

        }

        public void visit(CondBranch node) {

        }

        public void visit(DirectBranch node) {

        }

        public void visit(Return node) {

        }

    }
}
