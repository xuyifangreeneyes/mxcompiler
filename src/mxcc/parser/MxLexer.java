package mxcc.parser;

// Generated from Mx.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		BOOL=1, INT=2, STRING=3, NULL=4, VOID=5, IF=6, ELSE=7, FOR=8, WHILE=9, 
		BREAK=10, CONTINUE=11, RETURN=12, NEW=13, CLASS=14, THIS=15, LPAREN=16, 
		RPAREN=17, LBRACE=18, RBRACE=19, LBRACK=20, RBRACK=21, SEMI=22, COMMA=23, 
		ADD=24, SUB=25, MUL=26, DIV=27, MOD=28, LT=29, GT=30, EQ=31, NEQ=32, GE=33, 
		LE=34, AND=35, NOT=36, OR=37, LSFT=38, RSFT=39, BITNOT=40, BITOR=41, BITXOR=42, 
		BITAND=43, ASSIGN=44, INC=45, DEC=46, DOT=47, BoolConstant=48, IntConstant=49, 
		StringConstant=50, Identifier=51, LINE_COMMENT=52, BLOCK_COMMENT=53, WS=54;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"BOOL", "INT", "STRING", "NULL", "VOID", "TRUE", "FALSE", "IF", "ELSE", 
			"FOR", "WHILE", "BREAK", "CONTINUE", "RETURN", "NEW", "CLASS", "THIS", 
			"LPAREN", "RPAREN", "LBRACE", "RBRACE", "LBRACK", "RBRACK", "SEMI", "COMMA", 
			"ADD", "SUB", "MUL", "DIV", "MOD", "LT", "GT", "EQ", "NEQ", "GE", "LE", 
			"AND", "NOT", "OR", "LSFT", "RSFT", "BITNOT", "BITOR", "BITXOR", "BITAND", 
			"ASSIGN", "INC", "DEC", "DOT", "EscapeSequence", "StringCharacter", "BoolConstant", 
			"IntConstant", "StringConstant", "Identifier", "LINE_COMMENT", "BLOCK_COMMENT", 
			"WS"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'bool'", "'int'", "'string'", "'null'", "'void'", "'if'", "'else'", 
			"'for'", "'while'", "'break'", "'continue'", "'return'", "'new'", "'class'", 
			"'this'", "'('", "')'", "'{'", "'}'", "'['", "']'", "';'", "','", "'+'", 
			"'-'", "'*'", "'/'", "'%'", "'<'", "'>'", "'=='", "'!='", "'>='", "'<='", 
			"'&&'", "'!'", "'||'", "'<<'", "'>>'", "'~'", "'|'", "'^'", "'&'", "'='", 
			"'++'", "'--'", "'.'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "BOOL", "INT", "STRING", "NULL", "VOID", "IF", "ELSE", "FOR", "WHILE", 
			"BREAK", "CONTINUE", "RETURN", "NEW", "CLASS", "THIS", "LPAREN", "RPAREN", 
			"LBRACE", "RBRACE", "LBRACK", "RBRACK", "SEMI", "COMMA", "ADD", "SUB", 
			"MUL", "DIV", "MOD", "LT", "GT", "EQ", "NEQ", "GE", "LE", "AND", "NOT", 
			"OR", "LSFT", "RSFT", "BITNOT", "BITOR", "BITXOR", "BITAND", "ASSIGN", 
			"INC", "DEC", "DOT", "BoolConstant", "IntConstant", "StringConstant", 
			"Identifier", "LINE_COMMENT", "BLOCK_COMMENT", "WS"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public MxLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Mx.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\28\u0170\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\3\2\3\2\3\2"+
		"\3\2\3\2\3\3\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3"+
		"\5\3\6\3\6\3\6\3\6\3\6\3\7\3\7\3\7\3\7\3\7\3\b\3\b\3\b\3\b\3\b\3\b\3\t"+
		"\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\13\3\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3"+
		"\f\3\r\3\r\3\r\3\r\3\r\3\r\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16"+
		"\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\20\3\20\3\20\3\20\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\22\3\22\3\22\3\22\3\22\3\23\3\23\3\24\3\24\3\25\3\25"+
		"\3\26\3\26\3\27\3\27\3\30\3\30\3\31\3\31\3\32\3\32\3\33\3\33\3\34\3\34"+
		"\3\35\3\35\3\36\3\36\3\37\3\37\3 \3 \3!\3!\3\"\3\"\3\"\3#\3#\3#\3$\3$"+
		"\3$\3%\3%\3%\3&\3&\3&\3\'\3\'\3(\3(\3(\3)\3)\3)\3*\3*\3*\3+\3+\3,\3,\3"+
		"-\3-\3.\3.\3/\3/\3\60\3\60\3\60\3\61\3\61\3\61\3\62\3\62\3\63\3\63\3\63"+
		"\3\64\3\64\5\64\u0123\n\64\3\65\3\65\5\65\u0127\n\65\3\66\3\66\7\66\u012b"+
		"\n\66\f\66\16\66\u012e\13\66\3\66\5\66\u0131\n\66\3\67\3\67\7\67\u0135"+
		"\n\67\f\67\16\67\u0138\13\67\3\67\3\67\3\67\7\67\u013d\n\67\f\67\16\67"+
		"\u0140\13\67\3\67\5\67\u0143\n\67\38\38\78\u0147\n8\f8\168\u014a\138\3"+
		"9\39\39\39\79\u0150\n9\f9\169\u0153\139\39\59\u0156\n9\39\39\39\39\3:"+
		"\3:\3:\3:\7:\u0160\n:\f:\16:\u0163\13:\3:\3:\3:\3:\3:\3;\6;\u016b\n;\r"+
		";\16;\u016c\3;\3;\3\u0161\2<\3\3\5\4\7\5\t\6\13\7\r\2\17\2\21\b\23\t\25"+
		"\n\27\13\31\f\33\r\35\16\37\17!\20#\21%\22\'\23)\24+\25-\26/\27\61\30"+
		"\63\31\65\32\67\339\34;\35=\36?\37A C!E\"G#I$K%M&O\'Q(S)U*W+Y,[-]._/a"+
		"\60c\61e\2g\2i\62k\63m\64o\65q\66s\67u8\3\2\n\n\2$$))^^ddhhppttvv\4\2"+
		"$$^^\3\2\63;\3\2\62;\4\2C\\c|\6\2\62;C\\aac|\4\2\f\f\17\17\5\2\13\f\17"+
		"\17\"\"\2\u0177\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3"+
		"\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31\3\2\2"+
		"\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2\2%\3\2"+
		"\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2\2\2\61\3\2"+
		"\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3\2\2\2\2=\3"+
		"\2\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2I\3\2\2"+
		"\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3\2\2\2\2"+
		"W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2\2\2c\3"+
		"\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2m\3\2\2\2\2o\3\2\2\2\2q\3\2\2\2\2s\3\2\2"+
		"\2\2u\3\2\2\2\3w\3\2\2\2\5|\3\2\2\2\7\u0080\3\2\2\2\t\u0087\3\2\2\2\13"+
		"\u008c\3\2\2\2\r\u0091\3\2\2\2\17\u0096\3\2\2\2\21\u009c\3\2\2\2\23\u009f"+
		"\3\2\2\2\25\u00a4\3\2\2\2\27\u00a8\3\2\2\2\31\u00ae\3\2\2\2\33\u00b4\3"+
		"\2\2\2\35\u00bd\3\2\2\2\37\u00c4\3\2\2\2!\u00c8\3\2\2\2#\u00ce\3\2\2\2"+
		"%\u00d3\3\2\2\2\'\u00d5\3\2\2\2)\u00d7\3\2\2\2+\u00d9\3\2\2\2-\u00db\3"+
		"\2\2\2/\u00dd\3\2\2\2\61\u00df\3\2\2\2\63\u00e1\3\2\2\2\65\u00e3\3\2\2"+
		"\2\67\u00e5\3\2\2\29\u00e7\3\2\2\2;\u00e9\3\2\2\2=\u00eb\3\2\2\2?\u00ed"+
		"\3\2\2\2A\u00ef\3\2\2\2C\u00f1\3\2\2\2E\u00f4\3\2\2\2G\u00f7\3\2\2\2I"+
		"\u00fa\3\2\2\2K\u00fd\3\2\2\2M\u0100\3\2\2\2O\u0102\3\2\2\2Q\u0105\3\2"+
		"\2\2S\u0108\3\2\2\2U\u010b\3\2\2\2W\u010d\3\2\2\2Y\u010f\3\2\2\2[\u0111"+
		"\3\2\2\2]\u0113\3\2\2\2_\u0115\3\2\2\2a\u0118\3\2\2\2c\u011b\3\2\2\2e"+
		"\u011d\3\2\2\2g\u0122\3\2\2\2i\u0126\3\2\2\2k\u0130\3\2\2\2m\u0142\3\2"+
		"\2\2o\u0144\3\2\2\2q\u014b\3\2\2\2s\u015b\3\2\2\2u\u016a\3\2\2\2wx\7d"+
		"\2\2xy\7q\2\2yz\7q\2\2z{\7n\2\2{\4\3\2\2\2|}\7k\2\2}~\7p\2\2~\177\7v\2"+
		"\2\177\6\3\2\2\2\u0080\u0081\7u\2\2\u0081\u0082\7v\2\2\u0082\u0083\7t"+
		"\2\2\u0083\u0084\7k\2\2\u0084\u0085\7p\2\2\u0085\u0086\7i\2\2\u0086\b"+
		"\3\2\2\2\u0087\u0088\7p\2\2\u0088\u0089\7w\2\2\u0089\u008a\7n\2\2\u008a"+
		"\u008b\7n\2\2\u008b\n\3\2\2\2\u008c\u008d\7x\2\2\u008d\u008e\7q\2\2\u008e"+
		"\u008f\7k\2\2\u008f\u0090\7f\2\2\u0090\f\3\2\2\2\u0091\u0092\7v\2\2\u0092"+
		"\u0093\7t\2\2\u0093\u0094\7w\2\2\u0094\u0095\7g\2\2\u0095\16\3\2\2\2\u0096"+
		"\u0097\7h\2\2\u0097\u0098\7c\2\2\u0098\u0099\7n\2\2\u0099\u009a\7u\2\2"+
		"\u009a\u009b\7g\2\2\u009b\20\3\2\2\2\u009c\u009d\7k\2\2\u009d\u009e\7"+
		"h\2\2\u009e\22\3\2\2\2\u009f\u00a0\7g\2\2\u00a0\u00a1\7n\2\2\u00a1\u00a2"+
		"\7u\2\2\u00a2\u00a3\7g\2\2\u00a3\24\3\2\2\2\u00a4\u00a5\7h\2\2\u00a5\u00a6"+
		"\7q\2\2\u00a6\u00a7\7t\2\2\u00a7\26\3\2\2\2\u00a8\u00a9\7y\2\2\u00a9\u00aa"+
		"\7j\2\2\u00aa\u00ab\7k\2\2\u00ab\u00ac\7n\2\2\u00ac\u00ad\7g\2\2\u00ad"+
		"\30\3\2\2\2\u00ae\u00af\7d\2\2\u00af\u00b0\7t\2\2\u00b0\u00b1\7g\2\2\u00b1"+
		"\u00b2\7c\2\2\u00b2\u00b3\7m\2\2\u00b3\32\3\2\2\2\u00b4\u00b5\7e\2\2\u00b5"+
		"\u00b6\7q\2\2\u00b6\u00b7\7p\2\2\u00b7\u00b8\7v\2\2\u00b8\u00b9\7k\2\2"+
		"\u00b9\u00ba\7p\2\2\u00ba\u00bb\7w\2\2\u00bb\u00bc\7g\2\2\u00bc\34\3\2"+
		"\2\2\u00bd\u00be\7t\2\2\u00be\u00bf\7g\2\2\u00bf\u00c0\7v\2\2\u00c0\u00c1"+
		"\7w\2\2\u00c1\u00c2\7t\2\2\u00c2\u00c3\7p\2\2\u00c3\36\3\2\2\2\u00c4\u00c5"+
		"\7p\2\2\u00c5\u00c6\7g\2\2\u00c6\u00c7\7y\2\2\u00c7 \3\2\2\2\u00c8\u00c9"+
		"\7e\2\2\u00c9\u00ca\7n\2\2\u00ca\u00cb\7c\2\2\u00cb\u00cc\7u\2\2\u00cc"+
		"\u00cd\7u\2\2\u00cd\"\3\2\2\2\u00ce\u00cf\7v\2\2\u00cf\u00d0\7j\2\2\u00d0"+
		"\u00d1\7k\2\2\u00d1\u00d2\7u\2\2\u00d2$\3\2\2\2\u00d3\u00d4\7*\2\2\u00d4"+
		"&\3\2\2\2\u00d5\u00d6\7+\2\2\u00d6(\3\2\2\2\u00d7\u00d8\7}\2\2\u00d8*"+
		"\3\2\2\2\u00d9\u00da\7\177\2\2\u00da,\3\2\2\2\u00db\u00dc\7]\2\2\u00dc"+
		".\3\2\2\2\u00dd\u00de\7_\2\2\u00de\60\3\2\2\2\u00df\u00e0\7=\2\2\u00e0"+
		"\62\3\2\2\2\u00e1\u00e2\7.\2\2\u00e2\64\3\2\2\2\u00e3\u00e4\7-\2\2\u00e4"+
		"\66\3\2\2\2\u00e5\u00e6\7/\2\2\u00e68\3\2\2\2\u00e7\u00e8\7,\2\2\u00e8"+
		":\3\2\2\2\u00e9\u00ea\7\61\2\2\u00ea<\3\2\2\2\u00eb\u00ec\7\'\2\2\u00ec"+
		">\3\2\2\2\u00ed\u00ee\7>\2\2\u00ee@\3\2\2\2\u00ef\u00f0\7@\2\2\u00f0B"+
		"\3\2\2\2\u00f1\u00f2\7?\2\2\u00f2\u00f3\7?\2\2\u00f3D\3\2\2\2\u00f4\u00f5"+
		"\7#\2\2\u00f5\u00f6\7?\2\2\u00f6F\3\2\2\2\u00f7\u00f8\7@\2\2\u00f8\u00f9"+
		"\7?\2\2\u00f9H\3\2\2\2\u00fa\u00fb\7>\2\2\u00fb\u00fc\7?\2\2\u00fcJ\3"+
		"\2\2\2\u00fd\u00fe\7(\2\2\u00fe\u00ff\7(\2\2\u00ffL\3\2\2\2\u0100\u0101"+
		"\7#\2\2\u0101N\3\2\2\2\u0102\u0103\7~\2\2\u0103\u0104\7~\2\2\u0104P\3"+
		"\2\2\2\u0105\u0106\7>\2\2\u0106\u0107\7>\2\2\u0107R\3\2\2\2\u0108\u0109"+
		"\7@\2\2\u0109\u010a\7@\2\2\u010aT\3\2\2\2\u010b\u010c\7\u0080\2\2\u010c"+
		"V\3\2\2\2\u010d\u010e\7~\2\2\u010eX\3\2\2\2\u010f\u0110\7`\2\2\u0110Z"+
		"\3\2\2\2\u0111\u0112\7(\2\2\u0112\\\3\2\2\2\u0113\u0114\7?\2\2\u0114^"+
		"\3\2\2\2\u0115\u0116\7-\2\2\u0116\u0117\7-\2\2\u0117`\3\2\2\2\u0118\u0119"+
		"\7/\2\2\u0119\u011a\7/\2\2\u011ab\3\2\2\2\u011b\u011c\7\60\2\2\u011cd"+
		"\3\2\2\2\u011d\u011e\7^\2\2\u011e\u011f\t\2\2\2\u011ff\3\2\2\2\u0120\u0123"+
		"\n\3\2\2\u0121\u0123\5e\63\2\u0122\u0120\3\2\2\2\u0122\u0121\3\2\2\2\u0123"+
		"h\3\2\2\2\u0124\u0127\5\r\7\2\u0125\u0127\5\17\b\2\u0126\u0124\3\2\2\2"+
		"\u0126\u0125\3\2\2\2\u0127j\3\2\2\2\u0128\u012c\t\4\2\2\u0129\u012b\t"+
		"\5\2\2\u012a\u0129\3\2\2\2\u012b\u012e\3\2\2\2\u012c\u012a\3\2\2\2\u012c"+
		"\u012d\3\2\2\2\u012d\u0131\3\2\2\2\u012e\u012c\3\2\2\2\u012f\u0131\7\62"+
		"\2\2\u0130\u0128\3\2\2\2\u0130\u012f\3\2\2\2\u0131l\3\2\2\2\u0132\u0136"+
		"\7$\2\2\u0133\u0135\5g\64\2\u0134\u0133\3\2\2\2\u0135\u0138\3\2\2\2\u0136"+
		"\u0134\3\2\2\2\u0136\u0137\3\2\2\2\u0137\u0139\3\2\2\2\u0138\u0136\3\2"+
		"\2\2\u0139\u0143\7$\2\2\u013a\u013e\7)\2\2\u013b\u013d\5g\64\2\u013c\u013b"+
		"\3\2\2\2\u013d\u0140\3\2\2\2\u013e\u013c\3\2\2\2\u013e\u013f\3\2\2\2\u013f"+
		"\u0141\3\2\2\2\u0140\u013e\3\2\2\2\u0141\u0143\7)\2\2\u0142\u0132\3\2"+
		"\2\2\u0142\u013a\3\2\2\2\u0143n\3\2\2\2\u0144\u0148\t\6\2\2\u0145\u0147"+
		"\t\7\2\2\u0146\u0145\3\2\2\2\u0147\u014a\3\2\2\2\u0148\u0146\3\2\2\2\u0148"+
		"\u0149\3\2\2\2\u0149p\3\2\2\2\u014a\u0148\3\2\2\2\u014b\u014c\7\61\2\2"+
		"\u014c\u014d\7\61\2\2\u014d\u0151\3\2\2\2\u014e\u0150\n\b\2\2\u014f\u014e"+
		"\3\2\2\2\u0150\u0153\3\2\2\2\u0151\u014f\3\2\2\2\u0151\u0152\3\2\2\2\u0152"+
		"\u0155\3\2\2\2\u0153\u0151\3\2\2\2\u0154\u0156\7\17\2\2\u0155\u0154\3"+
		"\2\2\2\u0155\u0156\3\2\2\2\u0156\u0157\3\2\2\2\u0157\u0158\7\f\2\2\u0158"+
		"\u0159\3\2\2\2\u0159\u015a\b9\2\2\u015ar\3\2\2\2\u015b\u015c\7\61\2\2"+
		"\u015c\u015d\7,\2\2\u015d\u0161\3\2\2\2\u015e\u0160\13\2\2\2\u015f\u015e"+
		"\3\2\2\2\u0160\u0163\3\2\2\2\u0161\u0162\3\2\2\2\u0161\u015f\3\2\2\2\u0162"+
		"\u0164\3\2\2\2\u0163\u0161\3\2\2\2\u0164\u0165\7,\2\2\u0165\u0166\7\61"+
		"\2\2\u0166\u0167\3\2\2\2\u0167\u0168\b:\2\2\u0168t\3\2\2\2\u0169\u016b"+
		"\t\t\2\2\u016a\u0169\3\2\2\2\u016b\u016c\3\2\2\2\u016c\u016a\3\2\2\2\u016c"+
		"\u016d\3\2\2\2\u016d\u016e\3\2\2\2\u016e\u016f\b;\2\2\u016fv\3\2\2\2\17"+
		"\2\u0122\u0126\u012c\u0130\u0136\u013e\u0142\u0148\u0151\u0155\u0161\u016c"+
		"\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}