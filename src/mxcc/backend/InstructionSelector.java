package mxcc.backend;

import mxcc.ir.*;
import mxcc.nasm.*;
import mxcc.utility.StringHandler;

import java.util.*;

import static mxcc.nasm.CommonInfo.*;

public class InstructionSelector implements IRVisitor {
    private Nasm nasm = new Nasm();

    private Func curNasmFunc;
    private Block curNasmBlock;
    private List<LocalReg> curArgs;

    private Map<BasicBlock, Block> blockMap = new HashMap<>();

    private Map<LocalReg, VirtualReg> localRegMap = new HashMap<>();
    private Map<LocalReg, VirtualReg> allocaMap = new HashMap<>();

    // Map<calleeSaveReg, localBackup>
    // Since precolored nodes can't be spilled, we move them to backup virtualRegs,
    // which are likely to be spilled.
    private Map<VirtualReg, VirtualReg> calleeSaveMap;

    private int bbCounter = 0;
    private int allocaCounter = 0;
    private int immCounter = 0;

    // for processCmpAndJmp
    private Map<LocalReg, Integer> regCounter;

    private String asmName(String raw) {
        if (raw.startsWith("@")) {
            // int ch;
            // [rel ch] goes wrong
            // [rel _ch] is ok
            return "_" + raw.substring(1);
        }
        if (raw.startsWith("$")) {
            return "__" + raw.substring(1);
        }
        assert false;
        return null;
    }

    private Block getBlock(BasicBlock bb) {
        if (!blockMap.containsKey(bb)) {
            String label;
            if (bb.isEntry()) {
                label = bb.getParentFunc().getName();
            } else {
                ++bbCounter;
                label = "__L_" + bbCounter;
            }
            blockMap.put(bb, new Block(label));
        }
        return blockMap.get(bb);
    }

    private VirtualReg getVirtualReg(LocalReg localReg) {
        if (!localRegMap.containsKey(localReg)) {
            localRegMap.put(localReg, new VirtualReg(localReg.toString()));
        }
        return localRegMap.get(localReg);
    }

    private Var getVar(Operand operand) {
        if (operand instanceof IntImmediate) {
            return new Imm(((IntImmediate) operand).getVal());
        }
        if (operand instanceof LocalReg) {
            return getVirtualReg((LocalReg) operand);
        }
        if (operand instanceof StringLiteral) {
            return new Label(asmName(operand.toString()));
        }
        // GlobalReg can only exist at address position of Load or Store.
        // In that case, getVar wouldn't be called.
        assert false;
        return null;
    }

    private void initCalleeSaveMap() {
        calleeSaveMap = new HashMap<>();
        for (String name : calleeSaveRegs) {
            calleeSaveMap.put(physicalRegMap.get(name), new VirtualReg("%local_" + name));
        }
    }

    public InstructionSelector() {
    }

    private void passSuccs() {
        for (BasicBlock bb : blockMap.keySet()) {
            Block block = blockMap.get(bb);
            for (BasicBlock succBB : bb.getSuccessors()) {
                block.addSucc(blockMap.get(succBB));
            }
        }
    }

