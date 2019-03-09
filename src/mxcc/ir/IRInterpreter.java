package mxcc.ir;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.*;

public class IRInterpreter {

    private static class Inst {
        String dst;
        String op;
        String src1;
        String src2;
        List<String> args;
    }

    private static class BB {
        int id;
        BB next;
        List<Inst> instList = new ArrayList<>();

        BB(int id) {
            this.id = id;
        }
    }

    private static class Func {
        String name;
        BB entry;
        int retVal = 0;
        List<String> args = new ArrayList<>();
        Map<Integer, BB> blocks = new HashMap<>();

        Func(String name) {
            this.name = name;
        }
    }

    private Map<String, Func> funcs = new HashMap<>();
    private Func curFunc;
    private BB curBB;
    private Map<String, Integer> staticRegs = new HashMap<>();
    private Map<String, Integer> localRegs = new HashMap<>();
    // Map<startAddress, stringValue>
    private Map<Integer, String> memString = new HashMap<>();
    // Map<startAddress, intValue>
    private Map<Integer, Integer> memInt = new HashMap<>();
    private int memPtr = 0;

    private BufferedReader br;

    private String readLine() throws IOException {
        String line;
        do {
            line = br.readLine();
            if (line == null) break;
            line = line.trim();
        } while (line.equals(""));
        return line;
    }

    private List<String> splitLine(String line) {
        return Arrays.asList(line.split(" "));
    }

    public IRInterpreter(InputStream in) {
        br = new BufferedReader(new InputStreamReader(in));
    }

    private void parseInst(List<String> words) {
        Inst inst = new Inst();
        switch (words.get(0)) {
            case "ret":
                inst.op = words.get(0);
                if (words.size() == 2) inst.src1 = words.get(1);
                break;
            case "store":
                inst.op = words.get(0);
                inst.src1 = words.get(1);
                inst.src2 = words.get(2);
                break;
            case "br":
                inst.op = words.get(0);
                if (words.size() == 2) {
                    inst.src1 = words.get(1).substring(1, words.get(1).length() - 2);
                } else {
                    inst.dst = words.get(1);
                    inst.src1 = words.get(2).substring(1, words.get(2).length() - 2);
                    inst.src2 = words.get(3).substring(1, words.get(3).length() - 2);
                }
                break;
            default:
                if (words.get(words.size() - 1).equals(")")) {
                    int indexOfFuncName;
                    if (words.get(1).equals("=")) {
                        inst.dst = words.get(0);
                        indexOfFuncName = 2;
                    } else {
                        indexOfFuncName = 0;
                    }
                    inst.op = words.get(indexOfFuncName);
                    inst.args = new ArrayList<>();
                    for (int i = indexOfFuncName + 2; i < words.size() - 1; ++i) {
                        inst.args.add(words.get(i));
                    }
                } else {
                    inst.dst = words.get(0);
                    inst.op = words.get(2);
                    inst.src1 = words.get(3);
                    if (words.size() == 5) inst.src2 = words.get(4);
                }
        }
        curBB.instList.add(inst);
    }

    public void parse() throws IOException {
        String line = readLine();
        while (line != null) {
            List<String> words = splitLine(line);
            switch (words.get(0).charAt(0)) {
                case '$':
                    String stringVal = words.get(1);
                    stringVal = stringVal.substring(1, stringVal.length() - 2);
                    memString.put(memPtr, stringVal);
                    staticRegs.put(words.get(0), memPtr);
                    memPtr += stringVal.getBytes().length;
                    break;
                case '@':
                    staticRegs.put(words.get(0), memPtr);
                    memPtr += 4;
                    break;
                case '#':
                    curFunc = new Func(words.get(0));
                    for (int i = 2; i < words.size() - 2; ++i) {
                        curFunc.args.add(words.get(i));
                    }
                    funcs.put(curFunc.name, curFunc);
                    break;
                case '<':
                    int BBid = Integer.parseInt(words.get(0).substring(1, words.get(0).length() - 2));
                    BB nextBB = new BB(BBid);
                    if (words.get(1).equals("entry")) curFunc.entry = nextBB;
                    else curBB.next = nextBB;
                    curFunc.blocks.put(nextBB.id, nextBB);
                    curBB = nextBB;
                default:
                    parseInst(words);
            }
            line = readLine();
        }
    }

    private void writeReg(String regName, int val) {
        if (regName.startsWith("%")) {
            assert !localRegs.containsKey(regName);
            localRegs.put(regName, val);
        }
        assert false;
    }

    private int getOperandValue(String operand) {
        if (operand.startsWith("%")) {
            assert localRegs.containsKey(operand);
            return localRegs.get(operand);
        }
        if (operand.startsWith("@") || operand.startsWith("$")) {
            assert staticRegs.containsKey(operand);
            return staticRegs.get(operand);
        }
        return Integer.parseInt(operand);
    }

