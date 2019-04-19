package mxcc.backend;

import mxcc.ir.*;
import mxcc.nasm.*;
import mxcc.utility.StringHandler;

import java.util.*;

import static mxcc.nasm.CommonInfo.paramRegs;
import static mxcc.nasm.CommonInfo.physicalRegMap;

public class InstructionSelector implements IRVisitor {
    private Nasm nasm  = new Nasm();

    private Func curNasmFunc;
    private Block curNasmBlock;

    private Map<BasicBlock, Block> blockMap = new HashMap<>();

    private Map<LocalReg, VirtualReg> localRegMap = new HashMap<>();
    private Map<LocalReg, VirtualReg> allocaMap = new HashMap<>();

    private int bbCounter = 0;
    private int allocaCounter = 0;
    private int immCounter = 0;

    private String asmName(String raw) {
        if (raw.startsWith("@")) {
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
            if (bb.getParentFunc().getStartBB() == bb) {
                label = bb.getParentFunc().getName();
            } else {
                ++bbCounter;
                label = "L" + bbCounter;
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

    public void visit(Module module) {
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
    }

    public void visit(Function func) {
        curNasmFunc = new Func(func.getName());
        nasm.addFunc(curNasmFunc);

        int paramNum = func.args.size();

        for (int i = paramNum - 1; i >= 6; --i) {
            LocalReg arg = func.args.get(i);
            curNasmBlock.addInst(new Mov(getVirtualReg(arg), new Memory()));
        }

        int max = paramNum < 6 ? paramNum : 6;

        for (int i = 0; i < max; ++i) {
            LocalReg arg = func.args.get(i);
            curNasmBlock.addInst(new Mov(getVirtualReg(arg), physicalRegMap.get(paramRegs[i])));
        }

        BasicBlock bb = func.getStartBB();
        while (bb != null) {
            visit(bb);
            bb = bb.next;
        }
    }

    public void visit(BasicBlock bb) {
        curNasmBlock = getBlock(bb);
        curNasmFunc.addBlock(curNasmBlock);
        if (bb.getParentFunc().getName().equals("main") && bb.getParentFunc().getStartBB() == bb) {
            curNasmBlock.addInst(new FuncCall("_globalInit"));
        }
        Instruction inst = bb.getFirstInst();
        while (inst != null) {
            visit(inst);
            inst = inst.next;
        }
    }

    public void visit(Instruction node) {
        node.accept(this);
    }

    public void visit(Alloca node) {
        ++allocaCounter;
        VirtualReg virtualReg = new VirtualReg("%alloca_" + allocaCounter);
        allocaMap.put(node.getDst(), virtualReg);
    }

    public void visit(Malloc node) {
        assert node.getSize() instanceof LocalReg || node.getSize() instanceof IntImmediate;
        curNasmBlock.addInst(new Mov(physicalRegMap.get("rdi"), getVar(node.getSize())));
        curNasmBlock.addInst(new FuncCall("malloc"));
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

    private void writeCmp(BinaryOperation node) {
        curNasmBlock.addInst(new Cmp(getVar(node.getLhs()), getVar(node.getRhs())));
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

    public void visit(BinaryOperation node) {
        if (isCmp(node)) {
            writeCmp(node);
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
        curNasmBlock.addInst(new FuncCall(node.getFunc().IRFunc.getName()));
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

    public void visit(CondBranch node) {
        curNasmBlock.addInst(new Cmp(getVar(node.getCond()), new Imm(0)));
        BasicBlock nextBB = node.getParentBB().next;
        BasicBlock ifTrueBB = node.getIfTrue();
        BasicBlock ifFalseBB = node.getIfFalse();
        if (nextBB == ifTrueBB) {
            curNasmBlock.addInst(new Jmp("je", new Label(getBlock(ifFalseBB).getName())));
            return;
        }
        curNasmBlock.addInst(new Jmp("jne", new Label(getBlock(ifTrueBB).getName())));
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
        if (node.getRetVal() != null) {
            curNasmBlock.addInst(new Mov(physicalRegMap.get("rax"), getVar(node.getRetVal())));
        }
        curNasmBlock.addInst(new Ret());
    }


}