    public Nasm visit(Module module) {
        List<String> globalVars = new ArrayList<>();
        for (GlobalReg globalReg : module.globalRegs) {
            globalVars.add(asmName(globalReg.toString()));
        }
        nasm.setGlobalVars(globalVars);

        Map<String, String> literalStringMap = new LinkedHashMap<>();
        for (StringLiteral stringLiteral : module.stringPool.values()) {
            String name = asmName(stringLiteral.toString());
            String content = StringHandler.unescape(stringLiteral.getValue());
            literalStringMap.put(name, content);
        }
        nasm.setStringLiteralMap(literalStringMap);

        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) {
                nasm.addBuiltin(func.getName());
            } else {
                visit(func);
            }
        }

        passSuccs();

        return nasm;
    }

    public void visit(Function func) {
        curNasmFunc = new Func(func.getName());
        nasm.addFunc(curNasmFunc);
        initCalleeSaveMap();
        curArgs = func.args;

        LocalRegCollector collector = new LocalRegCollector();
        regCounter = collector.work(func);

        BasicBlock bb = func.getStartBB();
        while (bb != null) {
            visit(bb);
            bb = bb.next;
        }
    }

    private boolean processCmpAndJmp(Instruction inst) {
        if (!(inst instanceof BinaryOperation)) return false;
        BinaryOperation first = (BinaryOperation) inst;
        if (!isCmp(first)) return false;
        if (!(inst.next instanceof CondBranch)) return false;
        CondBranch second = (CondBranch) inst.next;
        if (first.getDst() != second.getCond() || regCounter.get(first.getDst()) != 2) return false;
        addCmp(first.getLhs(), first.getRhs());
        String pos = "";
        String neg = "";
        switch (first.getOp()) {
            case EQ: pos = "je"; neg = "jne"; break;
            case NEQ: pos = "jne"; neg = "je"; break;
            case LT: pos = "jl"; neg = "jge"; break;
            case GT: pos = "jg"; neg = "jle"; break;
            case LE: pos = "jle"; neg = "jg"; break;
            case GE: pos = "jge"; neg = "jl"; break;
        }
        addJmp(second.getParentBB().next, second.getIfTrue(), second.getIfFalse(), pos, neg);
        return true;
    }

    public void visit(BasicBlock bb) {
        curNasmBlock = getBlock(bb);
        curNasmFunc.addBlock(curNasmBlock);
        if (bb.isEntry()) {
            // move callee-save registers to virtualRegs
            for (VirtualReg reg : calleeSaveMap.keySet()) {
                curNasmBlock.addInst(new Mov(calleeSaveMap.get(reg), reg));
            }

            // move arguments to virtualRegs
            int paramNum = curArgs.size();
            int rbpOffset = 8;
            for (int i = 6; i < paramNum; ++i) {
                LocalReg arg = curArgs.get(i);
                rbpOffset += 8;
                curNasmBlock.addInst(new Mov(getVirtualReg(arg), new Memory(physicalRegMap.get("rbp"), rbpOffset)));
            }
            int max = paramNum < 6 ? paramNum : 6;
            for (int i = 0; i < max; ++i) {
                LocalReg arg = curArgs.get(i);
                curNasmBlock.addInst(new Mov(getVirtualReg(arg), physicalRegMap.get(paramRegs[i])));
            }

            if (bb.getParentFunc().getName().equals("main")) {
                curNasmBlock.addInst(new FuncCall("__globalInit", 0));
            }
        }
        Instruction inst = bb.getFirstInst();
        while (inst != null) {
            if (processCmpAndJmp(inst)) {
                inst = inst.next.next;
            } else {
                visit(inst);
                inst = inst.next;
            }
        }
    }

    public void visit(Instruction node) {
        node.accept(this);
    }

    public void visit(Alloca node) {
        assert false;
        ++allocaCounter;
        VirtualReg virtualReg = new VirtualReg("%alloca_" + allocaCounter);
        allocaMap.put(node.getDst(), virtualReg);
    }

    public void visit(Malloc node) {
        assert node.getSize() instanceof LocalReg || node.getSize() instanceof IntImmediate;
        curNasmBlock.addInst(new Mov(physicalRegMap.get("rdi"), getVar(node.getSize())));
        curNasmBlock.addInst(new FuncCall("malloc", 0));
        curNasmBlock.addInst(new Mov(getVirtualReg(node.getDst()), physicalRegMap.get("rax")));
    }

    public void visit(Load node) {
        Operand addr = node.getAddr();
        if (addr instanceof LocalReg && allocaMap.containsKey(addr)) {
            curNasmBlock.addInst(new Mov(getVirtualReg(node.getDst()), allocaMap.get(addr)));
            return;
        }
        if (addr instanceof LocalReg) {
            Memory memory = new Memory(getVirtualReg((LocalReg) addr));
            curNasmBlock.addInst(new Mov(getVirtualReg(node.getDst()), memory));
            return;
        }
        if (addr instanceof GlobalReg) {
            Memory memory = new Memory(new Label(asmName(addr.toString())));
            curNasmBlock.addInst(new Mov(getVirtualReg(node.getDst()), memory));
            return;
        }
        assert false;
    }

    public void visit(Store node) {
        Operand addr = node.getAddr();
        if (addr instanceof LocalReg && allocaMap.containsKey(addr)) {
            curNasmBlock.addInst(new Mov(allocaMap.get(addr), getVar(node.getVal())));
            return;
        }
        if (addr instanceof LocalReg) {
            Memory memory = new Memory(getVirtualReg((LocalReg) addr));
            curNasmBlock.addInst(new Mov(memory, getVar(node.getVal())));
            return;
        }
        if (addr instanceof GlobalReg) {
            Memory memory = new Memory(new Label(asmName(addr.toString())));
            curNasmBlock.addInst(new Mov(memory, getVar(node.getVal())));
            return;
        }
        assert false;
    }

    private boolean isCmp(BinaryOperation node) {
        return node.getOp() == BinaryOperation.BinaryOp.EQ || node.getOp() == BinaryOperation.BinaryOp.NEQ
                || node.getOp() == BinaryOperation.BinaryOp.LT || node.getOp() == BinaryOperation.BinaryOp.GT
                || node.getOp() == BinaryOperation.BinaryOp.LE || node.getOp() == BinaryOperation.BinaryOp.GE;
    }

    private void addCmp(Operand lhsOp, Operand rhsOp) {
        // There are better methods
        Var lhs;
        if (lhsOp instanceof IntImmediate) {
            ++immCounter;
            lhs = new VirtualReg("%cmplhs_" + immCounter);
            int val = ((IntImmediate) lhsOp).getVal();
            curNasmBlock.addInst(new Mov(lhs, new Imm(val)));
        } else {
            lhs = getVar(lhsOp);
        }
        curNasmBlock.addInst(new Cmp(lhs, getVar(rhsOp)));
    }

    // bool c = a < b;
    private void writeCmp(BinaryOperation node) {
        addCmp(node.getLhs(), node.getRhs());
        String set = "";
        switch (node.getOp()) {
            case EQ: set = "sete"; break;
            case NEQ: set = "setne"; break;
            case LT: set = "setl"; break;
            case GT: set = "setg"; break;
            case LE: set = "setle"; break;
            case GE: set = "setge"; break;
        }
        curNasmBlock.addInst(new SetFlag(set, physicalRegMap.get("rax")));
        curNasmBlock.addInst(new Movzx(getVirtualReg(node.getDst()), physicalRegMap.get("rax")));
    }

    private void writeDivMod(BinaryOperation node) {
        curNasmBlock.addInst(new Mov(physicalRegMap.get("rax"), getVar(node.getLhs())));
        curNasmBlock.addInst(new Cqo());
        Operand rhs = node.getRhs();
        assert rhs instanceof LocalReg || rhs instanceof IntImmediate;
        VirtualReg divisor;
        if (rhs instanceof IntImmediate) {
            ++immCounter;
            divisor = new VirtualReg("%divisor_" + immCounter);
            curNasmBlock.addInst(new Mov(divisor, new Imm(((IntImmediate) rhs).getVal())));
        } else {
            // If rhs comes from Load, divisor can be Memory, which reduces use of Register
            divisor = getVirtualReg((LocalReg) rhs);
        }
        curNasmBlock.addInst(new Idiv(divisor));
        String result = node.getOp() == BinaryOperation.BinaryOp.DIV ? "rax" : "rdx";
        curNasmBlock.addInst(new Mov(getVirtualReg(node.getDst()), physicalRegMap.get(result)));
    }

    private void writeShift(BinaryOperation node) {
        VirtualReg dstReg = getVirtualReg(node.getDst());
        curNasmBlock.addInst(new Mov(dstReg, getVar(node.getLhs())));
        Operand rhs = node.getRhs();
        assert rhs instanceof LocalReg || rhs instanceof IntImmediate;
        Var count;
        if (rhs instanceof IntImmediate) {
            count = new Imm(((IntImmediate) rhs).getVal());
        } else {
            curNasmBlock.addInst(new Mov(physicalRegMap.get("rcx"), getVirtualReg((LocalReg) rhs)));
            count = physicalRegMap.get("rcx");
        }
        String shift = node.getOp() == BinaryOperation.BinaryOp.LSFT ? "shl" : "sar";
        curNasmBlock.addInst(new Shift(shift, dstReg, count));
    }

    private void writeBinary(BinaryOperation node) {
        String binary = "";
        switch (node.getOp()) {
            case MUL: binary = "imul"; break;
            case ADD: binary = "add"; break;
            case SUB: binary = "sub"; break;
            case BIT_AND: binary = "and"; break;
            case BIT_OR: binary = "or"; break;
            case BIT_XOR: binary = "xor"; break;
        }
        VirtualReg dstReg = getVirtualReg(node.getDst());
        curNasmBlock.addInst(new Mov(dstReg, getVar(node.getLhs())));
        curNasmBlock.addInst(new BinOp(binary, dstReg, getVar(node.getRhs())));
    }

    private int log2(int x) {
        if (x <= 0) return -1;
        int e = 0;
        while (x % 2 == 0) {
            x /= 2;
            ++e;
        }
        if (x == 1) return e;
        else return -1;
    }

    private boolean mul2shl(BinaryOperation node) {
        if (node.getOp() != BinaryOperation.BinaryOp.MUL || !(node.getRhs() instanceof IntImmediate)) {
            return false;
        }
        int val = ((IntImmediate) node.getRhs()).getVal();
        int e = log2(val);
        if (e == -1) return false;
        VirtualReg dstReg = getVirtualReg(node.getDst());
        curNasmBlock.addInst(new Mov(dstReg, getVar(node.getLhs())));
        if (e != 0) {
            curNasmBlock.addInst(new Shift("shl", dstReg, new Imm(e)));
        }
        return true;
    }

    public void visit(BinaryOperation node) {
        if (isCmp(node)) {
            writeCmp(node);
            return;
        }
        if (mul2shl(node)) {
            return;
        }
        if (node.getOp() == BinaryOperation.BinaryOp.DIV || node.getOp() == BinaryOperation.BinaryOp.MOD) {
            writeDivMod(node);
            return;
        }
        if (node.getOp() == BinaryOperation.BinaryOp.LSFT || node.getOp() == BinaryOperation.BinaryOp.RSFT) {
            writeShift(node);
            return;
        }
        writeBinary(node);
    }

    public void visit(UnaryOperation node) {
        String unary = "";
        switch (node.getOp()) {
            case INC: unary = "inc"; break;
            case DEC: unary = "dec"; break;
            case NEG: unary = "neg"; break;
            case BIT_NOT: unary = "not"; break;
        }
        VirtualReg dstReg = getVirtualReg(node.getDst());
        curNasmBlock.addInst(new Mov(dstReg, getVar(node.getSrc())));
        curNasmBlock.addInst(new UnOp(unary, dstReg));
    }

    public void visit(Call node) {
        int paramNum = node.getArgs().size();
        int rspOffset = 0;
        if (paramNum > 6) {
            rspOffset = (paramNum - 6) * 8;
            if (rspOffset % 16 != 0) {
                // nop is a placeholder for [ sub rsp, 8]
                curNasmBlock.addInst(new Nop());
                rspOffset += 8;
            }
        }
        for (int i = paramNum - 1; i >= 6; --i) {
            Operand arg = node.getArgs().get(i);
            assert arg instanceof LocalReg || arg instanceof IntImmediate;
            if (arg instanceof IntImmediate) {
                curNasmBlock.addInst(new Push(new Imm(((IntImmediate) arg).getVal())));
            } else {
                curNasmBlock.addInst(new Push(getVirtualReg((LocalReg) arg)));
            }
        }
        int max = paramNum < 6 ? paramNum : 6;
        for (int i = 0; i < max; ++i) {
            curNasmBlock.addInst(new Mov(physicalRegMap.get(paramRegs[i]), getVar(node.getArgs().get(i))));
        }
        curNasmBlock.addInst(new FuncCall(node.getFunc().IRFunc.getName(), rspOffset));
        if (node.getDst() != null) {
            curNasmBlock.addInst(new Mov(getVirtualReg(node.getDst()), physicalRegMap.get("rax")));
        }
    }

    public void visit(Phi node) {
        // Phi wouldn't appear in the phase
    }

    public void visit(Move node) {
        curNasmBlock.addInst(new Mov(getVirtualReg(node.getDst()), getVar(node.getSrc())));
    }

    // bool c = a < b;
    // if (c) {...} else {...}

    // I try to make as many fall-throughs as possible.
    // As a result, some block may be empty, which means a block may
    // have two labels on head. That seems to be ok in nasm.
    public void visit(CondBranch node) {
        addCmp(node.getCond(), new IntImmediate(0));
        addJmp(node.getParentBB().next, node.getIfTrue(), node.getIfFalse(), "jne", "je");
    }

    private void addJmp(BasicBlock nextBB, BasicBlock ifTrueBB, BasicBlock ifFalseBB, String pos, String neg) {
        if (nextBB == ifTrueBB) {
            curNasmBlock.addInst(new Jmp(neg, new Label(getBlock(ifFalseBB).getName())));
            return;
        }
        curNasmBlock.addInst(new Jmp(pos, new Label(getBlock(ifTrueBB).getName())));
        if (nextBB != ifFalseBB) {
            curNasmBlock.addInst(new Jmp("jmp", new Label(getBlock(ifFalseBB).getName())));
        }
    }

    public void visit(DirectBranch node) {
        BasicBlock nextBB = node.getParentBB().next;
        BasicBlock targetBB = node.getTarget();
        if (nextBB != targetBB) {
            curNasmBlock.addInst(new Jmp("jmp", new Label(getBlock(targetBB).getName())));
        }
    }

    public void visit(Return node) {
        for (VirtualReg reg : calleeSaveMap.keySet()) {
            curNasmBlock.addInst(new Mov(reg, calleeSaveMap.get(reg)));
        }
        if (node.getRetVal() != null) {
            curNasmBlock.addInst(new Mov(physicalRegMap.get("rax"), getVar(node.getRetVal())));
        }
        curNasmBlock.addInst(new Ret());
    }

    private static class LocalRegCollector implements IRVisitor {
        private Map<LocalReg, Integer> regCounter;

        public LocalRegCollector() {

        }

        public Map<LocalReg, Integer> work(Function func) {
            regCounter = new HashMap<>();
            for (LocalReg reg : func.args) {
                addReg(reg);
            }
            BasicBlock bb = func.getStartBB();
            while (bb != null) {
                Instruction inst = bb.getFirstInst();
                while (inst != null) {
                    visit(inst);
                    inst = inst.next;
                }
                bb = bb.next;
            }
            return regCounter;
        }

        private void addReg(Operand operand) {
            if (!(operand instanceof LocalReg)) return;
            LocalReg reg = (LocalReg) operand;
            if (regCounter.containsKey(reg)) {
                int num = regCounter.get(reg) + 1;
                regCounter.put(reg, num);
            } else {
                regCounter.put(reg, 1);
            }
        }

        public void visit(Instruction node) {
            node.accept(this);
        }

        public void visit(Alloca node) {
            addReg(node.getDst());
        }

        public void visit(Malloc node) {
            addReg(node.getDst());
            addReg(node.getSize());
        }

        public void visit(Load node) {
            addReg(node.getDst());
            addReg(node.getAddr());
        }

        public void visit(Store node) {
            addReg(node.getVal());
            addReg(node.getAddr());
        }

        public void visit(BinaryOperation node) {
            addReg(node.getDst());
            addReg(node.getLhs());
            addReg(node.getRhs());
        }

        public void visit(UnaryOperation node) {
            addReg(node.getDst());
            addReg(node.getSrc());
        }

        public void visit(Call node) {
            addReg(node.getDst());
            for (Operand arg : node.getArgs()) {
                addReg(arg);
            }
        }

        public void visit(Phi node) {
            // There is no Phi during instruction selection.
            assert false;
        }

        public void visit(Move node) {
            addReg(node.getDst());
            addReg(node.getSrc());
        }

        public void visit(CondBranch node) {
            addReg(node.getCond());
        }

        public void visit(DirectBranch node) {

        }

        public void visit(Return node) {
            addReg(node.getRetVal());
        }
    }


}
