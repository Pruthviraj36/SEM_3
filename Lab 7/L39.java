import java.util.Stack;

public class L39 {
    public static boolean recognizeString(String str) {
        Stack<Character> stack = new Stack<>();
        int n = str.length();

        for (int i = 0; i < n / 2; i++) {
            stack.push(str.charAt(i));
        }

        for (int i = (n + 1) / 2; i < n; i++) {
            if (stack.isEmpty() || stack.pop() != str.charAt(i)) {
                return false;
            }
        }

        return stack.isEmpty();
    }

    public static void main(String[] args) {
        String[] testStrings = {"aca", "bcb", "abcba", "abbcbba"};

        for (String str : testStrings) {
            if (recognizeString(str)) {
                System.out.println(str + " is recognized by the stack.");
            } else {
                System.out.println(str + " is NOT recognized by the stack.");
            }
        }
    }
}
