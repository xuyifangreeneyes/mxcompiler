package mxcc.ir;

import java.util.ArrayList;
import java.util.List;

public class Function {
    private String name;
    private BasicBlock head;
    private BasicBlock tail;
    public List<Register> args = new ArrayList<>();

    private int RegCounter = 0;

    public Function(String name) {
        this.name = name;
        head = tail = new BasicBlock(this, this.name + "_entry");
    }


    public BasicBlock getStartBB() {
        return head;
    }

    public Register makeRegister(String hint) {
        Register reg = new Register(hint, RegCounter);
        ++RegCounter;
        return reg;
    }


}
