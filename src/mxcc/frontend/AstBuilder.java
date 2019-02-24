package mxcc.frontend;

import mxcc.ast.*;
import mxcc.parser.MxParser;
import mxcc.parser.MxBaseVisitor;

import mxcc.symbol.*;
import org.antlr.v4.runtime.tree.ParseTree;

import java.util.List;
import java.util.ArrayList;


public class AstBuilder extends MxBaseVisitor<AstNode> {
    private Scope currentScope;

    public Program build(MxParser.ProgramContext ctx) {
        return (Program) visit(ctx);
    }

    @Override
    public AstNode visitProgram(MxParser.ProgramContext ctx) {
        currentScope = new GlobalSymbolTable();
        List<Decl> decls = new ArrayList<>();
        for (ParseTree child : ctx.declaration()) {
            AstNode childNode = visit(child);
            if (childNode instanceof Decl) {
                decls.add((Decl) childNode);
            } else {
                throw new RuntimeException("Get unexpected statement in global scope");
            }
        }
        Program node = new Program(decls, currentScope);
        currentScope = currentScope.getEnclosingScope();
        return node;
    }

    @Override
    public AstNode visitVarDecl(MxParser.VarDeclContext ctx) {
        if (currentScope instanceof ClassSymbol) {
            VariableSymbol var = new VariableSymbol(ctx.Identifier().getText(), null);
            VariableDecl node = new VariableDecl((TypeNode) visit(ctx.type()), var,
                    (ctx.expr() == null) ? null : (Expr) visit(ctx.expr()), currentScope);
            currentScope.define(var);
            var.def = node;
            return node;
        }
        return new VariableDecl((TypeNode) visit(ctx.type()), ctx.Identifier().getText(),
                                (ctx.expr() == null) ? null : (Expr) visit(ctx.expr()), currentScope);

    }

    @Override
    public AstNode visitClassDecl(MxParser.ClassDeclContext ctx) {
        ClassSymbol classSymbol = new ClassSymbol(ctx.Identifier().getText(), currentScope);
        currentScope.define(classSymbol);
        currentScope = classSymbol;
        List<Decl> decls = new ArrayList<>();
        for (ParseTree child : ctx.memberDecl()) {
            AstNode childNode = visit(child);
            if (childNode instanceof Decl) {
                decls.add((Decl) childNode);
            } else {
                throw new RuntimeException("Get unexpected statement in class");
            }
        }
        ClassDecl node = new ClassDecl(classSymbol, decls, currentScope);
        classSymbol.def = node;
        currentScope = currentScope.getEnclosingScope();
        return node;
    }

    @Override
    public AstNode visitFunctionDecl(MxParser.FunctionDeclContext ctx) {
        if (currentScope instanceof ClassSymbol && ctx.Identifier().getText().equals(((ClassSymbol) currentScope).getName()))
            throw new RuntimeException("Member function cannot hava the same name with class");
        FunctionSymbol func = new FunctionSymbol(ctx.Identifier().getText(), currentScope);
        currentScope.define(func);
        currentScope = func;
        TypeNode retType;
        if (ctx.VOID() != null) {
            retType = new TypeNode("void", 0, currentScope);
        } else {
            retType = (TypeNode) visit(ctx.type());
        }
        List<VariableDecl> paramList = new ArrayList<>();
        MxParser.ParameterDeclsContext paramDecls = ctx.parameterDecls();
        if (paramDecls != null) {
            for (ParseTree child : paramDecls.parameterDecl()) {
                AstNode childNode = visit(child);
                if (childNode instanceof VariableDecl) {
                    paramList.add((VariableDecl) childNode);
                } else {
                    throw new RuntimeException("Get unexpected parameter declaration in function");
                }
            }
        }
        List<Stmt> stmts = new ArrayList<>();
        MxParser.BlockContext functionBody = ctx.block();
        for (ParseTree child : functionBody.statement()) {
            AstNode childNode = visit(child);
            if (childNode instanceof Stmt) {
                stmts.add((Stmt) childNode);
            } else {
                throw new RuntimeException("Get unexpected statement in function");
            }
        }
        FunctionDecl node = new FunctionDecl(func, retType, paramList, stmts, currentScope);
        func.def = node;
        currentScope = currentScope.getEnclosingScope();
        return node;
    }

