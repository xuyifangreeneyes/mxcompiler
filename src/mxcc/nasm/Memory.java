package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

import static mxcc.nasm.CommonInfo.physicalRegMap;

public class Memory extends Var {
    private VirtualReg base;
    private VirtualReg index;
    private int scale;
    private int displacement;

    private Label label;

    private boolean valid;

    public Memory(VirtualReg base) {
        this.base = base;
        this.valid = true;
    }

    public Memory(VirtualReg base, int displacement) {
        this.base = base;
        this.displacement = displacement;
        this.valid = true;
    }

    public Memory(VirtualReg base, VirtualReg index, int scale) {
        this.base = base;
        this.index = index;
        this.scale = scale;
        this.valid = true;
    }

    public Memory(Label label) {
        this.label = label;
        this.valid = true;
    }

    public Memory() {
        this.valid = false;
    }

    // After instruction selection, some of Memory contain VirtualReg
    // so it must be considered w.r.t VirtualReg Use.
    // There are four kinds of Memory during register allocation:
    // 1. [reg] (appear in load and store, should be considered w.r.t VirtualReg Use)
    // 2. [rel label] (appear in load and store, can be ignored w.r.t VirtualReg Use)
    // 3. [rbp + imm] (created when getting parameters, can be ignored w.r.t VirtualReg Use)
    // 4. invalid (created when spilling, would become format of [rbp - imm] after building stack)
    // Since case 1 only appears in Mov, only Mov.getUse() needs to call Memory.getUse().
    // When VirtualReg v is spilled, we should check if Memory operand(if any) of Mov contains v.
    // If answer is yes, we should edit Mov like this:
    // ================== before ==================
    // mov rax [ar]
    // ================== after ===================
    // mov tmp [am]
    // mov rax [tmp]
    // ============================================
    public List<VirtualReg> getUse() {
        List<VirtualReg> useList = new ArrayList<>();
        if (!isValid() || label != null) return useList;
        assert base != null;
        if (base != physicalRegMap.get("rbp")) {
            useList.add(base);
        }
        if (index != null) {
            useList.add(index);
        }
        return useList;
    }

    public VirtualReg getBase() {
        return base;
    }

    public void setBase(VirtualReg base) {
        this.base = base;
    }

    public VirtualReg getIndex() {
        return index;
    }

    public void setIndex(VirtualReg index) {
        this.index = index;
    }

    public Label getLabel() {
        return label;
    }

    public void settleOnStack(int displacement) {
        assert !this.valid;
        this.base = physicalRegMap.get("rbp");
        this.displacement = displacement;
        this.valid = true;
    }

    public boolean isValid() {
        return valid;
    }

    // a print function used before register allocation
    public String show() {
        if (label != null) {
            return "qword [rel " + label + "]";
        } else {
//            assert base != null;
            if (base == null) return "qword [ ]";
            StringBuilder builder = new StringBuilder("qword [" + base.getName());
            if (index != null) {
                builder.append(" + ").append(index.getName());
                if (scale != 1) {
                    builder.append("*").append(scale);
                }
            }
            if (displacement != 0) {
                if (displacement > 0) {
                    builder.append(" + ").append(displacement);
                } else {
                    builder.append(" - ").append(-displacement);
                }
            }
            builder.append("]");
            return builder.toString();
        }
    }

    public String toString() {
        assert valid;
        if (label != null) {
            return "qword [rel " + label + "]";
        } else {
            assert base != null;
//            StringBuilder builder = new StringBuilder("qword [" + base.getName() + "$" + base.getColor());
            StringBuilder builder = new StringBuilder("qword [" + base.getColor());
            if (index != null) {
//                builder.append(" + ").append(index.getName() + "$" + index.getColor());
                builder.append(" + ").append(index.getColor());
                if (scale != 1) {
                    builder.append("*").append(scale);
                }
            }
            if (displacement != 0) {
                if (displacement > 0) {
                    builder.append(" + ").append(displacement);
                } else {
                    builder.append(" - ").append(-displacement);
                }
            }
            builder.append("]");
            return builder.toString();
        }
    }
}
