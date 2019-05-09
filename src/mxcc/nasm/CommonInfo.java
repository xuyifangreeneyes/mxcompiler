package mxcc.nasm;

import java.util.HashMap;
import java.util.Map;

public class CommonInfo {
    public static final String[] physicalRegs = { "rax", "rcx", "rdx", "rbx", "rsp", "rbp", "rsi", "rdi",
                                                  "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15" };

    // registers which participate in allocation
    public static final String[] colorRegs = { "rax", "rcx", "rdx", "rbx", "rsi", "rdi", "r8",
                                               "r9", "r10", "r11", "r12", "r13", "r14", "r15" };

    public static final String[] callerSaveRegs = { "rax", "rcx", "rdx", "rsi", "rdi", "r8", "r9", "r10", "r11" };

    // Actually rbp is saved by callee, but it doesn't participate in allocation
    // so rbp doesn't exist in calleeSaveRegs
    public static final String[] calleeSaveRegs = { "rbx", "r12", "r13", "r14", "r15" };

    public static final String[] paramRegs = { "rdi", "rsi", "rdx", "rcx", "r8", "r9" };

    public static final Map<String, VirtualReg> physicalRegMap = new HashMap<>();

    static {
        for (String name : physicalRegs) {
            physicalRegMap.put(name, new VirtualReg(name, name));
        }
    }
}
