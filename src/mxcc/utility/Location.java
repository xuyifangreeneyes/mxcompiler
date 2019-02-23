package mxcc.utility;

import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.TerminalNode;

public class Location {
    public final int line;
    public final int column;

    public Location(int line, int column) {
        this.line = line;
        this.column = column;
    }

    public Location(Token token) {
        this.line = token.getLine();
        this.column = token.getCharPositionInLine();
    }

    public Location(TerminalNode node) {
        this(node.getSymbol());
    }

    public Location(ParserRuleContext ctx) {
        this(ctx.start);
    }

    public boolean before(Location other) {
        if (line != other.line) return line < other.line;
        return column < other.column;
    }
}
