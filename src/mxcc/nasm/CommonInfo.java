package mxcc.nasm;

import java.util.HashMap;
import java.util.Map;

public class CommonInfo {
    public static final String[] physicalRegs = { "rax", "rcx", "rdx", "rbx", "rsp", "rbp", "rsi", "rdi",
                                                  "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15" };

    public static final String[] paramRegs = { "rdi", "rsi", "rdx", "rcx", "r8", "r9" };

    public static final Map<String, VirtualReg> physicalRegMap = new HashMap<>();

    static {
        for (String physicalReg : physicalRegs) {
            physicalRegMap.put(physicalReg, new VirtualReg(physicalReg, physicalReg));
        }
    }
}
