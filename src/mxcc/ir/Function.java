package mxcc.ir;

public class Function {
    private String name;
    private BasicBlock head;
    private BasicBlock tail;

    private int RegCounter = 0;

    public Function(String name) {
        this.name = name;
        head = tail = new BasicBlock(this, this.name + "_entry");
    }


    public BasicBlock getStartBB() {
        return head;
    }

    public Register makeRegister() {
        return new Register(++RegCounter);
    }


}
