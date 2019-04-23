package mxcc.nasm;

import java.util.ArrayList;
import java.util.List;

import static mxcc.nasm.CommonInfo.callerSaveRegs;
import static mxcc.nasm.CommonInfo.physicalRegMap;

public class FuncCall extends Inst {
    private String funcName;
    private int rspOffset;

    public FuncCall(String funcName, int rspOffset) {
        this.funcName = funcName;
        this.rspOffset = rspOffset;
    }

    public String getFuncName() {
        return funcName;
    }

    public List<VirtualReg> getDef() {
        List<VirtualReg> defList = new ArrayList<>();
        for (String name : callerSaveRegs) {
            defList.add(physicalRegMap.get(name));
        }
        return defList;
    }

    public int getRspOffset() {
        return rspOffset;
    }

    public void accept(NasmVisitor visitor) {
        visitor.visit(this);
    }
}
