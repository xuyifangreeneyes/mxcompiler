package test;

import mxcc.frontend.AstBuilder;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

import mxcc.parser.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

import java.io.*;
import java.util.ArrayList;
import java.util.Collection;

@RunWith(Parameterized.class)
public class ParserTest {

    @Parameters
    public static Collection<Object[]> data() {
        Collection<Object[]> params = new ArrayList<>();
        for (File f : new File("testcases/parser/").listFiles()) {
            if (f.isFile() && (f.getName().endsWith(".mx") || f.getName().endsWith(".mx.txt"))) {
                params.add(new Object[] { f.getAbsolutePath() });
            }
        }
        return params;
    }

    private String filename;

    public ParserTest(String filename) {
        this.filename = filename;
    }

    @Test
    public void Test() throws IOException {
        System.out.println(filename);
        CharStream input = CharStreams.fromFileName(filename);
        MxLexer lexer = new MxLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MxParser parser = new MxParser(tokens);
        parser.setErrorHandler(new BailErrorStrategy());
        parser.program();
    }


}
