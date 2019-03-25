package mxcc.optim;

import mxcc.ir.*;

import java.util.HashMap;
import java.util.Map;

public class FunctionBackuper implements IRVisitor {
    private Function originFunc;
    private Map<BasicBlock, BasicBlock> bbCopyMap = new HashMap<>();
    private Map<Instruction, Instruction> instCopyMap = new HashMap<>();

    public FunctionBackuper(Function originFunc) {
        this.originFunc = originFunc;
    }

    public Function fork() {
        Function backupFunc = new Function(originFunc);
        BasicBlock backupBB = backupFunc.getStartBB();
        BasicBlock originBB = originFunc.getStartBB();
        bbCopyMap.put(originBB, backupBB);
        originBB = originBB.next;
        while (originBB != null) {
            backupBB.addNext(new BasicBlock(backupFunc, originBB.getLabel(), originBB.getName()));
            backupBB = backupBB.next;
            bbCopyMap.put(originBB, backupBB);
            originBB = originBB.next;
        }

        originBB = originFunc.getStartBB();
        while (originBB != null) {
            backupBB = bbCopyMap.get(originBB);
            Instruction originInst = originBB.getFirstInst();
            while (originInst != null) {
                visit(originInst);
                Instruction backupInst = instCopyMap.get(originInst);
                if (backupInst instanceof CondBranch) {
                    CondBranch condBranch = (CondBranch) backupInst;
                    condBranch.replaceTarget(condBranch.getIfTrue(), bbCopyMap.get(condBranch.getIfTrue()));
                    condBranch.replaceTarget(condBranch.getIfFalse(), bbCopyMap.get(condBranch.getIfFalse()));
                }
                if (backupInst instanceof DirectBranch) {
                    DirectBranch directBranch = (DirectBranch) backupInst;
                    directBranch.replaceTarget(bbCopyMap.get(directBranch.getTarget()));
                }
                backupBB.append(backupInst);
                originInst = originInst.next;
            }
            originBB = originBB.next;
        }

        return backupFunc;
    }

    public void visit(Instruction node) {
        node.accept(this);
    }

    public void visit(Alloca node) {
        instCopyMap.put(node, new Alloca(null, node.getDst(), node.getSize()));
    }

    public void visit(Malloc node) {
        instCopyMap.put(node, new Malloc(null, node.getDst(), node.getSize()));
    }

    public void visit(Load node) {
        instCopyMap.put(node, new Load(null, node.getDst(), node.getAddr()));
    }

    public void visit(Store node) {
        instCopyMap.put(node, new Store(null, node.getVal(), node.getAddr()));
    }

    public void visit(BinaryOperation node) {
        instCopyMap.put(node, new BinaryOperation(null, node.getDst(), node.getOp(), node.getLhs(), node.getRhs()));
    }

    public void visit(UnaryOperation node) {
        instCopyMap.put(node, new UnaryOperation(null, node.getDst(), node.getOp(), node.getSrc()));
    }

    public void visit(Call node) {
        instCopyMap.put(node, new Call(null, node.getFunc(), node.getDst(), node.getArgs()));
    }

    public void visit(Phi node) {
        // For now function backup happens only before SSA. Phi won't appear at that time.
    }

    public void visit(Move node) {
        // For now function backup happens only before SSA. Move won't appear at that time.
    }

    public void visit(CondBranch node) {
        instCopyMap.put(node, new CondBranch(null, node.getCond(), node.getIfTrue(), node.getIfFalse()));
    }

    public void visit(DirectBranch node) {
        instCopyMap.put(node,  new DirectBranch(null, node.getTarget()));
    }

    public void visit(Return node) {
        instCopyMap.put(node, new Return(null, node.getRetVal()));
    }

}
