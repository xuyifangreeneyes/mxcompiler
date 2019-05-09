grammar Mx;

program : declaration* EOF;

declaration : classDecl        # class
            | functionDecl     # func
            | varDecl          # var
            ;

type : nonArrayType (LBRACK RBRACK)*;
nonArrayType : primitiveType | classType;
primitiveType : BOOL | INT | STRING;
classType : Identifier;

varDecl
    : type Identifier (ASSIGN expr)? SEMI
    ;

classDecl
    : CLASS Identifier LBRACE memberDecl* RBRACE
    ;

functionDecl
    : type Identifier LPAREN parameterDecls? RPAREN block   
    | VOID Identifier LPAREN parameterDecls? RPAREN block   
    ;

parameterDecls
    : parameterDecl (COMMA parameterDecl)*
    ;

parameterDecl
    : type Identifier
    ;

parameterList
    : expr (COMMA expr)*     
    ;

memberDecl 
    : varDecl
    | functionDecl
    | classConstructor
    ;
     
classConstructor 
    : Identifier LPAREN RPAREN block
    ;

block : LBRACE statement* RBRACE;

statement 
    : block           # blockStat
    | varDecl         # varDeclStat
    | expr SEMI       # exprStat
    | ifStatement     # ifStat
    | loopStatement   # loopStat
    | jumpStatement   # jumpStat
    | SEMI            # blankStat
    ;

ifStatement
    : IF LPAREN expr RPAREN statement (ELSE statement)?
    ;

loopStatement
    : WHILE LPAREN expr RPAREN statement                                      # whileStat
    | FOR LPAREN init=expr? SEMI cond=expr? SEMI step=expr? RPAREN statement  # forStat
    ;

jumpStatement
    : RETURN expr? SEMI   # returnStat
    | BREAK SEMI          # breakStat
    | CONTINUE SEMI       # continueStat
    ;

creator
    : nonArrayType (LBRACK expr RBRACK)+ (LBRACK RBRACK)+ (LBRACK expr RBRACK)+  # errorCreator
    | nonArrayType (LBRACK expr RBRACK)+ (LBRACK RBRACK)*                        # arrayCreator
    | nonArrayType (LPAREN RPAREN)?                                              # nonArrayCreator
    ;

constant
    : constantType=BoolConstant
    | constantType=IntConstant
    | constantType=StringConstant
    | constantType=NULL
    ;

expr
    : expr op=(INC | DEC)                      # SuffixIncDec
    | expr LPAREN parameterList? RPAREN        # FunctionCall
    | array=expr LBRACK subscript=expr RBRACK  # SubscriptAccess
    | expr DOT Identifier                      # MemberAccess
    
    | <assoc=right> op=(INC | DEC) expr        # UnaryExpr 
    | <assoc=right> op=(ADD | SUB) expr        # UnaryExpr
    | <assoc=right> op=NOT expr                # UnaryExpr
    | <assoc=right> op=BITNOT expr             # UnaryExpr

    | NEW creator    # NewCreator

    | left=expr op=(MUL | DIV | MOD) right=expr      # BinaryExpr
    | left=expr op=(ADD | SUB) right=expr            # BinaryExpr
    | left=expr op=(LSFT | RSFT) right=expr          # BinaryExpr
    | left=expr op=(LT | GT) right=expr              # BinaryExpr
    | left=expr op=(LE | GE) right=expr              # BinaryExpr
    | left=expr op=(EQ | NEQ) right=expr             # BinaryExpr
    | left=expr op=BITAND right=expr                 # BinaryExpr
    | left=expr op=BITXOR right=expr                 # BinaryExpr
    | left=expr op=BITOR right=expr                  # BinaryExpr
    | left=expr op=AND right=expr                    # BinaryExpr
    | left=expr op=OR right=expr                     # BinaryExpr
    | <assoc=right> left=expr op=ASSIGN right=expr   # BinaryExpr
     
    | constant             # ConstantExpr
    | Identifier           # IdExpr
    | THIS                 # ThisExpr
    | LPAREN expr RPAREN   # ParenExpr
    ; 

//------ Reserved Keywords
BOOL : 'bool';
INT : 'int';
STRING : 'string';
NULL : 'null';
VOID : 'void';
fragment TRUE : 'true';
fragment FALSE : 'false';
IF : 'if';
ELSE : 'else';
FOR : 'for';
WHILE : 'while';
BREAK : 'break';
CONTINUE : 'continue';
RETURN : 'return';
NEW : 'new';
CLASS : 'class';
THIS : 'this';

//------ Separator
LPAREN	: '(';
RPAREN	: ')';
LBRACE	: '{';
RBRACE	: '}';
LBRACK	: '[';
RBRACK	: ']';
SEMI	: ';';
COMMA	: ',';

//------ Operators
//------ Arithmetic
ADD	: '+';
SUB	: '-';
MUL	: '*';
DIV	: '/';
MOD	: '%';
//------ Relation
LT	: '<';
GT	: '>';
EQ	: '==';
NEQ	: '!=';
GE	: '>=';
LE	: '<=';
//------ Logic
AND	: '&&';
NOT	: '!';
OR	: '||';
//------ Bit
LSFT	: '<<';
RSFT	: '>>';
BITNOT	: '~';
BITOR   : '|';
BITXOR	: '^';
BITAND	: '&';
//------ Assign
ASSIGN : '=';
//------ Inc&dec
INC	: '++';
DEC	: '--';
//------ Member
DOT : '.';

fragment EscapeSequence : '\\' [btnfr"'\\];
fragment StringCharacter : ~["\\] | EscapeSequence;

BoolConstant : TRUE | FALSE;

IntConstant : [1-9][0-9]* | '0';

StringConstant : '"' StringCharacter* '"' 
               | '\'' StringCharacter* '\''
               ;

Identifier : [a-zA-Z][0-9a-zA-Z_]*;

LINE_COMMENT
    : '//' ~[\r\n]* '\r'? '\n' -> skip
    ;

BLOCK_COMMENT
    :   '/*' .*? '*/' -> skip
    ;

WS  :   [ \r\t\n]+ -> skip
    ;