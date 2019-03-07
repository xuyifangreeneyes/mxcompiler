package mxcc.ir;

import java.util.ArrayList;
import java.util.List;

public class Function {
    private String name;
    private BasicBlock head;
    private BasicBlock tail;
    // not sure whether it is needed
    public List<LocalReg> args = new ArrayList<>();

    private int RegCounter = 0;

    public Function(String name, boolean isBuiltin) {
        this.name = name;
        if (!isBuiltin) {
            head = tail = new BasicBlock(this, this.name + "_entry");
        }
    }

    public BasicBlock getStartBB() {
        return head;
    }

    public LocalReg makeLocalReg(String hint) {
        LocalReg reg = new LocalReg(hint, RegCounter);
        ++RegCounter;
        return reg;
    }


}
