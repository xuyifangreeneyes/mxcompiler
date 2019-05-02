package mxcc.optim;

import mxcc.ir.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FunctionInliner {
    // Map<originFunc, backupFunc>
    private Map<Function, Function> funcBackupMap = new HashMap<>();

    public FunctionInliner(Module module) {
        for (Function originFunc : module.funcs.values()) {
            if (originFunc.isBuiltin()) continue;
            FunctionBackuper backuper = new FunctionBackuper(originFunc);
            funcBackupMap.put(originFunc, backuper.fork());
        }
    }

    public void run() {
        for (int i = 0; i < 2; ++i) {
            for (Call callInst : collectInlineCall()) {
                Transplantor transplantor = new Transplantor(callInst, funcBackupMap.get(callInst.getFunc().IRFunc));
                transplantor.fork();
            }
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

    private static class Transplantor implements IRVisitor {
        private Function hostFunc;
        private Function inlineFunc;
        private BasicBlock beforeCallBB;
        private BasicBlock afterCallBB;
        private BasicBlock curBB;
        private LocalReg RetVal;
        private LocalReg RetValAddr;
        // Map<originLocalReg, copyLocalReg>
        private Map<BasicBlock, BasicBlock> bbCopyMap = new HashMap<>();
        private Map<LocalReg, Operand> varReplaceMap = new HashMap<>();

        public Transplantor(Call callInst, Function inlineFunc) {
            this.inlineFunc = inlineFunc;

            beforeCallBB = callInst.getParentBB();
            hostFunc = beforeCallBB.getParentFunc();
            beforeCallBB.spiltBlock(callInst);
            afterCallBB = beforeCallBB.next;

            int numberOfArgs = inlineFunc.args.size();
            for (int i = 0; i < numberOfArgs; ++i) {
                varReplaceMap.put(inlineFunc.args.get(i), callInst.getArgs().get(i));
            }

            if (callInst.getDst() != null) {
                RetVal = callInst.getDst();
                RetValAddr = hostFunc.makeLocalReg("retValAddr");
                hostFunc.getStartBB().appendFront(new Alloca(hostFunc.getStartBB(), RetValAddr, 8));
                afterCallBB.appendFront(new Load(afterCallBB, RetVal, RetValAddr));
            }

            callInst.delete();

            BasicBlock bb = inlineFunc.getStartBB();
            curBB = beforeCallBB;
            while (bb != null) {
                curBB.addNext(hostFunc.makeBB("c" + bb.getName()));
                curBB = curBB.next;
                bbCopyMap.put(bb, curBB);
                bb = bb.next;
            }

            beforeCallBB.append(new DirectBranch(beforeCallBB, beforeCallBB.next));

        }

        public void fork() {
            BasicBlock bb = inlineFunc.getStartBB();
            while (bb != null) {
                curBB = bbCopyMap.get(bb);
                Instruction inst = bb.getFirstInst();
                while (inst != null) {
                    visit(inst);
                    inst = inst.next;
                }
                bb = bb.next;
            }

            // Some function's retType is not VOID but content of function doesn't
            // include returnStmt. For this case, only one BB needs to append a Return
            // and the BB is exactly inlineFunc.tail(my arrangement of BB ensures that).

//            BasicBlock tail = inlineFunc.getLastBB();
//            if (!tail.isEnded()) {
//                BasicBlock copyTail = bbCopyMap.get(tail);
//                copyTail.append(new DirectBranch(copyTail, afterCallBB));
//            }
        }

        private String copyName(String name) {
            return "c" + name.substring(1, name.indexOf("_"));
        }


        // Here we assume that along BasicBlock chain, Def of LocalReg must appear before its Use.
        // I am not sure about that.
        private Operand getVar(Operand var) {
            if (var instanceof LocalReg) {
                assert varReplaceMap.containsKey(var);
                return varReplaceMap.get(var);
            }
            return var;
        }

        private LocalReg copyLocalReg(LocalReg reg) {
            if (reg == null) return null;
            LocalReg creg = hostFunc.makeLocalReg(copyName(reg.toString()));
            varReplaceMap.put(reg, creg);
            return creg;
        }

        public void visit(Instruction node) {
            node.accept(this);
        }

        public void visit(Alloca node) {
            hostFunc.getStartBB().appendFront(new Alloca(hostFunc.getStartBB(), copyLocalReg(node.getDst()), node.getSize()));
        }

        public void visit(Malloc node) {
            curBB.append(new Malloc(curBB, copyLocalReg(node.getDst()), getVar(node.getSize())));
        }

        public void visit(Load node) {
            curBB.append(new Load(curBB, copyLocalReg(node.getDst()), getVar(node.getAddr())));
        }

        public void visit(Store node) {
            curBB.append(new Store(curBB, getVar(node.getVal()), getVar(node.getAddr())));
        }

        public void visit(BinaryOperation node) {
            curBB.append(new BinaryOperation(curBB, copyLocalReg(node.getDst()), node.getOp(), getVar(node.getLhs()), getVar(node.getRhs())));
        }

        public void visit(UnaryOperation node) {
            curBB.append(new UnaryOperation(curBB, copyLocalReg(node.getDst()), node.getOp(), getVar(node.getSrc())));
        }

        public void visit(Call node) {
            List<Operand> args = new ArrayList<>();
            for (Operand arg : node.getArgs()) {
                args.add(getVar(arg));
            }
            curBB.append(new Call(curBB, node.getFunc(), copyLocalReg(node.getDst()), args));
        }

        public void visit(Phi node) {
            // There is no Phi at phase of function inline
        }

        public void visit(Move node) {
            curBB.append(new Move(curBB, copyLocalReg(node.getDst()), getVar(node.getSrc())));
        }

        public void visit(CondBranch node) {
            curBB.append(new CondBranch(curBB, getVar(node.getCond()), bbCopyMap.get(node.getIfTrue()), bbCopyMap.get(node.getIfFalse())));
        }

        public void visit(DirectBranch node) {
            curBB.append(new DirectBranch(curBB, bbCopyMap.get(node.getTarget())));
        }

        public void visit(Return node) {
            if (RetVal != null) {
                curBB.append(new Store(curBB, getVar(node.getRetVal()), RetValAddr));
            }
            curBB.append(new DirectBranch(curBB, afterCallBB));
        }

    }
}
