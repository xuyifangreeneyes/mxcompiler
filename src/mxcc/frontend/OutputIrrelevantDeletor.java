package mxcc.frontend;

import mxcc.ast.Decl;
import mxcc.ast.FunctionDecl;
import mxcc.ast.Program;
import mxcc.ast.VariableDecl;
import mxcc.symbol.FunctionSymbol;
import mxcc.symbol.VariableSymbol;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

// For now Class is not considered.

//public class OutputIrrelevantDeletor {
//    private Program ast;
//    // Map<Func, isRelevant>
//    private Map<FunctionSymbol, Boolean> funcMap = new HashMap<>();
//    // Map<Var, isRelevant>
//    private Map<VariableSymbol, Boolean> varMap = new HashMap<>();
//
//    public OutputIrrelevantDeletor(Program ast) {
//        this.ast = ast;
//    }
//
//    public void work() {
//        collectFuncAndVar();
//        iterate();
//        deleteIrrelevant();
//    }
//
//    public void collectFuncAndVar() {
//        for (Decl decl : ast.decls) {
//            if (decl instanceof FunctionDecl) {
//
//            } else if {
//
//            }
//        }
//    }
//
//    public void iterate() {
//
//    }
//
//    public void deleteIrrelevant() {
//
//    }
//
//    private static class Collector
//
//}
