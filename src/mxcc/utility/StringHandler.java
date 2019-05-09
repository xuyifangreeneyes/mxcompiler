package mxcc.utility;

public class StringHandler {

    public static String unescape(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); ++i) {
            if (s.charAt(i) != '\\') {
                sb.append(s.charAt(i));
            } else {
                ++i;
                switch (s.charAt(i)) {
                    case 't': sb.append('\t'); break;
                    case 'n': sb.append('\n'); break;
                    case 'r': sb.append('\r'); break;
                    case '\'':sb.append('\''); break;
                    case '"': sb.append('"');  break;
                    case '\\':sb.append('\\'); break;
                    default: sb.append(s.charAt(i));
                }
            }
        }
        return sb.toString();
    }

}
