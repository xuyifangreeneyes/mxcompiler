package mxcc;

import mxcc.ast.AstPrinter;
import mxcc.ast.ClassDecl;
import mxcc.ast.Decl;
import mxcc.ast.Program;
import mxcc.backend.InstructionSelector;
import mxcc.backend.RegisterAllocator;
import mxcc.backend.StackBuilder;
import mxcc.backend.Translator;
import mxcc.frontend.*;
import mxcc.ir.IRPrinter;
import mxcc.ir.Module;
import mxcc.nasm.Nasm;
import mxcc.nasm.NasmPrinter;
import mxcc.optim.*;
import mxcc.parser.MxLexer;
import mxcc.parser.MxParser;
import mxcc.utility.Config;
import org.antlr.v4.runtime.BailErrorStrategy;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;

import java.io.*;

public class Mxcc {
    private Program ast;
    private Module ir;
    private Nasm nasm;

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

    private void deleteIrrelevantLoop() {
        IrrelevantLoopDeleter deleter = new IrrelevantLoopDeleter();
        deleter.visit(ast);
    }

    private void deleteIrrelevantArray() {
        for (Decl decl : ast.decls) {
            if (decl instanceof ClassDecl) {
                return;
            }
        }
        IrrelevantArrayDeleter deleter = new IrrelevantArrayDeleter(ast);
        deleter.work();
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
        for (int i = 0; i < 10; ++i) {

//            if (Config.debugMode) System.out.println("SSA optim " + i);

            DeadCodeElimination.visit(ir);
            ConstantPropagation.visit(ir);
            ConstantFolding.visit(ir);
            CommonSubexpressionElimination.visit(ir);
//            if (Config.debugMode) printIR("a_ssa_" + i + ".ll");
            CFGSimplifier.visit(ir);
//            if (Config.debugMode) printIR("a_cfg_" + i + ".ll");
        }
//        if (Config.debugMode) printIR("before_des.ll");
        SSADestructor.visit(ir);
//        if (Config.debugMode) printIR("after_des.ll");
    }

    private void eliminateConstGlobalReg() {
        ConstGlobalRegEliminator eliminator = new ConstGlobalRegEliminator(ir);
        eliminator.work();
    }

    private void functionInline() {
        FunctionInliner inliner = new FunctionInliner(ast, ir);
        inliner.run();
    }

    private void promoteGlobalReg() {
        GlobalRegPromoter promoter = new GlobalRegPromoter(ir);
        promoter.work();
    }

    private void memorize() {
        Memorization memorization = new Memorization(ir);
        memorization.work();
    }

    private void optim() throws IOException {
//        if (Config.debugMode) printIR("a_before_memorize.ll");
//        memorize();
//        if (Config.debugMode) printIR("a_memorize.ll");
        eliminateConstGlobalReg();
        functionInline();
        promoteGlobalReg();
        if (Config.debugMode) printIR("a_global.ll");
        CFGSimplifier.visit(ir);
//        if (Config.debugMode) printIR("a_cfg.ll");
        SSAtransform();
        CFGSimplifier.visit(ir);
        if (Config.debugMode) printIR("a_optim.ll");
    }

    private void translate() throws IOException {
        Translator translator = new Translator();
        translator.visit(ir);
        if (Config.debugMode) {
            File fileName = new File(Config.tmpPath + "a.asm");
            if (!fileName.exists()) {
                if (!fileName.createNewFile()) {
                    throw new RuntimeException("cannot create a.asm");
                }
            }
            translator.print(new PrintStream(fileName));
        } else {
            translator.print(System.out);
        }
    }

    private void selectInstruction() {
        InstructionSelector selector = new InstructionSelector();
        nasm = selector.visit(ir);
    }

    private void allocateRegister() throws IOException {
        RegisterAllocator.visit(nasm);
    }

    private void buildStack() {
        StackBuilder.visit(nasm);
    }

    private void printNasm(String output) throws IOException {
        NasmPrinter printer = new NasmPrinter();
        printer.visit(nasm);
        if (output != null) {
            File fileName = new File(Config.tmpPath + output);
            if (!fileName.exists()) {
                if (!fileName.createNewFile()) {
                    throw new RuntimeException("cannot create a.asm");
                }
            }
            printer.print(new PrintStream(fileName));
        } else {
            printer.print(System.out);
        }
    }

    private void run() throws IOException {
        buildAST();
        if (Config.debugMode) printAST();
        sematicCheck();
        deleteIrrelevantLoop();
        deleteIrrelevantArray();
        buildIR();
        if (Config.debugMode) printIR("a.ll");
        optim();
//        if (!Config.debugMode) printIR(null);
       // translate();
        selectInstruction();
        if (Config.debugMode) printNasm("a_unallocated.asm");
        allocateRegister();
        buildStack();
        if (Config.debugMode) printNasm("a.asm");
        if (!Config.debugMode) printNasm(null);
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
