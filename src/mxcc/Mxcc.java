package mxcc;

import mxcc.ast.AstPrinter;
import mxcc.ast.Program;
import mxcc.frontend.AstBuilder;
import mxcc.frontend.IRBuilder;
import mxcc.frontend.SemanticChecker;
import mxcc.frontend.TypeResolver;
import mxcc.ir.IRPrinter;
import mxcc.ir.Module;
import mxcc.parser.MxLexer;
import mxcc.parser.MxParser;
import mxcc.ssa.SSAConstructor;
import org.antlr.v4.runtime.BailErrorStrategy;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;

import java.io.*;

public class Mxcc {
    private Program ast;
    private Module ir;

    private void buildAST() throws IOException {
//        File fileName = new File("/Users/xuyifan/Documents/compiler/mxcompiler/testcases/tmp/a.mx");
//        if (!fileName.exists()) {
//            throw new RuntimeException("cannot find a.mx");
//        }
//        CharStream input = CharStreams.fromStream(new FileInputStream(fileName));
        CharStream input = CharStreams.fromStream(System.in);
        MxLexer lexer = new MxLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MxParser parser = new MxParser(tokens);
        parser.setErrorHandler(new BailErrorStrategy());
        MxParser.ProgramContext programContext = parser.program();
        AstBuilder astBuilder = new AstBuilder();
        ast = astBuilder.build(programContext);
    }

    private void printAST() throws IOException {
        File fileName = new File("/Users/xuyifan/Documents/compiler/mxcompiler/testcases/tmp/a.ast");
        if (!fileName.exists()) {
            if (!fileName.createNewFile()) {
                throw new RuntimeException("cannot create a.ast");
            }
        }
        AstPrinter printer = new AstPrinter(new PrintStream(fileName));
        printer.visit(ast);
    }

    private void sematicCheck() {
        TypeResolver resolver = new TypeResolver();
        resolver.visit(ast);
        SemanticChecker checker = new SemanticChecker();
        checker.visit(ast);
    }

    private void buildIR() {
        IRBuilder irBuilder = new IRBuilder();
        irBuilder.visit(ast);
        ir = irBuilder.getModule();
    }

    private void printIR(String pathName) throws IOException {
        IRPrinter printer;
        if (pathName != null) {
            File fileName = new File(pathName);
            if (!fileName.exists()) {
                if (!fileName.createNewFile()) {
                    throw new RuntimeException("cannot create a.ll");
                }
            }
            printer = new IRPrinter(new PrintStream(fileName));
        } else {
           printer = new IRPrinter(System.out);
        }
        printer.visit(ir);
    }

    private void SSAtransform() throws IOException {
        SSAConstructor.process(ir);
//        printIR("/Users/xuyifan/Documents/compiler/mxcompiler/testcases/tmp/a_ssa.ll");
    }

    private void run() throws IOException {
        buildAST();
//        printAST();
        sematicCheck();
        buildIR();
//        printIR("/Users/xuyifan/Documents/compiler/mxcompiler/testcases/tmp/a.ll");
        SSAtransform();
        printIR(null);
    }

    public static void main(String[] args) {
        try {
            Mxcc mxcc = new Mxcc();
            mxcc.run();
        } catch (Exception e) {
            e.printStackTrace(System.err);
            System.exit(1);
        }
    }
}
