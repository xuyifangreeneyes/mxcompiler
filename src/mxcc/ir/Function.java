package mxcc.ir;

import java.util.*;

public class Function {
    private String name;
    private BasicBlock head;
    private BasicBlock tail;
    public List<LocalReg> args = new ArrayList<>();

    private int LocalRegCounter = 0;
    private int BBCounter = 0;

    // for data flow analysis
    public Map<Register, Instruction> defMap = new LinkedHashMap<>();
    public Map<Register, Set<Instruction>> useMap = new LinkedHashMap<>();

    public Function(String name, boolean isBuiltin) {
        this.name = "#" + name;
        if (!isBuiltin) {
            head = tail = makeBB("entry");
        }
    }

    public BasicBlock getStartBB() {
        return head;
    }

    public LocalReg makeLocalReg(String hint) {
        LocalReg reg = new LocalReg(hint, LocalRegCounter);
        ++LocalRegCounter;
        return reg;
    }

    public BasicBlock makeBB(String name) {
        BasicBlock BB = new BasicBlock(this, BBCounter, name);
        ++BBCounter;
        return BB;
    }

    public boolean isBuiltin() {
        return head == null;
    }

    public String getName() {
        return name;
    }

}
