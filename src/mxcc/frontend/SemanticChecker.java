package mxcc.frontend;

import mxcc.ast.*;
import mxcc.symbol.*;

import java.util.List;

import static mxcc.ast.BinaryExpr.BinaryOp.*;
import static mxcc.ast.UnaryExpr.UnaryOp.*;
import static mxcc.symbol.GlobalSymbolTable.*;

public class SemanticChecker extends AstBaseVisitor {

    private Scope globalScope;
    private FunctionSymbol currentFunction = null;
    private int loopLayers = 0;

    private boolean assignable(Type lhs, Type rhs) {
        if (lhs == null || rhs == null) return false;
        if (rhs == NULL_TYPE && !(lhs instanceof PrimitiveTypeSymbol)) return true;
        return lhs.isSameType(rhs);
    }

    private ClassSymbol getEnclosingClass(Scope s) {
        while (s != null) {
            if (s instanceof ClassSymbol) return (ClassSymbol)s;
            s = s.getEnclosingScope();
        }
        return null;
    }

    public void visit(Program node) {
        globalScope = node.scope;
        Symbol s = globalScope.resolve("main");
        if (!(s instanceof FunctionSymbol))
            throw new RuntimeException("Cannot find main function");
        FunctionSymbol mainFunc = (FunctionSymbol) s;
        if (!(mainFunc.type.isSameType(INT_TYPE)))
            throw new RuntimeException("Return type of main must be INT");
        if (mainFunc.getParamTypes().size() != 0)
            throw new RuntimeException("There is no parameter in main");
        node.decls.forEach(this::visit);
    }

    public void visit(TypeNode node) {
        if (node == null || node.type != null) return;
        Symbol base = globalScope.resolve(node.baseType);
        if (base instanceof BaseType) {
            if (node.dim == 0) node.type = (BaseType) base;
            else node.type = new ArrayType((BaseType) base, node.dim);
        } else {
            throw new RuntimeException("Cannot resolve type");
        }
    }

    public void visit(VariableDecl node) {
        if (node.init != null) visit(node.init);
        if (node.var == null) {
            visit(node.typeNode);
            node.var = new VariableSymbol(node.varName, node.typeNode.type);
            node.scope.define(node.var);
            node.var.def = node;
        }
        if (node.init != null && !(assignable(node.var.type, node.init.type))) {
            throw new RuntimeException("Cannot assign " + node.init.type.getName() +
                                       " to " + node.var.type.getName());
        }
    }

    public void visit(FunctionDecl node) {
        currentFunction = node.func;
        node.stmts.forEach(this::visit);
        currentFunction = null;
    }

    public void visit(ClassDecl node) {
        node.decls.forEach(this::visit);
        ClassSymbol classSymbol = node.classSymbol;
        int offset = 0;
        for (Symbol symbol : classSymbol.members.values()) {
            if (!(symbol instanceof VariableSymbol)) continue;
            VariableSymbol var = (VariableSymbol) symbol;
            classSymbol.layout.put(var.name, offset);
            offset += 4;
        }
        classSymbol.byteSize = offset;
    }

    public void visit(BlockStmt node) {
        if (node == null) return;
        node.stmts.forEach(this::visit);
    }

    public void visit(VariableDeclStmt node) {
        visit(node.decl);
    }

    public void visit(IfStmt node) {
        visit(node.cond);
        if (!(node.cond.type.isSameType(BOOL_TYPE))) {
            throw new RuntimeException("Condition expression in IfStmt should be BOOL");
        }
        visit(node.then);
        visit(node.otherwise);
    }

    public void visit(ForStmt node) {
        visit(node.init);
        visit(node.cond);
        if ((node.cond != null) && !(node.cond.type.isSameType(BOOL_TYPE)))
            throw new RuntimeException("Condition expression in ForStmt should be BOOL");
        visit(node.step);
        ++loopLayers;
        visit(node.body);
        --loopLayers;
    }

    public void visit(WhileStmt node) {
        visit(node.cond);
        if (!(node.cond.type.isSameType(BOOL_TYPE)))
            throw new RuntimeException("Condition expression in WhileStmt should be BOOL");
        ++loopLayers;
        visit(node.body);
        --loopLayers;
    }