    private void runInst(Inst inst) {
        switch (inst.op) {
            case "alloca":
                writeReg(inst.dst, memPtr);
                memPtr += 4;
                break;
            case "malloc":
                writeReg(inst.dst, memPtr);
                memPtr += getOperandValue(inst.src1);
                break;
            case "load":
                int loadAddr = getOperandValue(inst.src1);
                assert memInt.containsKey(loadAddr);
                writeReg(inst.dst, memInt.get(loadAddr));
                break;
            case "store":
                memInt.put(getOperandValue(inst.src2), getOperandValue(inst.src1));
                break;
            case "call":
                List<Integer> argVals = new ArrayList<>();
                for (String arg : inst.args) {
                    argVals.add(getOperandValue(arg));
                }
                int retVal = runFunc(inst.op, argVals);
                if (inst.dst != null) {
                    writeReg(inst.dst, retVal);
                }
                break;
            case "br":
                if (inst.dst == null) {
                    curBB = curFunc.blocks.get(Integer.parseInt(inst.src1));
                } else {
                    int cond = getOperandValue(inst.dst);
                    if (cond == 1) curBB = curFunc.blocks.get(Integer.parseInt(inst.src1));
                    curBB = curFunc.blocks.get(Integer.parseInt(inst.src2));
                }
                break;
            case "ret":
                if (inst.src1 != null) {
                    curFunc.retVal = getOperandValue(inst.src1);
                }
                break;
            case "mul":
                writeReg(inst.dst, getOperandValue(inst.src1) * getOperandValue(inst.src2));
                break;
            case "div":
                writeReg(inst.dst, getOperandValue(inst.src1) / getOperandValue(inst.src2));
                break;
            case "mod":
                writeReg(inst.dst, getOperandValue(inst.src1) % getOperandValue(inst.src2));
                break;
            case "add":
                writeReg(inst.dst, getOperandValue(inst.src1) + getOperandValue(inst.src2));
                break;
            case "sub":
                writeReg(inst.dst, getOperandValue(inst.src1) - getOperandValue(inst.src2));
                break;
            case "lsft":
                writeReg(inst.dst, getOperandValue(inst.src1) << getOperandValue(inst.src2));
                break;
            case "rsft":
                writeReg(inst.dst, getOperandValue(inst.src1) >> getOperandValue(inst.src2));
                break;
            case "lt":
                writeReg(inst.dst, (getOperandValue(inst.src1) < getOperandValue(inst.src2)) ? 1 : 0);
                break;
            case "gt":
                writeReg(inst.dst, (getOperandValue(inst.src1) > getOperandValue(inst.src2)) ? 1 : 0);
                break;
            case "le":
                writeReg(inst.dst, (getOperandValue(inst.src1) <= getOperandValue(inst.src2)) ? 1 : 0);
                break;
            case "ge":
                writeReg(inst.dst, (getOperandValue(inst.src1) >= getOperandValue(inst.src2)) ? 1 : 0);
                break;
            case "eq":
                writeReg(inst.dst, (getOperandValue(inst.src1) == getOperandValue(inst.src2)) ? 1 : 0);
                break;
            case "neq":
                writeReg(inst.dst, (getOperandValue(inst.src1) != getOperandValue(inst.src2)) ? 1 : 0);
                break;
            case "bit_and":
                writeReg(inst.dst, getOperandValue(inst.src1) & getOperandValue(inst.src2));
                break;
            case "bit_or":
                writeReg(inst.dst, getOperandValue(inst.src1) | getOperandValue(inst.src2));
                break;
            case "bit_xor":
                writeReg(inst.dst, getOperandValue(inst.src1) ^ getOperandValue(inst.src2));
                break;
            case "inc":
                writeReg(inst.dst, getOperandValue(inst.src1) + 1);
                break;
            case "dec":
                writeReg(inst.dst, getOperandValue(inst.src1) - 1);
                break;
            case "neg":
                writeReg(inst.dst, - getOperandValue(inst.src1));
                break;
            case "bit_not":
                writeReg(inst.dst, ~ getOperandValue(inst.src1));
                break;
        }
    }

    private int runFunc(String funcName, List<Integer> argVals) {
        Func func = funcs.get(funcName);
        for (int i = 0; i < func.args.size(); ++i) {
            writeReg(func.args.get(i), argVals.get(i));
        }
        curBB = func.entry;
        while (curBB != null) {
            List<Inst> instList = curBB.instList;
            instList.forEach(this::runInst);
        }
        localRegs.clear();
        return func.retVal;
    }

    public void run() {
        runFunc("#global#init", new ArrayList<>());
        runFunc("#main", new ArrayList<>());
    }

}
