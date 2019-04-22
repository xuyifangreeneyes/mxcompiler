package mxcc.backend;

import javafx.util.Pair;
import mxcc.nasm.*;

import java.util.*;

import static mxcc.nasm.CommonInfo.*;

public class RegisterAllocator {
    private Func func;

    // rbp, rsp don't participate in allocation
    private int K = 14;

    // node work lists, sets, and stacks (disjoint)
    private Set<VirtualReg> precolored = new LinkedHashSet<>();
    private Set<VirtualReg> initial = new LinkedHashSet<>();
    private Set<VirtualReg> simplifyWorklist = new LinkedHashSet<>();
    private Set<VirtualReg> freezeWorklist = new LinkedHashSet<>();
    private Set<VirtualReg> spillWorklist = new LinkedHashSet<>();
    private Set<VirtualReg> spilledNodes = new LinkedHashSet<>();
    private Set<VirtualReg> coalescedNodes = new LinkedHashSet<>();
    private Set<VirtualReg> coloredNodes = new LinkedHashSet<>();
    private Stack<VirtualReg> selectStack = new Stack<>();
    private Set<VirtualReg> selectedNodes = new HashSet<>();

    // move sets (disjoint)
    private Set<Mov> coalescedMoves = new LinkedHashSet<>();
    private Set<Mov> constrainedMoves = new LinkedHashSet<>();
    private Set<Mov> frozenMoves = new LinkedHashSet<>();
    private Set<Mov> worklistMoves = new LinkedHashSet<>();
    private Set<Mov> activeMoves = new LinkedHashSet<>();

    // other
    private Set<Pair<VirtualReg, VirtualReg>> adjSet = new HashSet<>();
    private Map<VirtualReg, Set<VirtualReg>> adjList = new HashMap<>();
    private Map<VirtualReg, Integer> degree = new HashMap<>();
    private Map<VirtualReg, Set<Mov>> moveList = new HashMap<>();
    private Map<VirtualReg, VirtualReg> alias = new HashMap<>();


    public static void visit(Nasm nasm) {
        for (Func func : nasm.getFuncs()) {
            RegisterAllocator allocator = new RegisterAllocator(func);
            allocator.work();
        }
    }

    private RegisterAllocator(Func func) {
        this.func = func;
        init();
    }

    private void init() {
        for (Block block : func.getBbList()) {
            for (Inst inst : block.getInstList()) {
                Set<VirtualReg> regs = new HashSet<>();
                regs.addAll(inst.getDef());
                regs.addAll(inst.getUse());
                for (VirtualReg reg : regs) {
                    if (reg.isPrecolored()) {
                        precolored.add(reg);
                    } else {
                        initial.add(reg);
                    }
                }
            }
        }
        Set<VirtualReg> allRegs = new HashSet<>();
        allRegs.addAll(precolored);
        allRegs.addAll(initial);
        for (VirtualReg reg : allRegs) {
            adjList.put(reg, new HashSet<>());
            degree.put(reg, 0);
            moveList.put(reg, new HashSet<>());
            alias.put(reg, null);
        }
    }

    private void work() {
        while (true) {
            LivenessAnalyzer.visit(func);
            build();
            makeWorkList();
            do {
                if (!simplifyWorklist.isEmpty()) {
                    simplify();
                } else if (!worklistMoves.isEmpty()) {
                    coalesce();
                } else if (!freezeWorklist.isEmpty()) {
                    freeze();
                } else if (!spillWorklist.isEmpty()) {
                    selectSpill();
                }
            } while (!simplifyWorklist.isEmpty() || !worklistMoves.isEmpty() ||
                     !freezeWorklist.isEmpty() || !spillWorklist.isEmpty());
            assignColors();
            if (spilledNodes.isEmpty()) break;
            rewriteProgram();
        }
        removeSelfMov();
    }

    private boolean isSelfMov(Inst inst) {
        if (!(inst instanceof Mov)) return false;
        Mov mov = (Mov) inst;
        if ((!(mov.getDst() instanceof VirtualReg)) || (!(mov.getSrc() instanceof VirtualReg))) return false;
        String dstReg = ((VirtualReg) mov.getDst()).getColor();
        String srcReg = (((VirtualReg) mov.getSrc()).getColor());
        return dstReg.equals(srcReg);
    }

    private void removeSelfMov() {
        for (Block block : func.getBbList()) {
            LinkedList<Inst> oldInstList = block.getInstList();
            LinkedList<Inst> newInstList = new LinkedList<>();
            for (Inst inst : oldInstList) {
                if (isSelfMov(inst)) continue;
                newInstList.add(inst);
            }
            block.setInstList(newInstList);
        }
    }

    private boolean isMove(Inst inst) {
        if (!(inst instanceof Mov)) return false;
        Mov mov = (Mov) inst;
        return mov.getDst() instanceof VirtualReg && mov.getSrc() instanceof VirtualReg;
    }

