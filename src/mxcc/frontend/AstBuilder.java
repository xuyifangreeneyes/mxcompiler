package mxcc.frontend;

import mxcc.ast.*;
import mxcc.parser.MxParser;
import mxcc.parser.MxBaseVisitor;

import mxcc.symbol.*;
import org.antlr.v4.runtime.tree.ParseTree;

import java.util.Arrays;
import java.util.List;
import java.util.ArrayList;


public class AstBuilder extends MxBaseVisitor<AstNode> {
    private Scope currentScope;

    @Override
    public AstNode visitProgram(MxParser.ProgramContext ctx) {
        currentScope = new GlobalScope();
        List<Decl> decls = new ArrayList<>();
        for (ParseTree child : ctx.declaration()) {
            AstNode childNode = visit(child);
            if (childNode instanceof Decl) {
                decls.add((Decl) childNode);
            } else {
                //TODO: throw a compile error
            }
        }
        Program node = new Program(decls, currentScope);
        currentScope = currentScope.getEnclosingScope();
        return node;
    }

    @Override
    public AstNode visitVarDecl(MxParser.VarDeclContext ctx) {
        VariableSymbol var = new VariableSymbol(ctx.Identifier().getText());
        currentScope.define(var);
        return new VariableDecl((TypeNode) visit(ctx.type()), var,
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
                //TODO: throw a compile error
            }
        }
        ClassDecl node = new ClassDecl(classSymbol, decls, currentScope);
        classSymbol.def = node;
        currentScope = currentScope.getEnclosingScope();
        return node;
    }

    @Override
    public AstNode visitFunctionDecl(MxParser.FunctionDeclContext ctx) {
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
        for (ParseTree child : paramDecls.parameterDecl()) {
            AstNode childNode = visit(child);
            if (childNode instanceof VariableDecl) {
                paramList.add((VariableDecl) childNode);
            } else {
                //TODO: throw a compile error
            }
        }
        List<Stmt> stmts = new ArrayList<>();
        MxParser.BlockContext functionBody = ctx.block();
        for (ParseTree child : functionBody.statement()) {
            AstNode childNode = visit(child);
            if (childNode instanceof Stmt) {
                stmts.add((Stmt) childNode);
            } else {
                //TODO: throw a compile error
            }
        }
        FunctionDecl node = new FunctionDecl(func, retType, paramList, stmts, currentScope);
        func.def = node;
        currentScope = currentScope.getEnclosingScope();
        return node;
    }

    @Override
    public AstNode visitClassConstructor(MxParser.ClassConstructorContext ctx) {
        String constructorName = ctx.Identifier().getText();
        if (!constructorName.equals(currentScope.getScopeName())) {
            //TODO: throw a error: constructor's name is not consistent with class
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
                //TODO: throw a compile error
            }
        }
        FunctionDecl node = new FunctionDecl(func, null, null, stmts, currentScope);
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
    public AstNode visitForStat(MxParser.ForStatContext ctx) {
        return new ForStmt((Expr) visit(ctx.init), (Expr) visit(ctx.cond),
                (Expr) visit(ctx.step), (Stmt) visit(ctx.statement()), currentScope);
    }

    @Override
    public AstNode visitWhileStat(MxParser.WhileStatContext ctx) {
        return new WhileStmt((Expr) visit(ctx.expr()), (Stmt) visit(ctx.statement()), currentScope);
    }

    @Override
    public AstNode visitIfStatement(MxParser.IfStatementContext ctx) {
        return new IfStmt((Expr) visit(ctx.expr()), (Stmt) visit(ctx.statement(0)),
                ctx.statement(1) == null ? null : (Stmt) visit(ctx.statement(1)), currentScope);
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
    public AstNode visitBinaryExpr(MxParser.BinaryExprContext ctx) {
        BinaryExpr.BinaryOp op;
        switch (ctx.op.getType()) {
            case MxParser.MUL: op = BinaryExpr.BinaryOp.MUL; break;
            case MxParser.DIV: op = BinaryExpr.BinaryOp.DIV; break;
            case MxParser.MOD: op = BinaryExpr.BinaryOp.MOD; break;
            case MxParser.ADD: op = BinaryExpr.BinaryOp.ADD; break;
            case MxParser.SUB: op = BinaryExpr.BinaryOp.SUB; break;
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
            default: //TODO: throw a compile error
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
            default: //TODO: throw a compile error
        }
        return new UnaryExpr(op, (Expr) visit(ctx.expr()), currentScope);
    }

    @Override
    public AstNode visitSuffixIncDec(MxParser.SuffixIncDecContext ctx) {
        UnaryExpr.UnaryOp op;
        switch (ctx.op.getType()) {
            case MxParser.INC: op = UnaryExpr.UnaryOp.INC_SUF; break;
            case MxParser.DEC: op = UnaryExpr.UnaryOp.DEC_SUF; break;
            default: //TODO: throw a compile error
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
            default: //TODO: throw a compile error
        }
        return null;
    }

}
