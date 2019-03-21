package mxcc;

import mxcc.ast.AstPrinter;
import mxcc.ast.Program;
import mxcc.frontend.AstBuilder;
import mxcc.frontend.IRBuilder;
import mxcc.frontend.SemanticChecker;
import mxcc.frontend.TypeResolver;
import mxcc.ir.IRPrinter;
import mxcc.ir.Module;
import mxcc.optim.ConstantFolding;
import mxcc.optim.ConstantPropagation;
import mxcc.parser.MxLexer;
import mxcc.parser.MxParser;
import mxcc.optim.DeadCodeElimination;
import mxcc.optim.SSAConstructor;
import mxcc.utility.Config;
import org.antlr.v4.runtime.BailErrorStrategy;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;

import java.io.*;

public class Mxcc {
    private Program ast;
    private Module ir;

    private void buildAST() throws IOException {
        CharStream input;
        if (Config.debugMode) {
            File fileName = new File(Config.tmpPath + "a.mx");
            if (!fileName.exists()) {
                throw new RuntimeException("cannot find a.mx");
            }
            input = CharStreams.fromStream(new FileInputStream(fileName));
        } else {
            input = CharStreams.fromStream(System.in);
        }
        MxLexer lexer = new MxLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MxParser parser = new MxParser(tokens);
        parser.setErrorHandler(new BailErrorStrategy());
        MxParser.ProgramContext programContext = parser.program();
        AstBuilder astBuilder = new AstBuilder();
        ast = astBuilder.build(programContext);
    }

    private void printAST() throws IOException {
        File fileName = new File(Config.tmpPath + "a.ast");
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

    private void printIR(String output) throws IOException {
        IRPrinter printer;
        if (output != null) {
            File fileName = new File(Config.tmpPath + output);
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
        SSAConstructor.visit(ir);
        if (Config.debugMode) printIR("a_ssa.ll");
        for (int i = 0; i < 3; ++i) {
            DeadCodeElimination.visit(ir);
            ConstantPropagation.visit(ir);
            ConstantFolding.visit(ir);
        }
        if (Config.debugMode) printIR("a_optim.ll");
    }

    private void run() throws IOException {
        buildAST();
        if (Config.debugMode) printAST();
        sematicCheck();
        buildIR();
        if (Config.debugMode) printIR("a.ll");
        SSAtransform();
        if (!Config.debugMode) printIR(null);
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
