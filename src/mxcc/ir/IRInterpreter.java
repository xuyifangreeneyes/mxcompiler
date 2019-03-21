package mxcc.ir;

import mxcc.utility.Config;
import mxcc.utility.StringHandler;

import java.io.*;
import java.util.*;

public class IRInterpreter {

    private static class Inst {
        String dst;
        String op;
        String src1;
        String src2;
        List<String> args;
        Map<Integer, String> phiSource;
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
        List<String> args = new ArrayList<>();
        Map<Integer, BB> blocks = new HashMap<>();

        Func(String name) {
            this.name = name;
        }
    }

    private Map<String, Func> funcs = new HashMap<>();
    private Func curFunc;
    private BB predBB;
    private BB curBB;
    private int retVal;
    private Map<String, Integer> staticRegs = new HashMap<>();
    private Map<String, Integer> localRegs = null;
    // Map<startAddress, stringValue>
    private Map<Integer, String> memString = new HashMap<>();
    // Map<stringValue, startAddress>
    private Map<String, Integer> stringPool = new HashMap<>();
    // Map<startAddress, intValue>
    private Map<Integer, Integer> memInt = new HashMap<>();
    private int memPtr = 0;

    private final Set<String> builtinFuncs = new HashSet<>(Arrays.asList(
            "#print", "#println", "#getString", "#getInt", "#toString", "#string#length", "#string#substring",
            "#string#parseInt", "#string#ord", "#array#size", "#string#add", "#string#eq", "#string#neq",
            "#string#lt", "#string#gt", "#string#le", "#string#ge"
            ));

