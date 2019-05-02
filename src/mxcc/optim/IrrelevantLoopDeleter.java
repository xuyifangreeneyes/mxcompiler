package mxcc.optim;

import mxcc.ast.*;
import mxcc.symbol.ClassSymbol;
import mxcc.symbol.GlobalSymbolTable;
import mxcc.symbol.Scope;
import mxcc.symbol.VariableSymbol;

import java.util.*;

public class IrrelevantLoopDeleter extends AstBaseVisitor {
    private Map<Stmt, Set<VariableSymbol>> loopMap;
    private Set<Stmt> neededLoops;
    private Set<Stmt> curLoops;


    public IrrelevantLoopDeleter() {

    }

    private boolean isLocal(VariableSymbol var) {
        Scope scope = var.def.scope;
        return !(scope instanceof GlobalSymbolTable) && !(scope instanceof ClassSymbol);
    }

    public void visit(Program node) {
        for (Decl decl : node.decls) {
            if (decl instanceof ClassDecl) return;
        }
        // For now I only consider the case where there is no class.
        for (Decl decl : node.decls) {
            if (decl instanceof VariableDecl) {
                continue;
            }
            visit(decl);
        }
    }

    public void visit(FunctionDecl node) {
        loopMap = new HashMap<>();
        neededLoops = new HashSet<>();
        curLoops = new HashSet<>();

        node.paramList.forEach(this::visit);
        node.stmts.forEach(this::visit);

        LoopDeleter deleter = new LoopDeleter(node, neededLoops);
        deleter.work();
    }

    public void visit(ClassDecl node) {
//        for (Decl decl : node.decls) {
//            if (decl instanceof VariableDecl) {
//                continue;
//            }
//            visit(decl);
//        }
    }

    private void takeVar(VariableSymbol var) {
        if (!isLocal(var)) {
            neededLoops.addAll(curLoops);
            return;
        }
        for (Stmt loop : loopMap.keySet()) {
            if (curLoops.contains(loop)) {
                loopMap.get(loop).add(var);
            } else {
                if (loopMap.get(loop).contains(var)) {
                    neededLoops.add(loop);
                }
            }
        }
    }

    public void visit(VariableDecl node) {
        takeVar(node.var);
        visit(node.init);
    }

    public void visit(BlockStmt node) {
        node.stmts.forEach(this::visit);
    }

    public void visit(VariableDeclStmt node) {
        visit(node.decl);
    }

    public void visit(IfStmt node) {
        visit(node.cond);
        visit(node.then);
        if (node.otherwise != null) {
            visit(node.otherwise);
        }
    }

    public void visit(ForStmt node) {
        loopMap.put(node, new HashSet<>());
        curLoops.add(node);
        visit(node.init);
        visit(node.cond);
        visit(node.step);
        visit(node.body);
        curLoops.remove(node);
    }

    public void visit(WhileStmt node) {
        loopMap.put(node, new HashSet<>());
        curLoops.add(node);
        visit(node.cond);
        visit(node.body);
        curLoops.remove(node);
    }

    public void visit(ReturnStmt node) {
        neededLoops.addAll(curLoops);
        if (node.value != null) {
            visit(node.value);
        }
    }

    public void visit(BreakStmt node) {

    }

    public void visit(ContinueStmt node) {

    }

    public void visit(EmptyStmt node) {

    }

    public void visit(BinaryExpr node) {
        visit(node.left);
        visit(node.right);
    }

    public void visit(UnaryExpr node) {
        visit(node.expr);
    }

    public void visit(FunctionCall node) {
        neededLoops.addAll(curLoops);
//        visit(node.caller);
        for (Expr arg : node.args) {
            visit(arg);
        }
    }

    public void visit(ArrayAccess node) {
        visit(node.container);
        visit(node.subscript);
    }

    public void visit(MemberAccess node) {
        assert false;
    }

    public void visit(NewExpr node) {
        neededLoops.addAll(curLoops);
        for (Expr dimArg : node.dimArgs) {
            visit(dimArg);
        }
    }

    public void visit(IdentifierExpr node) {
        assert node.var instanceof VariableSymbol;
        takeVar((VariableSymbol) node.var);
    }

    public void visit(IntConst node) {

    }

    public void visit(BoolConst node) {

    }

    public void visit(StringConst node) {

    }

    public void visit(NullLiteral node) {

    }

//    private static class LoopCollector extends AstBaseVisitor {
//        private Set<Stmt> loops = new HashSet<>();
//
//        public LoopCollector() {
//
//        }
//
//        public Set<Stmt> work(FunctionDecl node) {
//            visit(node);
//            return loops;
//        }
//
//        public void visit(FunctionDecl node) {
//            node.stmts.forEach(this::visit);
//        }
//
//        public void visit(BlockStmt node) {
//            node.stmts.forEach(this::visit);
//        }
//
//        public void visit(IfStmt node) {
//            visit(node.then);
//            visit(node.otherwise);
//        }
//
//        public void visit(ForStmt node) {
//            loops.add(node);
//            visit(node.body);
//        }
//
//        public void visit(WhileStmt node) {
//            loops.add(node);
//            visit(node.body);
//        }
//
//
//    }


    private static class LoopDeleter extends AstBaseVisitor {
        private FunctionDecl func;
        private Set<Stmt> neededLoops;

        public LoopDeleter(FunctionDecl func, Set<Stmt> neededLoops) {
            this.func = func;
            this.neededLoops = neededLoops;
        }

        public void work() {
            visit(func);
        }

        private boolean isLoop(Stmt stmt) {
            return stmt instanceof ForStmt || stmt instanceof WhileStmt;
        }

        private List<Stmt> deleteLoop(List<Stmt> stmts) {
            List<Stmt> newStmts = new ArrayList<>();
            for (Stmt stmt : stmts) {
                if (isLoop(stmt) && !neededLoops.contains(stmt)) {
//                    System.out.println("delete loop");
                    continue;
                }
                visit(stmt);
                newStmts.add(stmt);
            }
            return newStmts;
        }

        public void visit(FunctionDecl node) {
            node.stmts = deleteLoop(node.stmts);
        }

        public void visit(BlockStmt node) {
            node.stmts = deleteLoop(node.stmts);
        }

        public void visit(IfStmt node) {
            visit(node.then);
            if (node.otherwise != null) {
                visit(node.otherwise);
            }
        }

        public void visit(ForStmt node) {
            visit(node.body);
        }

        public void visit(WhileStmt node) {
            visit(node.body);
        }

    }
}
