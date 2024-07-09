import java.util.*;
public class L40 {

    public static boolean isAiBi(String str) {
        Stack<Character> countA = new Stack<Character>();
        Stack<Character> countB = new Stack<Character>();

        int i = 0;

        while(i < str.length() && (str.charAt(i) == 'a' || str.charAt(i) == 'A')) {
            countA.push('a');
            i++;
        }
        while(i < str.length() && (str.charAt(i) == 'b' || str.charAt(i) == 'B')) {
            countB.push('b');
            i++;
        }

        return i == str.length() && countA.size() == countB.size();
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a String to Check : ");
        String str = sc.next();

        if(isAiBi(str)) System.out.println("tu sacho ho bhura");
        else System.out.println("sarkhu string nakhey bhura");
    }
}
