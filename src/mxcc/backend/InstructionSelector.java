package mxcc.backend;

import mxcc.ir.*;
import mxcc.nasm.*;
import mxcc.utility.StringHandler;

import java.util.*;

public class InstructionSelector implements IRVisitor {
    private Nasm nasm  = new Nasm();
    private int bbCounter = 0;
    private Func curNasmFunc;
    private Block curNasmBlock;
    private Map<String, VirtualReg> physicalRegMap = new HashMap<>();
    private Map<LocalReg, VirtualReg> localRegMap = new HashMap<>();
    private String[] physicalRegs = { "rax", "rcx", "rdx", "rbx", "rsp", "rbp", "rsi", "rdi",
                                     "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15" };
    private int allocaCounter = 0;
    private Map<LocalReg, VirtualReg> allocaMap = new HashMap<>();


    private void initPhysicalRegMap() {
        for (String physicalReg : physicalRegs) {
            physicalRegMap.put(physicalReg, new VirtualReg(physicalReg, physicalReg));
        }
    }

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

    private String makeLabel(BasicBlock bb) {
        if (bb.getParentFunc().getStartBB() == bb) return bb.getParentFunc().getName();
        ++bbCounter;
        return "L" + bbCounter;
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
            return new Label(asmName(operand.toString());
        }
        // GlobalReg can only exist at address position of Load or Store.
        // In that case, getVar wouldn't be called.
        assert false;
        return null;
    }

    public InstructionSelector() {
        initPhysicalRegMap();
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
            if (func.isBuiltin()) continue;
            visit(func);
        }


    }

    public void visit(Function func) {
        curNasmFunc = new Func(func.getName());
        BasicBlock bb = func.getStartBB();
        while (bb != null) {
            visit(bb);
            bb = bb.next;
        }
    }

    public void visit(BasicBlock bb) {
        curNasmBlock = new Block(makeLabel(bb));
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

        }
        if (addr instanceof GlobalReg) {

        }

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