    @Override
    public AstNode visitParameterDecl(MxParser.ParameterDeclContext ctx) {
        VariableSymbol var = new VariableSymbol(ctx.Identifier().getText(), null);
        VariableDecl node = new VariableDecl((TypeNode) visit(ctx.type()), var, null, currentScope);
        currentScope.define(var);
        var.def = node;
        return node;
    }

    @Override
    public AstNode visitClassConstructor(MxParser.ClassConstructorContext ctx) {
        String constructorName = ctx.Identifier().getText();
        if (!constructorName.equals(currentScope.getScopeName())) {
            throw new RuntimeException("Constructor's name is not consistent with class");
        }
        FunctionSymbol func = new FunctionSymbol(constructorName, currentScope);
        currentScope.define(func);
        currentScope = func;
        // constructor has no retType and params
        List<Stmt> stmts = new ArrayList<>();
        MxParser.BlockContext functionBody = ctx.block();
        for (ParseTree child : functionBody.statement()) {
            AstNode childNode = visit(child);
            if (childNode instanceof Stmt) {
                stmts.add((Stmt) childNode);
            } else {
                throw new RuntimeException("Get unexpected statement in constructor");
            }
        }
        FunctionDecl node = new FunctionDecl(func, null, new ArrayList<>(), stmts, currentScope);
        func.def = node;
        currentScope = currentScope.getEnclosingScope();
        return node;
    }

    @Override
    public AstNode visitType(MxParser.TypeContext ctx) {
        return new TypeNode(ctx.nonArrayType().getText(), ctx.LBRACK().size(), currentScope);
    }

    @Override
    public AstNode visitBlock(MxParser.BlockContext ctx) {
        currentScope = new LocalScope(currentScope);
        List<Stmt> stmts = new ArrayList<>();
        for (ParseTree child : ctx.statement()) {
            AstNode childNode = visit(child);
            if (childNode instanceof Stmt) {
                stmts.add((Stmt) childNode);
            }
        }
        BlockStmt node = new BlockStmt(stmts, currentScope);
        currentScope = currentScope.getEnclosingScope();
        return node;
    }

    @Override
    public AstNode visitVarDeclStat(MxParser.VarDeclStatContext ctx) {
        return new VariableDeclStmt((VariableDecl) visit(ctx.varDecl()), currentScope);
    }

    @Override
    public AstNode visitExprStat(MxParser.ExprStatContext ctx) {
        return visit(ctx.expr());
    }

    private BlockStmt packStmtAsBlock(MxParser.StatementContext ctx) {
        if (ctx instanceof MxParser.BlockStatContext)
            return (BlockStmt) visit(((MxParser.BlockStatContext) ctx).block());
        currentScope = new LocalScope(currentScope);
        List<Stmt> innerStmts = new ArrayList<>();
        innerStmts.add((Stmt) visit(ctx));
        BlockStmt blockStmt = new BlockStmt(innerStmts, currentScope);
        currentScope = currentScope.getEnclosingScope();
        return blockStmt;
    }

    @Override
    public AstNode visitForStat(MxParser.ForStatContext ctx) {
        Expr init = (ctx.init == null) ? null : (Expr) visit(ctx.init);
        Expr cond = (ctx.cond == null) ? null : (Expr) visit(ctx.cond);
        Expr step = (ctx.step == null) ? null : (Expr) visit(ctx.step);
        return new ForStmt(init, cond, step, packStmtAsBlock(ctx.statement()), currentScope);
    }

    @Override
    public AstNode visitWhileStat(MxParser.WhileStatContext ctx) {
        return new WhileStmt((Expr) visit(ctx.expr()), packStmtAsBlock(ctx.statement()), currentScope);
    }

