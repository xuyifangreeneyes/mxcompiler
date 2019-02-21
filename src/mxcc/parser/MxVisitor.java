package mxcc.parser;

// Generated from Mx.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MxParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MxVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MxParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by the {@code class}
	 * labeled alternative in {@link MxParser#declaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClass(MxParser.ClassContext ctx);
	/**
	 * Visit a parse tree produced by the {@code func}
	 * labeled alternative in {@link MxParser#declaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunc(MxParser.FuncContext ctx);
	/**
	 * Visit a parse tree produced by the {@code var}
	 * labeled alternative in {@link MxParser#declaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVar(MxParser.VarContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitType(MxParser.TypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#nonArrayType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNonArrayType(MxParser.NonArrayTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#primitiveType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimitiveType(MxParser.PrimitiveTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#classType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassType(MxParser.ClassTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#varDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDecl(MxParser.VarDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#classDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassDecl(MxParser.ClassDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#functionDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionDecl(MxParser.FunctionDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#parameterDecls}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameterDecls(MxParser.ParameterDeclsContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#parameterDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameterDecl(MxParser.ParameterDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#parameterList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameterList(MxParser.ParameterListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#memberDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMemberDecl(MxParser.MemberDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#classConstructor}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassConstructor(MxParser.ClassConstructorContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#block}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(MxParser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by the {@code blockStat}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlockStat(MxParser.BlockStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code varDeclStat}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDeclStat(MxParser.VarDeclStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprStat}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprStat(MxParser.ExprStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ifStat}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfStat(MxParser.IfStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code loopStat}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLoopStat(MxParser.LoopStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code jumpStat}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitJumpStat(MxParser.JumpStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code blankStat}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlankStat(MxParser.BlankStatContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#ifStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfStatement(MxParser.IfStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code whileStat}
	 * labeled alternative in {@link MxParser#loopStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileStat(MxParser.WhileStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code forStat}
	 * labeled alternative in {@link MxParser#loopStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForStat(MxParser.ForStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code returnStat}
	 * labeled alternative in {@link MxParser#jumpStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturnStat(MxParser.ReturnStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code breakStat}
	 * labeled alternative in {@link MxParser#jumpStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBreakStat(MxParser.BreakStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code continueStat}
	 * labeled alternative in {@link MxParser#jumpStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitContinueStat(MxParser.ContinueStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code nonArrayCreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNonArrayCreator(MxParser.NonArrayCreatorContext ctx);
	/**
	 * Visit a parse tree produced by the {@code arrayCreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayCreator(MxParser.ArrayCreatorContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#constant}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstant(MxParser.ConstantContext ctx);
	/**
	 * Visit a parse tree produced by the {@code IdExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdExpr(MxParser.IdExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code MemberAccess}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMemberAccess(MxParser.MemberAccessContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BinaryExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryExpr(MxParser.BinaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ConstantExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstantExpr(MxParser.ConstantExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code FunctionCall}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionCall(MxParser.FunctionCallContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ParenExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParenExpr(MxParser.ParenExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryExpr(MxParser.UnaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ThisExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitThisExpr(MxParser.ThisExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NewCreator}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewCreator(MxParser.NewCreatorContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SuffixIncDec}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSuffixIncDec(MxParser.SuffixIncDecContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SubscriptAccess}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSubscriptAccess(MxParser.SubscriptAccessContext ctx);
}