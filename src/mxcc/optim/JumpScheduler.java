package mxcc.optim;

import mxcc.nasm.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


// After JumpScheduler, succs of Block is INVALID!
public class JumpScheduler {
    private Nasm nasm;
    private Func curFunc;
    private Map<String, Integer> labelCounter;
    private List<Block> oldBlocks;
    private List<Block> newBlocks;
    private final Map<String, String> antiCjmpMap = new HashMap<>();

    public JumpScheduler(Nasm nasm) {
        this.nasm = nasm;
        initJumpMap();
    }

    private void initJumpMap() {
        String[] cjmps = { "je", "jl", "jg", "jle", "jge", "jne" };
        for (int i = 0; i < 6; ++i) {
            antiCjmpMap.put(cjmps[i], cjmps[5 - i]);
        }
    }

    public void work() {
        for (Func func : nasm.getFuncs()) {
            curFunc = func;
            countLabel();
            rewrite();
        }
    }



    private void countLabel() {
        labelCounter = new HashMap<>();
        for (Block block : curFunc.getBbList()) {
            labelCounter.put(block.getName(), 0);
        }
        for (Block block : curFunc.getBbList()) {
            for (Inst inst : block.getInstList()) {
                if (inst instanceof Jmp) {
                    String label = ((Jmp) inst).getTarget().toString();
                    assert labelCounter.containsKey(label);
                    int num = labelCounter.get(label) + 1;
                    labelCounter.put(label, num);
                }
            }
        }
    }

    private void rewrite() {
        oldBlocks = curFunc.getBbList();
        newBlocks = new ArrayList<>();
        for (int i = 0; i < oldBlocks.size(); ++i) {
            if (i < oldBlocks.size() - 2 && match(i)) {
                newBlocks.add(oldBlocks.get(i));
                ++i;
            } else {
                newBlocks.add(oldBlocks.get(i));
            }
        }
        curFunc.setBbList(newBlocks);
    }

    private boolean isCjmp(String name) {
        return antiCjmpMap.containsKey(name);
    }

    private boolean match(int i) {
        Block b1 = oldBlocks.get(i);
        Block b2 = oldBlocks.get(i + 1);
        Block b3 = oldBlocks.get(i + 2);

        int size = b1.getInstList().size();
        if (size == 0 || !(b1.getInstList().get(size - 1) instanceof Jmp)) return false;
        Jmp cjmp = (Jmp) b1.getInstList().get(size - 1);
        if (!isCjmp(cjmp.getName())) return false;
        assert size <= 1 || !(b1.getInstList().get(size - 2) instanceof Jmp);
        if (!cjmp.getTarget().toString().equals(b3.getName()) ) return false;
        if (b2.getInstList().size() != 1 || labelCounter.get(b2.getName()) != 0 || !(b2.getInstList().get(0) instanceof Jmp)) return false;
        Jmp djmp = (Jmp) b2.getInstList().get(0);
        if (!djmp.getName().equals("jmp")) return false;

        cjmp.setName(antiCjmpMap.get(cjmp.getName()));
        cjmp.setTarget(new Label(djmp.getTarget().toString()));
        return true;
    }

}
