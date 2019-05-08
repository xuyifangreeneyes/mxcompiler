package mxcc.optim;

import mxcc.ast.*;
import mxcc.symbol.*;

import java.util.*;

import static mxcc.symbol.GlobalSymbolTable.*;

public class IrrelevantArrayDeleter extends AstBaseVisitor {
    private Program ast;
    private Set<FunctionSymbol> relevantFuncs = new HashSet<>();
    private Set<VariableSymbol> unusedArrayVars;

    private boolean hasSideEffect;

    public IrrelevantArrayDeleter(Program ast) {
        this.ast = ast;
    }

    public void work() {
        checkFunction();
        findIrrelevantArray();
        deleteIrrelevantArray();
    }

    private void checkFunction() {
        Map<FunctionSymbol, Set<FunctionSymbol>> callMap = new HashMap<>();
        for (Decl decl : ast.decls) {
            if (decl instanceof FunctionDecl) {
                FunctionDecl funcDecl = (FunctionDecl) decl;
                FunctionChecker checker = new FunctionChecker();
                if (checker.check(funcDecl)) {
                    relevantFuncs.add(funcDecl.func);
                }
                callMap.put(funcDecl.func, checker.getCalls());
            }
        }

        boolean changed = true;
        while (changed) {
            changed = false;
            int oldSize = relevantFuncs.size();
            for (FunctionSymbol func : callMap.keySet()) {
                if (relevantFuncs.contains(func)) {
                    continue;
                }
                for (FunctionSymbol callee : callMap.get(func)) {
                    if (relevantFuncs.contains(callee)) {
                        relevantFuncs.add(func);
                        break;
                    }
                }
            }
            int newSize = relevantFuncs.size();
            if (newSize - oldSize > 0) changed = true;
        }
    }

    private void findIrrelevantArray() {
        ArrayFinder finder = new ArrayFinder();
        finder.visit(ast);
        unusedArrayVars = finder.collectArrayVars();
    }

    private void deleteIrrelevantArray() {
        for (Decl decl : ast.decls) {
            if (decl instanceof FunctionDecl) {
                visit(decl);
            }
        }
    }

    public void visit(FunctionDecl node) {
        node.stmts = deleteStmt(node.stmts);
        node.stmts.forEach(this::visit);
    }

    public void visit(BlockStmt node) {
        node.stmts = deleteStmt(node.stmts);
        node.stmts.forEach(this::visit);
    }

    private List<Stmt> deleteStmt(List<Stmt> stmts) {
        List<Stmt> newStmts = new ArrayList<>();
        for (Stmt stmt : stmts) {
            if (!remove(stmt)) {
                newStmts.add(stmt);
            } else {
//                System.out.println("delete");
            }
        }
        return newStmts;
    }

//    private boolean isIrrelevantArray(Expr expr) {
//        if (expr instanceof IdentifierExpr) {
//            Symbol var = ((IdentifierExpr) expr).var;
//            return var instanceof VariableSymbol && var.type instanceof ArrayType && unusedArrayVars.contains((var));
//        } else if (expr instanceof ArrayAccess) {
//            return isIrrelevantArray(((ArrayAccess) expr).container);
//        }
//        return false;
//    }

    private boolean isIrrelevantArray(Expr expr) {
        if (!(expr instanceof ArrayAccess)) return false;
        int dim = 0;
        while (expr instanceof ArrayAccess) {
            expr = ((ArrayAccess) expr).container;
            ++dim;
        }
        if (!(expr instanceof IdentifierExpr)) return false;
        Symbol var = ((IdentifierExpr) expr).var;
        assert var instanceof VariableSymbol;
        return var instanceof VariableSymbol && var.type instanceof ArrayType &&
                unusedArrayVars.contains(var) && ((ArrayType) var.type).dim == dim;
    }