    private void build() {
        for (Block block : func.getBbList()) {
            Set<VirtualReg> live = new HashSet<>(block.getLiveOut());
            if (block.isExit()) {
                // use(calleeSaveRegs)
                for (String name : calleeSaveRegs) {
                    live.add(physicalRegMap.get(name));
                }
            }
            ListIterator li = block.getInstList().listIterator(block.getInstList().size());
            while (li.hasPrevious()) {
                Inst inst = (Inst) li.previous();
                List<VirtualReg> def = inst.getDef();
                List<VirtualReg> use = inst.getUse();
                if (isMove(inst)) {
                    Mov mov = (Mov) inst;
                    live.removeAll(use);
                    for (VirtualReg reg : def) {
                        moveList.get(reg).add(mov);
                    }
                    for (VirtualReg reg : use) {
                        moveList.get(reg).add(mov);
                    }
                    worklistMoves.add(mov);
                }
                live.addAll(def);
                for (VirtualReg d : def) {
                    for (VirtualReg l : live) {
                        addEdge(l, d);
                    }
                }
                live.removeAll(def);
                live.addAll(use);
            }
            if (block.isEntry()) {
                // def(calleeSaveRegs)
                assert live.isEmpty();

                List<VirtualReg> def = new ArrayList<>();
                for (String name : calleeSaveRegs) {
                    def.add(physicalRegMap.get(name));
                }
                live.addAll(def);
                for (VirtualReg d : def) {
                    for (VirtualReg l : live) {
                        addEdge(l, d);
                    }
                }
                live.removeAll(def);
            }
        }
    }

    private void addEdge(VirtualReg u, VirtualReg v) {
        if (u == v || adjSet.contains(new Pair<>(u, v))) return;
        adjSet.add(new Pair<>(u, v));
        adjSet.add(new Pair<>(v, u));
        if (!(u.isPrecolored())) {
            adjList.get(u).add(v);
            degree.put(u, degree.get(u) + 1);
        }
        if (!(v.isPrecolored())) {
            adjList.get(v).add(u);
            degree.put(v, degree.get(v) + 1);
        }
    }

    private void makeWorkList() {
        for (VirtualReg n : initial) {
            initial.remove(n);
            if (degree.get(n) >= K) {
                spillWorklist.add(n);
            } else if (moveRelated(n)) {
                freezeWorklist.add(n);
            } else {
                simplifyWorklist.add(n);
            }
        }
    }

    private Set<VirtualReg> adjacent(VirtualReg n) {
        Set<VirtualReg> neighbors = new HashSet<>();
        for (VirtualReg neighbor : adjList.get(n)) {
            if (!selectedNodes.contains(neighbor) && !coalescedNodes.contains(neighbor)) {
                neighbors.add(neighbor);
            }
        }
        return neighbors;
    }

    private Set<Mov> nodeMoves(VirtualReg n) {
        Set<Mov> moves = new HashSet<>();
        for (Mov mov : moveList.get(n)) {
            if (activeMoves.contains(mov) || worklistMoves.contains(mov)) {
                moves.add(mov);
            }
        }
        return moves;
    }

    private boolean moveRelated(VirtualReg n) {
        return !nodeMoves(n).isEmpty();
    }

    private void simplify() {
        VirtualReg n = simplifyWorklist.iterator().next();
        simplifyWorklist.remove(n);
        selectStack.push(n);
        selectedNodes.add(n);
        for (VirtualReg m : adjacent(n)) {
            decrementDegree(m);
        }
    }

    private void decrementDegree(VirtualReg m) {
        int d = degree.get(m);
        degree.put(m, d - 1);
        if (d == K) {
            Set<VirtualReg> nodes = adjacent(m);
            nodes.add(m);
            enableMoves(nodes);
            spillWorklist.remove(m);
            if (moveRelated(m)) {
                freezeWorklist.add(m);
            } else {
                simplifyWorklist.add(m);
            }
        }
    }

    private void enableMoves(Set<VirtualReg> nodes) {
        for (VirtualReg n : nodes) {
            for (Mov m : nodeMoves(n)) {
                if (!(activeMoves.contains(m))) continue;
                activeMoves.remove(m);
                worklistMoves.add(m);
            }
        }
    }

    private void addWorkList(VirtualReg u) {
        if (!u.isPrecolored() && !moveRelated(u) && degree.get(u) < K) {
            freezeWorklist.remove(u);
            simplifyWorklist.add(u);
        }
    }

    private boolean ok(VirtualReg t, VirtualReg r) {
        return degree.get(t) < K || t.isPrecolored() || adjSet.contains(new Pair<>(t, r));
    }

    private boolean conservative(Set<VirtualReg> nodes) {
        int k = 0;
        for (VirtualReg n : nodes) {
            if (degree.get(n) >= K) ++k;
        }
        return k < K;
    }

