package test;

import mxcc.ast.AstPrinter;
import mxcc.ast.Program;
import mxcc.frontend.AstBuilder;
import mxcc.parser.MxLexer;
import mxcc.parser.MxParser;
import org.antlr.v4.runtime.BailErrorStrategy;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;

public class AstBuilderTest {
    private Program ast;

    public static void main(String[] args) {
        try {
            CharStream input = CharStreams.fromStream(System.in);
            MxLexer lexer = new MxLexer(input);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            MxParser parser = new MxParser(tokens);
            parser.setErrorHandler(new BailErrorStrategy());
            MxParser.ProgramContext programContext = parser.program();
            AstBuilder astBuilder = new AstBuilder();
            Program ast = astBuilder.build(programContext);
            AstPrinter printer = new AstPrinter(System.out);
            printer.visit(ast);
        } catch (Exception e) {
            e.printStackTrace(System.err);
            System.exit(1);
        }
    }
}