    private BufferedReader br;
    private Scanner scanner;

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
        scanner = new Scanner(System.in);
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
                    inst.src1 = words.get(1).substring(1, words.get(1).length() - 1);
                } else {
                    inst.dst = words.get(1);
                    inst.src1 = words.get(2).substring(1, words.get(2).length() - 1);
                    inst.src2 = words.get(3).substring(1, words.get(3).length() - 1);
                }
                break;
            case "move":
                inst.op = words.get(0);
                inst.dst = words.get(1);
                inst.src1 = words.get(2);
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
                    if (inst.op.equals("phi")) {
                        inst.phiSource = new HashMap<>();
                        int i = 3;
                        while (i < words.size()) {
                            inst.phiSource.put(Integer.parseInt(words.get(i).substring(1, words.get(i).length() - 1)), words.get(i + 1));
                            i += 2;
                        }
                    } else {
                        inst.src1 = words.get(3);
                        if (words.size() == 5) inst.src2 = words.get(4);
                    }
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
                    int firstBlank = line.indexOf(" ");
                    String strVal = line.substring(firstBlank + 2, line.length() - 1);
                    memString.put(memPtr, strVal);
                    stringPool.put(strVal, memPtr);
                    staticRegs.put(words.get(0), memPtr);
                    memPtr += strVal.getBytes().length + 1;
                    break;
                case '@':
                    staticRegs.put(words.get(0), memPtr);
                    memPtr += 4;
                    break;
                case '<':
                    int BBid = Integer.parseInt(words.get(0).substring(1, words.get(0).length() - 1));
                    BB nextBB = new BB(BBid);
                    if (words.get(1).equals("entry")) curFunc.entry = nextBB;
                    else curBB.next = nextBB;
                    curFunc.blocks.put(nextBB.id, nextBB);
                    curBB = nextBB;
                    break;
                case '}':
                    break;
                default:
                    if (words.get(0).equals("define")) {
                        curFunc = new Func(words.get(1));
                        for (int i = 3; i < words.size() - 2; ++i) {
                            curFunc.args.add(words.get(i));
                        }
                        funcs.put(curFunc.name, curFunc);
                    } else {
                        parseInst(words);
                    }
            }
            line = readLine();
        }
        br.close();
    }

    private void writeReg(String regName, int val) {
        assert regName.startsWith("%");
//        System.out.println(regName);
        localRegs.put(regName, val);
    }

    private int getOperandValue(String operand) {
        if (operand.startsWith("%")) {
            assert localRegs.containsKey(operand);
//            System.out.println(operand);
            return localRegs.get(operand);
        }
        if (operand.startsWith("@") || operand.startsWith("$")) {
            assert staticRegs.containsKey(operand);
            return staticRegs.get(operand);
        }
        return Integer.parseInt(operand);
    }

    private void runInst(Inst inst) throws IOException {
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
//                System.out.println(inst.dst + " = load " + inst.src1);
                int loadAddr = getOperandValue(inst.src1);
//                assert memInt.containsKey(loadAddr);
                writeReg(inst.dst, memInt.getOrDefault(loadAddr, 0));
                break;
            case "store":
//                System.out.println("store " + inst.src1 + " " + inst.src2);
                memInt.put(getOperandValue(inst.src2), getOperandValue(inst.src1));
                break;
            case "br":
                predBB = curBB;
                if (inst.dst == null) {
                    curBB = curFunc.blocks.get(Integer.parseInt(inst.src1));
                } else {
                    curBB = getOperandValue(inst.dst) == 1 ? curFunc.blocks.get(Integer.parseInt(inst.src1)) : curFunc.blocks.get(Integer.parseInt(inst.src2));
                }
                break;
            case "ret":
                predBB = curBB;
                curBB = null;
                if (inst.src1 != null) {
                    retVal = getOperandValue(inst.src1);
                } else {
                    retVal = 0;
                }
                break;
            case "phi":
                writeReg(inst.dst, getOperandValue(inst.phiSource.get(predBB.id)));
                break;
            case "move":
                writeReg(inst.dst, getOperandValue(inst.src1));
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
            default:
                List<Integer> argVals = new ArrayList<>();
                for (String arg : inst.args) {
                    argVals.add(getOperandValue(arg));
                }
                int retVal = runFunc(inst.op, argVals);
                if (inst.dst != null) {
                    writeReg(inst.dst, retVal);
                }
                break;
        }
    }

    private int addString(String strVal) {
        if (stringPool.containsKey(strVal)) {
            return stringPool.get(strVal);
        }
        int strPtr = memPtr;
        memString.put(strPtr, strVal);
        stringPool.put(strVal, strPtr);
        memPtr += strVal.getBytes().length + 1;
        return strPtr;
    }

    private int string2int(String str) {
        int val = 0;
        boolean positive = true;
        if (str.charAt(0) == '+' || str.charAt(0) == '-') {
            if (str.charAt(0) == '-') positive = false;
            str = str.substring(1);
        }
        for (int i = 0; i < str.length(); ++i) {
            if (str.charAt(i) < '0' || str.charAt(i) > '9') break;
            val = val * 10 + Character.getNumericValue(str.charAt(i));
        }
        return positive ? val : -val;
    }

    private int runBuiltinFunc(String funcName, List<Integer> argVals) throws IOException {
        if (funcName.equals("#getString")) {
            if (scanner.hasNext()) {
                String strVal = scanner.next();
                return addString(strVal);
            } else {
                throw new RuntimeException("cannot get string");
            }
        }
        if (funcName.equals("#getInt")) {
            if (scanner.hasNextInt()) {
                return scanner.nextInt();
            } else {
                throw new RuntimeException("cannot get int");
            }
        }
        if (funcName.equals("#toString")) {
            String strVal = String.valueOf(argVals.get(0));
            return addString(strVal);
        }
        if (funcName.equals("#array#size")) {
            assert memInt.containsKey(argVals.get(0));
            return memInt.get(argVals.get(0));
        }
        assert memString.containsKey(argVals.get(0));
        if (funcName.equals("#print")) {
            String str = memString.get(argVals.get(0));
            System.out.print(StringHandler.unescape(str));
            return 0;
        }
        if (funcName.equals("#println")) {
            String str = memString.get(argVals.get(0));
            System.out.println(StringHandler.unescape(str));
            return 0;
        }
        if (funcName.equals("#string#length")) {
            String strVal = memString.get(argVals.get(0));
            return strVal.length();
        }
        if (funcName.equals("#string#substring")) {
            String strVal = memString.get(argVals.get(0));
            String substring = strVal.substring(argVals.get(1), argVals.get(2));
            return addString(substring);
        }
        if (funcName.equals("#string#parseInt")) {
            String strVal = memString.get(argVals.get(0));
            return string2int(strVal);
        }
        if (funcName.equals("#string#ord")) {
            String strVal = memString.get(argVals.get(0));
            return (int) strVal.charAt(argVals.get(1));
        }
        assert memString.containsKey(argVals.get(1));
        if (funcName.equals("#string#add")) {
            return addString(memString.get(argVals.get(0)) + memString.get(argVals.get(1)));
        }
        if (funcName.equals("#string#eq")) {
            return memString.get(argVals.get(0)).equals(memString.get(argVals.get(1))) ? 1 : 0;
        }
        if (funcName.equals("#string#neq")) {
            return memString.get(argVals.get(0)).equals(memString.get(argVals.get(1))) ? 0 : 1;
        }
        if (funcName.equals("#string#lt")) {
            return memString.get(argVals.get(0)).compareTo(memString.get(argVals.get(1))) < 0 ? 1 : 0;
        }
        if (funcName.equals("#string#gt")) {
            return memString.get(argVals.get(0)).compareTo(memString.get(argVals.get(1))) > 0 ? 1 : 0;
        }
        if (funcName.equals("#tring#le")) {
            return memString.get(argVals.get(0)).compareTo(memString.get(argVals.get(1))) <= 0 ? 1 : 0;
        }
        if (funcName.equals("#string#ge")) {
            return memString.get(argVals.get(0)).compareTo(memString.get(argVals.get(1))) >= 0 ? 1 : 0;
        }
        assert false;
        return 0;
    }

    private int runFunc(String funcName, List<Integer> argVals) throws IOException {
        if (builtinFuncs.contains(funcName)) {
            return runBuiltinFunc(funcName, argVals);
        }

        Func enclosingFunc = curFunc;
        curFunc = funcs.get(funcName);
        BB enclosingPredBB = predBB;
        BB enclosingBB = curBB;
        predBB = null;
        curBB = curFunc.entry;
        Map<String, Integer> enclosingLocalRegs = localRegs;
        localRegs = new HashMap<>();

        for (int i = 0; i < curFunc.args.size(); ++i) {
            writeReg(curFunc.args.get(i), argVals.get(i));
        }
        while (curBB != null) {
            List<Inst> instList = curBB.instList;
            if (instList.isEmpty()) {
                predBB = curBB;
                curBB = curBB.next;
            } else {
                for (Inst inst : instList) {
                    runInst(inst);
                }
                String lastOp = instList.get(instList.size() - 1).op;
                if (!lastOp.equals("br") && !lastOp.equals("ret")) {
                    predBB = curBB;
                    curBB = curBB.next;
                }
            }
        }

        curFunc = enclosingFunc;
        predBB = enclosingPredBB;
        curBB = enclosingBB;
        localRegs = enclosingLocalRegs;

        return retVal;
    }

    public int run() throws IOException {
        curFunc = null;
        runFunc("#global#init", new ArrayList<>());
        int exitCode = runFunc("#main", new ArrayList<>());
        scanner.close();
        return exitCode;
    }

    public static void main(String[] args) throws IOException {
        File fileName;

        if (Config.debugMode) {
            fileName = new File(Config.tmpPath + "a_cp.ll");
        } else {
            fileName = new File(args[0]);
        }
        if (!fileName.exists()) {
            throw new RuntimeException("cannot find a.ll");
        }
        IRInterpreter interpreter = new IRInterpreter(new FileInputStream(fileName));
        interpreter.parse();
        System.exit(interpreter.run());
    }

}