    @Override
    public AstNode visitIfStatement(MxParser.IfStatementContext ctx) {
        return new IfStmt((Expr) visit(ctx.expr()), packStmtAsBlock(ctx.statement(0)),
                ctx.statement().size() == 1 ? null : packStmtAsBlock(ctx.statement(1)), currentScope);
    }

    @Override
    public AstNode visitReturnStat(MxParser.ReturnStatContext ctx) {
        return new ReturnStmt((ctx.expr() == null) ? null : (Expr) visit(ctx.expr()), currentScope);
    }

    @Override
    public AstNode visitBreakStat(MxParser.BreakStatContext ctx) {
        return new BreakStmt(currentScope);
    }

    @Override
    public AstNode visitContinueStat(MxParser.ContinueStatContext ctx) {
        return new ContinueStmt(currentScope);
    }

    @Override
    public AstNode visitBlankStat(MxParser.BlankStatContext ctx) {
        return new EmptyStmt(currentScope);
    }

    @Override
    public AstNode visitBinaryExpr(MxParser.BinaryExprContext ctx) {
        BinaryExpr.BinaryOp op;
        switch (ctx.op.getType()) {
            case MxParser.MUL: op = BinaryExpr.BinaryOp.MUL; break;
            case MxParser.DIV: op = BinaryExpr.BinaryOp.DIV; break;
            case MxParser.MOD: op = BinaryExpr.BinaryOp.MOD; break;
            case MxParser.ADD: op = BinaryExpr.BinaryOp.ADD; break;
            case MxParser.SUB: op = BinaryExpr.BinaryOp.SUB; break;
            case MxParser.LSFT: op = BinaryExpr.BinaryOp.LSFT; break;
            case MxParser.RSFT: op = BinaryExpr.BinaryOp.RSFT; break;
            case MxParser.LT: op = BinaryExpr.BinaryOp.LT; break;
            case MxParser.GT: op = BinaryExpr.BinaryOp.GT; break;
            case MxParser.LE: op = BinaryExpr.BinaryOp.LE; break;
            case MxParser.GE: op = BinaryExpr.BinaryOp.GE; break;
            case MxParser.EQ: op = BinaryExpr.BinaryOp.EQ; break;
            case MxParser.NEQ: op = BinaryExpr.BinaryOp.NEQ; break;
            case MxParser.BITAND: op = BinaryExpr.BinaryOp.BIT_AND; break;
            case MxParser.BITOR: op = BinaryExpr.BinaryOp.BIT_OR; break;
            case MxParser.BITXOR: op = BinaryExpr.BinaryOp.BIT_XOR; break;
            case MxParser.AND: op = BinaryExpr.BinaryOp.AND; break;
            case MxParser.OR: op = BinaryExpr.BinaryOp.OR; break;
            case MxParser.ASSIGN: op = BinaryExpr.BinaryOp.ASSIGN; break;
            default: throw new RuntimeException("Get unexpected operator at BinaryExpr" + ctx.op.getText());
        }
        return new BinaryExpr(op, (Expr) visit(ctx.left), (Expr) visit(ctx.right), currentScope);
    }

    @Override
    public AstNode visitUnaryExpr(MxParser.UnaryExprContext ctx) {
        UnaryExpr.UnaryOp op;
        switch (ctx.op.getType()) {
            case MxParser.INC: op = UnaryExpr.UnaryOp.INC; break;
            case MxParser.DEC: op = UnaryExpr.UnaryOp.DEC; break;
            case MxParser.ADD: op = UnaryExpr.UnaryOp.POS; break;
            case MxParser.SUB: op = UnaryExpr.UnaryOp.NEG; break;
            case MxParser.NOT: op = UnaryExpr.UnaryOp.NOT; break;
            case MxParser.BITNOT: op = UnaryExpr.UnaryOp.BIT_NOT; break;
            default: throw new RuntimeException("Get unexpected operator at UnaryExpr");
        }
        return new UnaryExpr(op, (Expr) visit(ctx.expr()), currentScope);
    }