    private void coalesce() {
        Mov mov = worklistMoves.iterator().next();
        assert mov.getDst() instanceof VirtualReg && mov.getSrc() instanceof VirtualReg;
        VirtualReg x = getAlias((VirtualReg) mov.getDst());
        VirtualReg y = getAlias((VirtualReg) mov.getSrc());
        VirtualReg u, v;
        if (y.isPrecolored()) {
            u = y;
            v = x;
        } else {
            u = x;
            v = y;
        }
        worklistMoves.remove(mov);
        if (u == v) {
            coalescedMoves.add(mov);
            addWorkList(u);
        } else if (v.isPrecolored() || adjSet.contains(new Pair<>(u, v))) {
            constrainedMoves.add(mov);
            addWorkList(u);
            addWorkList(v);
        } else {
            Set<VirtualReg> vAdj = adjacent(v);
            Set<VirtualReg> uvAdj = adjacent(u);
            uvAdj.addAll(vAdj);
            boolean cond1 = u.isPrecolored();
            if (cond1) {
                for (VirtualReg t : vAdj) {
                    if (!ok(t, u)) {
                        cond1 = false;
                        break;
                    }
                }
            }
            boolean cond2 = !u.isPrecolored() && conservative(uvAdj);
            if (cond1 || cond2) {
                coalescedMoves.add(mov);
                combine(u, v);
                addWorkList(u);
            } else {
                activeMoves.add(mov);
            }
        }
    }

    private void combine(VirtualReg u, VirtualReg v) {
        if (freezeWorklist.contains(v)) {
            freezeWorklist.remove(v);
        } else {
            spillWorklist.remove(v);
        }
        coalescedNodes.add(v);
        alias.put(v, u);
        moveList.get(u).addAll(moveList.get(v));
        Set<VirtualReg> nodes = new HashSet<>();
        nodes.add(v);
        enableMoves(nodes);
        for (VirtualReg t : adjacent(v)) {
            addEdge(t, u);
            decrementDegree(t);
        }
        if (degree.get(u) >= K && freezeWorklist.contains(u)) {
            freezeWorklist.remove(u);
            spillWorklist.add(u);
        }
    }

    private VirtualReg getAlias(VirtualReg n) {
        if (coalescedNodes.contains(n)) {
            return getAlias(alias.get(n));
        } else {
            return n;
        }
    }

    private void freeze() {
        VirtualReg u = freezeWorklist.iterator().next();
        freezeWorklist.remove(u);
        simplifyWorklist.add(u);
        freezeMoves(u);
    }

    private void freezeMoves(VirtualReg u) {
        for (Mov mov : nodeMoves(u)) {
            assert mov.getDst() instanceof VirtualReg && mov.getSrc() instanceof VirtualReg;
            VirtualReg x = getAlias((VirtualReg) mov.getDst());
            VirtualReg y = getAlias((VirtualReg) mov.getSrc());
            VirtualReg v;
            if (y == getAlias(u)) {
                v = x;
            } else {
                v = y;
            }
            activeMoves.remove(mov);
            frozenMoves.add(mov);
            if (freezeWorklist.contains(v) && nodeMoves(v).isEmpty()) {
                freezeWorklist.remove(v);
                simplifyWorklist.add(v);
            }
        }
    }

    private void selectSpill() {
        Iterator<VirtualReg> iter = spillWorklist.iterator();
        VirtualReg m = iter.next();
        while (m.isTiny() && iter.hasNext()) {
            m = iter.next();
        }
        spillWorklist.remove(m);
        simplifyWorklist.add(m);
        freezeMoves(m);
    }

    private void assignColors() {
        while (!selectStack.isEmpty()) {
            VirtualReg n = selectStack.pop();
            selectedNodes.remove(n);
            Set<String> okColors = new HashSet<>(Arrays.asList(colorRegs));
            for (VirtualReg w : adjList.get(n)) {
                VirtualReg aw = getAlias(w);
                if (coloredNodes.contains(aw) || precolored.contains(aw)) {
                    okColors.remove(aw.getColor());
                }
            }
            if (okColors.isEmpty()) {
                spilledNodes.add(n);
            } else {
                coloredNodes.add(n);
                String c = okColors.iterator().next();
                n.setColor(c);
            }
        }
        for (VirtualReg n : coalescedNodes) {
            n.setColor(getAlias(n).getColor());
        }
    }

    private void rewriteProgram() {
        func.addRspOffset(spilledNodes.size() * 8);
        SpillEditor spillEditor = new SpillEditor(spilledNodes);
        List<VirtualReg> newTemps = spillEditor.visit(func);
        spilledNodes.clear();
        initial.addAll(coloredNodes);
        initial.addAll(coalescedNodes);
        initial.addAll(newTemps);
        coloredNodes.clear();
        coalescedNodes.clear();
    }

}