    public void visit(ReturnStmt node) {
        if (currentFunction == null) {
            throw new RuntimeException("ReturnStmt should only appear in function");
        }
        if (node.value == null) {
            if (currentFunction.type != null && !currentFunction.type.isSameType(VOID_TYPE))
                throw new RuntimeException("Expect " + currentFunction.type.getName() + " but nothing returned");
        } else {
            visit(node.value);
            if (!(assignable(currentFunction.type, node.value.type))) {
                String expectReturnType = (currentFunction.type == null) ? "nothing" : currentFunction.type.getName();
                throw new RuntimeException("Expect " + expectReturnType + " but " + node.value.type.getName() + " returned");
            }
        }
    }

    public void visit(BreakStmt node) {
        if (loopLayers == 0)
            throw new RuntimeException("BreakStmt should only appear in loop.");
    }

    public void visit(ContinueStmt node) {
        if (loopLayers == 0)
            throw new RuntimeException("ContinueStmt should only appear in loop.");
    }

    public void visit(BinaryExpr node) {
        node.isLvalue = false;
        visit(node.left);
        visit(node.right);
        if (node.op == ASSIGN) {
            if (!node.left.isLvalue)
                throw new RuntimeException("Lhs must be lvalue in assignment");
            if (!assignable(node.left.type, node.right.type))
                throw new RuntimeException("Cannot assign " + node.right.type.getName() + " to " + node.left.type.getName());
            node.type = node.left.type;
            return;
        }
        if (!(node.left.type.isSameType(node.right.type))) {
            if ((node.op == EQ || node.op == NEQ) &&
                (node.left.type == NULL_TYPE || node.right.type == NULL_TYPE)) {
                node.type = BOOL_TYPE;
                return;
            }
            throw new RuntimeException("Left and right operands of " + node.op + " must be the same type");
        }
        Type operandType = node.left.type;
        switch (node.op) {
            case ADD:
                if (!operandType.isSameType(INT_TYPE) && !operandType.isSameType(STRING_TYPE))
                    throw new RuntimeException("Operands of" + node.op + "must be INT or STRING");
                node.type = operandType;
                return;
            case SUB:
            case MUL:
            case DIV:
            case MOD:
            case LSFT:
            case RSFT:
            case BIT_AND:
            case BIT_OR:
            case BIT_XOR:
                if (!operandType.isSameType(INT_TYPE))
                    throw new RuntimeException("Operands of " + node.op + " must be INT");
                node.type = INT_TYPE;
                return;
            case LT:
            case GT:
            case LE:
            case GE:
                if (!operandType.isSameType(INT_TYPE) && !operandType.isSameType(STRING_TYPE))
                    throw new RuntimeException("Operands of" + node.op + "must be INT or STRING");
                node.type = BOOL_TYPE;
                return;
            case AND:
            case OR:
                if (!operandType.isSameType(BOOL_TYPE))
                    throw new RuntimeException("Operands of " + node.op + " must be BOOL");
                node.type = BOOL_TYPE;
                return;
            case EQ:
            case NEQ:
                node.type = BOOL_TYPE;
        }
    }

    public void visit(UnaryExpr node) {
        visit(node.expr);
        switch(node.op) {
            case INC:
            case DEC:
            case INC_SUF:
            case DEC_SUF:
                if (!node.expr.type.isSameType(INT_TYPE))
                    throw new RuntimeException("Operand of " + node.op + " must be INT");
                if (!node.expr.isLvalue)
                    throw new RuntimeException("Operand of " + node.op + " must be lvalue");
                node.isLvalue = (node.op == INC || node.op == DEC);
                node.type = INT_TYPE;
                return;
            case POS:
            case NEG:
            case BIT_NOT:
                if (!node.expr.type.isSameType(INT_TYPE))
                    throw new RuntimeException("Operand of " + node.op + " must be INT");
                node.isLvalue = false;
                node.type = INT_TYPE;
                return;
            case NOT:
                if (!node.expr.type.isSameType(BOOL_TYPE))
                    throw new RuntimeException("Operand of " + node.op + " must be BOOL");
                 node.isLvalue = false;
                 node.type = BOOL_TYPE;
        }
    }

