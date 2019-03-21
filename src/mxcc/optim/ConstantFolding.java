package mxcc.optim;

import mxcc.ir.Function;
import mxcc.ir.Module;

public class ConstantFolding extends Pass {

    public static void visit(Module module) {
        for (Function func : module.funcs.values()) {
            if (func.isBuiltin()) continue;
            ConstantFolding cf = new ConstantFolding(func);
            cf.pass();
        }
    }

    private ConstantFolding(Function irFunc) {
        super(irFunc);
    }

    private void pass() {

    }

}
