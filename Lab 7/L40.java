import java.util.Scanner;

public class L40 {
    public static boolean isAiBi(String str) {
        int countA = 0, countB = 0;
        int i = 0;

        while (i < str.length() && str.charAt(i) == 'a') {
            countA++;
            i++;
        }

        while (i < str.length() && str.charAt(i) == 'b') {
            countB++;
            i++;
        }

        return i == str.length() && countA == countB && countA > 0;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String str = scanner.nextLine();

        if (isAiBi(str)) {
            System.out.println("The string is of the form a^i b^i.");
        } else {
            System.out.println("The string is NOT of the form a^i b^i.");
        }
    }
}
