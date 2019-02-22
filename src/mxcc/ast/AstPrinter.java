package mxcc.ast;

import java.io.PrintStream;

public class AstPrinter extends AstBaseVisitor {
    private PrintStream out;
    private String indent = "";

    public AstPrinter(PrintStream out) {
        this.out = out;
    }

    public void print(AstNode node) {
        if (node == null) return;
        node.accept(this);
    }

    private void addIndent() {
        indent += "\t";
    }

    private void subIndent() {
        indent = indent.substring(0, indent.length() - 1);
    }

    private void println(String s) { this.out.println(indent + s); }

    private String getNodeName(AstNode node) {
        return "<" + node.getClass().getSimpleName() + ">";
    }

    private String getTypeName(TypeNode node) {
        if (node == null) return "";
        String typeName = node.baseType;
        for (int i = 0; i < node.dim; ++i) {
            typeName += "[]";
        }
        return typeName;
    }

    public void visit(Program node) {
        println(getNodeName(node));
        addIndent();
        node.decls.forEach(this::print);
        subIndent();
    }

    public void visit(VariableDecl node) {
        println(getNodeName(node) + " " + getTypeName(node.typeNode) + " " + node.var.name);
        addIndent();
        print(node.init);
        subIndent();
    }

    public void visit(FunctionDecl node) {
        StringBuilder s = new StringBuilder(getNodeName(node) + " " + getTypeName(node.retType) + " " + node.func.name);
        for (VariableDecl paramDecl : node.paramList) {
            s.append(" ").append(getTypeName(paramDecl.typeNode)).append(" ").append(paramDecl.var.name);
        }
        println(s.toString());
        addIndent();
        node.stmts.forEach(this::print);
        subIndent();
    }

    public void visit(ClassDecl node) {
        println(getNodeName(node) + " " + node.classSymbol.name);
        addIndent();
        node.decls.forEach(this::print);
        subIndent();
    }

    public void visit(BlockStmt node) {
        println(getNodeName(node));
        addIndent();
        node.stmts.forEach(this::print);
        subIndent();
    }

    public void visit(VariableDeclStmt node) {
        println(getNodeName(node));
        addIndent();
        print(node.decl);
        subIndent();
    }

    public void visit(IfStmt node) {
        println(getNodeName(node));
        addIndent();
        print(node.cond);
        print(node.then);
        subIndent();
    }

    public void visit(ForStmt node) {
        println(getNodeName(node));
        addIndent();
        print(node.init);
        print(node.cond);
        print(node.step);
        print(node.body);
        subIndent();
    }

    public void visit(WhileStmt node) {
        println(getNodeName(node));
        addIndent();
        print(node.cond);
        print(node.body);
        subIndent();
    }

    public void visit(ReturnStmt node) {
        println(getNodeName(node));
        addIndent();
        print(node.value);
        subIndent();
    }

    public void visit(BreakStmt node) {
        println(getNodeName(node));
    }

    public void visit(ContinueStmt node) {
        println(getNodeName(node));
    }

    public void visit(EmptyStmt node) {
        println(getNodeName(node));
    }

    public void visit(BinaryExpr node) {
        println(getNodeName(node) + " " + node.op);
        addIndent();
        print(node.left);
        print(node.right);
        subIndent();
    }

    public void visit(UnaryExpr node) {
        println(getNodeName(node) + " " + node.op);
        addIndent();
        print(node.expr);
        subIndent();
    }

    public void visit(FunctionCall node) {
        println(getNodeName(node));
        addIndent();
        print(node.caller);
        node.args.forEach(this::print);
        subIndent();
    }

    public void visit(ArrayAccess node) {
        println(getNodeName(node));
        addIndent();
        print(node.container);
        print(node.subscript);
        subIndent();
    }

    public void visit(MemberAccess node) {
        println(getNodeName(node));
        addIndent();
        print(node.container);
        print(node.member);
        subIndent();
    }

    public void visit(NewExpr node) {
        StringBuilder s = new StringBuilder(getNodeName(node) + " " + node.baseType);
        for (int i = 0; i < node.dim; ++i) {
            s.append("[]");
        }
        println(s.toString());
        addIndent();
        node.dimArgs.forEach(this::print);
        subIndent();
    }

    public void visit(IdentifierExpr node) {
        println(getNodeName(node) + " " + node.name);
    }

    public void visit(IntConst node) {
        println(getNodeName(node) + " " + node.value);
    }

    public void visit(BoolConst node) {
        println(getNodeName(node) + " " + node.value);
    }

    public void visit(StringConst node) {
        println(getNodeName(node) + " " + node.value);
    }

    public void visit(NullLiteral node) {
        println(getNodeName(node));
    }

}