    @Override
    public AstNode visitSuffixIncDec(MxParser.SuffixIncDecContext ctx) {
        UnaryExpr.UnaryOp op;
        switch (ctx.op.getType()) {
            case MxParser.INC: op = UnaryExpr.UnaryOp.INC_SUF; break;
            case MxParser.DEC: op = UnaryExpr.UnaryOp.DEC_SUF; break;
            default: throw new RuntimeException("Get unexpected operator at UnaryExpr");
        }
        return new UnaryExpr(op, (Expr) visit(ctx.expr()), currentScope);
    }

    @Override
    public AstNode visitConstant(MxParser.ConstantContext ctx) {
        String literal = ctx.constantType.getText();
        switch (ctx.constantType.getType()) {
            case MxParser.IntConstant: return new IntConst(Integer.valueOf(literal), currentScope);
            case MxParser.BoolConstant: return new BoolConst(Boolean.valueOf(literal), currentScope);
            case MxParser.StringConstant: return new StringConst(literal.substring(1, literal.length() - 1), currentScope);
            case MxParser.NULL: return new NullLiteral(currentScope);
            default: throw new RuntimeException("Get unexpected constant type");
        }
    }

    @Override
    public AstNode visitIdExpr(MxParser.IdExprContext ctx) {
        return new IdentifierExpr(ctx.Identifier().getText(), currentScope);
    }

    @Override
    public AstNode visitSubscriptAccess(MxParser.SubscriptAccessContext ctx) {
        return new ArrayAccess((Expr) visit(ctx.array), (Expr) visit(ctx.subscript), currentScope);
    }

    @Override
    public AstNode visitMemberAccess(MxParser.MemberAccessContext ctx) {
        return new MemberAccess((Expr) visit(ctx.expr()),
                                new IdentifierExpr(ctx.Identifier().getText(), currentScope),
                                currentScope);
    }

    @Override
    public AstNode visitFunctionCall(MxParser.FunctionCallContext ctx) {
        List<Expr> args = new ArrayList<>();
        MxParser.ParameterListContext paramList = ctx.parameterList();
        if (paramList != null) {
            for (ParseTree child : paramList.expr()) {
                AstNode childNode = visit(child);
                if (childNode instanceof Expr) {
                    args.add((Expr) childNode);
                } else {
                    throw new RuntimeException("Get unexpected parameter in function call");
                }
            }
        }
        return new FunctionCall((Expr) visit(ctx.expr()), args, currentScope);
    }

    @Override
    public AstNode visitNewCreator(MxParser.NewCreatorContext ctx) {
        return visit(ctx.creator());
    }

    @Override
    public AstNode visitErrorCreator(MxParser.ErrorCreatorContext ctx) {
        throw new RuntimeException("Array dimension specification in new expression should be left aligned");
    }

    @Override
    public AstNode visitNonArrayCreator(MxParser.NonArrayCreatorContext ctx) {
        return new NewExpr(ctx.nonArrayType().getText(), new ArrayList<>(), 0, currentScope);
    }

    @Override
    public AstNode visitArrayCreator(MxParser.ArrayCreatorContext ctx) {
        List<Expr> args = new ArrayList<>();
        for (ParseTree child : ctx.expr()) {
            AstNode childNode = visit(child);
            if (childNode instanceof Expr) {
                args.add((Expr)childNode);
            } else {
                throw new RuntimeException("Get unexpected subscript when creating an array");
            }
        }
        return new NewExpr(ctx.nonArrayType().getText(), args, ctx.LBRACK().size(), currentScope);
    }

    @Override
    public AstNode visitParenExpr(MxParser.ParenExprContext ctx) {
        return visit(ctx.expr());
    }

    @Override
    public AstNode visitThisExpr(MxParser.ThisExprContext ctx) {
        return new IdentifierExpr("this", currentScope);
    }

}
