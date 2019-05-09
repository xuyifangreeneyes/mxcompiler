package mxcc.nasm;

public class Jmp extends Inst {
    private String name;
    private Label target;

    public Jmp(String name, Label target) {
        this.name = name;
        this.target = target;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Label getTarget() {
        return target;
    }

    public void setTarget(Label target) {
        this.target = target;
    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }
}
