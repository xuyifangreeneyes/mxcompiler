package mxcc.frontend;

import mxcc.ast.*;
import mxcc.symbol.ClassSymbol;
import mxcc.symbol.GlobalSymbolTable;
import mxcc.symbol.Scope;
import mxcc.symbol.VariableSymbol;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

//public class IrrelevantLoopDeletor extends AstBaseVisitor {
//    private Map<Stmt, Set<VariableSymbol>> loopMap;
//    private Set<Stmt> necessaryLoops;
//    private Set<Stmt> curLoops;
//    private Stmt curLoop;
//
//
//    private boolean isLocal(VariableSymbol var) {
//        Scope scope = var.def.scope;
//        return !(scope instanceof GlobalSymbolTable) && !(scope instanceof ClassSymbol);
//    }
//
//    public void visit(Program node) {
//        for (Decl decl : node.decls) {
//            if (decl instanceof VariableDecl) {
//                continue;
//            }
//            visit(decl);
//        }
//    }
//
//    public void visit(FunctionDecl node) {
//        LoopCollector collector = new LoopCollector();
//        Set<Stmt> loops = collector.work(node);
//        loopMap = new HashMap<>();
//        for (Stmt loop : loops) {
//            loopMap.put(loop, new HashSet<>());
//        }
//        necessaryLoops = new HashSet<>();
//        curLoops = new HashSet<>();
//
//        node.stmts.forEach(this::visit);
//
//
//    }
//
//    public void visit(ClassDecl node) {
//        for (Decl decl : node.decls) {
//            if (decl instanceof VariableDecl) {
//                continue;
//            }
//            visit(decl);
//        }
//    }
//
//    public void visit(VariableDecl node) {
//
//    }
//
//    public void visit(BlockStmt node) {}
//    public void visit(VariableDeclStmt node) {}
//    public void visit(IfStmt node) {}
//    public void visit(ForStmt node) {}
//    public void visit(WhileStmt node) {}
//    public void visit(ReturnStmt node) {}
//    public void visit(BreakStmt node) {}
//    public void visit(ContinueStmt node) {}
//    public void visit(EmptyStmt node) {}
//
//    public void visit(BinaryExpr node) {}
//    public void visit(UnaryExpr node) {}
//    public void visit(FunctionCall node) {}
//    public void visit(ArrayAccess node) {}
//    public void visit(MemberAccess node) {}
//    public void visit(NewExpr node) {}
//    public void visit(IdentifierExpr node) {}
//
//    public void visit(IntConst node) {}
//    public void visit(BoolConst node) {}
//    public void visit(StringConst node) {}
//    public void visit(NullLiteral node) {}
//
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
//}