    public void visit(FunctionCall node) {
        visit(node.caller);
        if (!(node.caller.type instanceof FunctionSymbol))
            throw new RuntimeException("Caller is not a function");
        node.func = (FunctionSymbol) node.caller.type;
        if (node.func.isConstructor())
            throw new RuntimeException("Cannot call constructor out of NewExpr");
        List<Type> paramTypes = node.func.getParamTypes();
        if (paramTypes.size() != node.args.size())
            throw new RuntimeException("Wrong number of arguments when calling " + node.func.name);
        for (int i = 0; i < node.args.size(); ++i) {
            visit(node.args.get(i));
            if (!assignable(paramTypes.get(i), node.args.get(i).type))
                throw new RuntimeException("Cannot assign " + node.args.get(i).type.getName() +
                                           " to " + paramTypes.get(i).getName());
        }
        node.isLvalue = false;
        node.type = node.func.type;
    }

    public void visit(ArrayAccess node) {
        visit(node.container);
        if (!(node.container.type instanceof ArrayType))
            throw new RuntimeException("Container of ArrayAccess must be ArrayType");
        visit(node.subscript);
        if (!(node.subscript.type.isSameType(INT_TYPE)))
            throw new RuntimeException("Subscript of ArrayAccess must be INT");
        node.isLvalue = true;
        ArrayType containerType = (ArrayType) node.container.type;
        if (containerType.dim == 1) node.type = containerType.baseType;
        else node.type = new ArrayType(containerType.baseType, containerType.dim - 1);
    }

    public void visit(MemberAccess node) {
        visit(node.container);
        if (node.container.type instanceof ClassSymbol) {
            ClassSymbol scope = (ClassSymbol) node.container.type;
            Symbol s = scope.localResolve(node.member.name);
            if (s instanceof VariableSymbol) {
                // maybe cast is not needed
                node.type = ((VariableSymbol) s).type;
                node.isLvalue = true;
                return;
            }
            if (s instanceof FunctionSymbol) {
                node.isLvalue = false;
                node.type = (FunctionSymbol) s;
                return;
            }
            throw new RuntimeException("Cannot resolve " + node.member.name + " in class " + scope.getName());
        } else {
            if (node.container.type.isSameType(STRING_TYPE)) {
                Symbol s = node.scope.resolve("string." + node.member.name);
                if (s instanceof FunctionSymbol) {
                    node.isLvalue = false;
                    node.type = (FunctionSymbol) s;
                    return;
                }
                throw new RuntimeException("Cannot resolve " + node.member.name + " in string's builtin functions");
            }
            if (node.container.type instanceof ArrayType) {
                Symbol s = node.scope.resolve("array." + node.member.name);
                if (s instanceof FunctionSymbol) {
                    node.isLvalue = false;
                    node.type = (FunctionSymbol) s;
                    return;
                }
                throw new RuntimeException("Cannot resolve " + node.member.name + " in array's builtin functions");
            }
        }
        throw new RuntimeException("Container of MemberAccess is not class, string or array");
    }


    public void visit(NewExpr node) {
        Symbol s = globalScope.resolve(node.baseType);
        if (!(s instanceof BaseType))
            throw new RuntimeException("Cannot find class constructor");
        for (Expr dimArg : node.dimArgs) {
            visit(dimArg);
            if (!(dimArg.type.isSameType(INT_TYPE)))
                throw new RuntimeException("Dimension expression of NewExpr should be INT");
        }
        node.isLvalue = false;
        BaseType baseType = (BaseType) s;
        node.type = (node.dim == 0) ? baseType : new ArrayType(baseType, node.dim);
    }

    public void visit(IdentifierExpr node) {
        if (node.name.equals("this")) {
            ClassSymbol theClass = getEnclosingClass(node.scope);
            node.isLvalue = false;
            node.type = theClass;
            return;
        }
        node.var = node.scope.resolve(node.name);
        if (node.var instanceof VariableSymbol) {
            node.isLvalue = true;
            // maybe cast is not needed
            node.type = ((VariableSymbol) node.var).type;
            return;
        }
        if (node.var instanceof FunctionSymbol) {
            node.isLvalue = false;
            node.type = (FunctionSymbol) node.var;
            return;
        }
        throw new RuntimeException("Cannot resolve " + node.name + " in IdentifierExpr");
    }

    public void visit(IntConst node) {
        node.isLvalue = false;
        node.type = INT_TYPE;
    }

    public void visit(BoolConst node) {
        node.isLvalue = false;
        node.type = BOOL_TYPE;
    }

    public void visit(StringConst node) {
        node.isLvalue = false;
        node.type = STRING_TYPE;
    }

    public void visit(NullLiteral node) {
        node.isLvalue = false;
        node.type = NULL_TYPE;
    }
}
