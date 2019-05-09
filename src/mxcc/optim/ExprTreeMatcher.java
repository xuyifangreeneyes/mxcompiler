package mxcc.optim;

import mxcc.ast.*;
import mxcc.symbol.VariableSymbol;

import java.util.*;

import static mxcc.symbol.GlobalSymbolTable.BOOL_TYPE;

// This creates Identifier whose isLvalid is unset.
public class ExprTreeMatcher extends AstBaseVisitor {
    private Program ast;

    public ExprTreeMatcher(Program ast) {
        this.ast = ast;
    }

    public void work() {
        visit(ast);
    }

    public void visit(Program node) {
        for (Decl decl : node.decls) {
            if (decl instanceof VariableDecl) continue;
            visit(decl);
        }
    }

    private void check(List<Stmt> stmts) {
        Map<ExprTree, VariableSymbol> exprTreeMap = new HashMap<>();
        for (Stmt stmt : stmts) {
            if (stmt instanceof VariableDeclStmt) {
                VariableDecl variableDecl = ((VariableDeclStmt) stmt).decl;
                VariableSymbol dstVar = variableDecl.var;
                if (!dstVar.type.isSameType(BOOL_TYPE)) continue;
                ExprTree exprTree = new ExprTree(variableDecl.init);
                if (!exprTree.isValid()) continue;
                if (exprTreeMap.containsKey(exprTree)) {
                    VariableSymbol var = exprTreeMap.get(exprTree);
                    IdentifierExpr idExpr = new IdentifierExpr(var.name, variableDecl.scope);
                    idExpr.var = var;
                    idExpr.type = BOOL_TYPE;
                    // Here Expr.isLvalue isn't set!
                    variableDecl.init = idExpr;
                } else {
                    exprTreeMap.put(exprTree, dstVar);
                }
            } else if (stmt instanceof BinaryExpr) {
                BinaryExpr assign = (BinaryExpr) stmt;
                if (assign.op != BinaryExpr.BinaryOp.ASSIGN) continue;
                if (!(assign.left instanceof IdentifierExpr)) continue;
                assert ((IdentifierExpr) assign.left).var instanceof VariableSymbol;
                VariableSymbol dstVar = (VariableSymbol) ((IdentifierExpr) assign.left).var;
                if (!dstVar.type.isSameType(BOOL_TYPE)) continue;
                ExprTree exprTree = new ExprTree(assign.right);
                if (!exprTree.isValid()) continue;
                if (exprTreeMap.containsKey(exprTree)) {
                    VariableSymbol var = exprTreeMap.get(exprTree);
                    IdentifierExpr idExpr = new IdentifierExpr(var.name, assign.scope);
                    idExpr.var = var;
                    idExpr.type = BOOL_TYPE;
                    // Here Expr.isLvalue isn't set!
                    assign.right = idExpr;
                } else {
                    exprTreeMap.put(exprTree, dstVar);
                }
            }
        }
    }

    public void visit(FunctionDecl node) {
        check(node.stmts);
        node.stmts.forEach(this::visit);
    }

    public void visit(ClassDecl node) {
        for (Decl decl : node.decls) {
            if (decl instanceof FunctionDecl) {
                visit(decl);
            }
        }
    }

    public void visit(BlockStmt node) {
        check(node.stmts);
        node.stmts.forEach(this::visit);
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

    private static class ExprTree extends AstBaseVisitor {
        static private int counter;
        static private Map<BinaryExpr.BinaryOp, Integer> opMap = new HashMap<>();
        static private Map<Integer, Integer> intMap = new HashMap<>();
        static private Map<Boolean, Integer> boolMap = new HashMap<>();
        static private Map<VariableSymbol, Integer> varMap = new HashMap<>();

        static {
            boolMap.put(false, 0);
            boolMap.put(true, 1);
            counter = 2;
            for (BinaryExpr.BinaryOp op : BinaryExpr.BinaryOp.values()) {
                if (op == BinaryExpr.BinaryOp.ASSIGN) continue;
                opMap.put(op, counter);
                ++counter;
            }
        }

        private Expr expr;
        private boolean valid = true;
        private List<Integer> preorder = new ArrayList<>();
        private List<Integer> inorder = new ArrayList<>();

        public ExprTree(Expr expr) {
            this.expr = expr;
            visit(expr);
        }

        public boolean isValid() {
            return valid;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof ExprTree)) return false;
            ExprTree other = (ExprTree) obj;
            if (!this.valid || !other.valid || this.preorder.size() != other.preorder.size()
                    || this.inorder.size() != other.inorder.size()) {
                return false;
            }
            for (int i = 0; i < this.preorder.size(); ++i) {
                if (!this.preorder.get(i).equals(other.preorder.get(i))) return false;
            }
            for (int i = 0; i < this.inorder.size(); ++i) {
                if (!this.inorder.get(i).equals(other.inorder.get(i))) return false;
            }
            return true;
        }

        @Override
        public int hashCode() {
            int z = 1;
            int mod = 1000000007;
            for (Integer x : preorder) {
                z = (31 * z + x) % mod;
            }
            for (Integer x : inorder) {
                z = (31 * z + x) % mod;
            }
            return z;
        }

        private int calc(BinaryExpr.BinaryOp op) {
            assert opMap.containsKey(op);
            return opMap.get(op);
        }

        private int calc(int i) {
            if (!intMap.containsKey(i)) {
                intMap.put(i, counter);
                ++counter;
            }
            return intMap.get(i);
        }

        private int calc(boolean b) {
            return boolMap.get(b);
        }

        private int calc(VariableSymbol var) {
            if (!varMap.containsKey(var)) {
                varMap.put(var, counter);
                ++counter;
            }
            return varMap.get(var);
        }

        public void visit(BinaryExpr node) {
            if (!valid) return;
            if (node.op == BinaryExpr.BinaryOp.ASSIGN) {
                valid = false;
                return;
            }
            int x = calc(node.op);
            preorder.add(x);
            visit(node.left);
            inorder.add(x);
            visit(node.right);
        }

        public void visit(UnaryExpr node) {
            valid = false;
        }

        public void visit(FunctionCall node) {
            valid = false;
        }
        public void visit(ArrayAccess node) {
            valid = false;
        }

        public void visit(MemberAccess node) {
            valid = false;
        }

        public void visit(NewExpr node) {
            valid = false;
        }

        public void visit(IdentifierExpr node) {
            if (!valid) return;
            assert node.var instanceof VariableSymbol;
            int x = calc((VariableSymbol) node.var);
            preorder.add(x);
            inorder.add(x);
        }

        public void visit(IntConst node) {
            if (!valid) return;
            int x = calc(node.value);
            preorder.add(x);
            inorder.add(x);
        }

        public void visit(BoolConst node) {
            if (!valid) return;
            int x = calc(node.value);
            preorder.add(x);
            inorder.add(x);
        }

        public void visit(StringConst node) {
            valid = false;
        }

        public void visit(NullLiteral node) {
            valid = false;
        }

    }
}
