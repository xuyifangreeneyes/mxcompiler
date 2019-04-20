package mxcc.nasm;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

public class Block {
    private String name;
    private LinkedList<Inst> instList = new LinkedList<>();

    private Set<Block> succs = new HashSet<>();

    private Set<VirtualReg> liveOut;

    public Block(String name) {
        this.name = name;
    }

    public void addInst(Inst inst) {
        instList.add(inst);
    }

    public String getName() {
        return name;
    }

    public void addSucc(Block succ) {
        succs.add(succ);
    }

    public Set<VirtualReg> getLiveOut() {
        return liveOut;
    }

    public void setLiveOut(Set<VirtualReg> liveOut) {
        this.liveOut = liveOut;
    }

    public LinkedList<Inst> getInstList() {
        return instList;
    }

    public Set<Block> getSuccs() {
        return succs;
    }

}