    private boolean remove(Stmt stmt) {
        if (!(stmt instanceof BinaryExpr)) return false;
        BinaryExpr assign = (BinaryExpr) stmt;
        if (assign.op != BinaryExpr.BinaryOp.ASSIGN || !isIrrelevantArray(assign.left)) return false;
        hasSideEffect = false;
        visit(assign);
        return !hasSideEffect;
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

    public void visit(BinaryExpr node) {
        visit(node.left);
        visit(node.right);
    }

    public void visit(UnaryExpr node) {
        if (node.op == UnaryExpr.UnaryOp.INC || node.op == UnaryExpr.UnaryOp.DEC
                || node.op == UnaryExpr.UnaryOp.INC_SUF || node.op == UnaryExpr.UnaryOp.DEC_SUF) {
            hasSideEffect = true;
        }
        visit(node.expr);
    }

    public void visit(FunctionCall node) {
        if (relevantFuncs.contains(node.func)) {
            hasSideEffect = true;
        }
        if (node.caller instanceof MemberAccess) {
            visit(((MemberAccess) node.caller).container);
        }
        node.args.forEach(this::visit);
    }

    public void visit(ArrayAccess node) {
        visit(node.container);
        visit(node.subscript);
    }

    public void visit(NewExpr node) {
        hasSideEffect = true;
        node.dimArgs.forEach(this::visit);
    }

    private static class FunctionChecker extends AstBaseVisitor {
        private boolean relevant = false;
        private Set<FunctionSymbol> calls = new HashSet<>();

        public FunctionChecker() {

        }

        public Set<FunctionSymbol> getCalls() {
            return calls;
        }

        public boolean check(FunctionDecl node) {
            if (node.func.getName().equals("main")) {
                relevant = true;
            }
            node.stmts.forEach(this::visit);
            return relevant;
        }

        public void visit(VariableDecl node) {
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
            visit(node.init);
            visit(node.cond);
            visit(node.step);
            visit(node.body);
        }

        public void visit(WhileStmt node) {
            visit(node.cond);
            visit(node.body);
        }

        public void visit(ReturnStmt node) {
            visit(node.value);
        }

        public void visit(BinaryExpr node) {
            visit(node.left);
            visit(node.right);
        }

        public void visit(UnaryExpr node) {
            visit(node.expr);
        }

        public void visit(FunctionCall node) {
            assert node.func != null;
            if (node.func == PRINT || node.func == PRINTLN || node.func == GET_INT || node.func == GET_STRING) {
                relevant = true;
            }
            calls.add(node.func);
            if (node.caller instanceof MemberAccess) {
                visit(((MemberAccess) node.caller).container);
            }
            node.args.forEach(this::visit);
        }

        public void visit(ArrayAccess node) {
            relevant = true;
            visit(node.container);
            visit(node.subscript);
        }

        public void visit(NewExpr node) {
            relevant = true;
            node.dimArgs.forEach(this::visit);
        }

        public void visit(IdentifierExpr node) {
            assert node.var instanceof VariableSymbol;
            if (node.var.type instanceof ArrayType || node.var.def.scope instanceof GlobalSymbolTable) {
                relevant = true;
            }
        }
    }

    private static class ArrayFinder extends AstBaseVisitor {
        private Map<VariableSymbol, Integer> useMap = new HashMap<>();

        private boolean arrayAssignFlag = false;

        public ArrayFinder() {

        }

        public void visit(Program node) {
            for (Decl decl : node.decls) {
                if (decl instanceof VariableDecl) {
                    visit(decl);
                }
            }
            for (Decl decl : node.decls) {
                if (decl instanceof FunctionDecl) {
                    visit(decl);
                }
            }
        }

        public Set<VariableSymbol> collectArrayVars() {
            Set<VariableSymbol> arrayVars = new HashSet<>();
            for (VariableSymbol arrayVar : useMap.keySet()) {
                if (useMap.get(arrayVar) == 0) {
                    arrayVars.add(arrayVar);
                }
            }
            return arrayVars;
        }

        public void visit(VariableDecl node) {
            if (node.var.type instanceof ArrayType) {
                useMap.put(node.var, 0);
            }
        }

        public void visit(FunctionDecl node) {
            node.paramList.forEach(this::visit);
            node.stmts.forEach(this::visit);
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
            visit(node.init);
            visit(node.cond);
            visit(node.step);
            visit(node.body);
        }

        public void visit(WhileStmt node) {
            visit(node.cond);
            visit(node.body);
        }

        public void visit(ReturnStmt node) {
            visit(node.value);
        }

        public void visit(BinaryExpr node) {
            if (node.op == BinaryExpr.BinaryOp.ASSIGN) {
                arrayAssignFlag = true;
                visit(node.left);
                arrayAssignFlag = false;
                visit(node.right);
                return;
            }
            visit(node.left);
            visit(node.right);
        }

        public void visit(UnaryExpr node) {
            visit(node.expr);
        }

        public void visit(FunctionCall node) {
            if (node.caller instanceof MemberAccess) {
                visit(((MemberAccess) node.caller).container);
            }
            node.args.forEach(this::visit);
        }

        public void visit(ArrayAccess node) {
            if (arrayAssignFlag) {
                visit(node.container);
                arrayAssignFlag = false;
                visit(node.subscript);
                return;
            }
            visit(node.container);
            visit(node.subscript);
        }

        public void visit(NewExpr node) {
            node.dimArgs.forEach(this::visit);
        }

        public void visit(IdentifierExpr node) {
            assert node.var instanceof VariableSymbol;
            if (node.var.type instanceof ArrayType) {
                VariableSymbol arrayVar = (VariableSymbol) node.var;
                if (!arrayAssignFlag) {
                    int num = useMap.get(arrayVar) + 1;
                    useMap.put(arrayVar, num);
                }
            }
        }
    }
}
