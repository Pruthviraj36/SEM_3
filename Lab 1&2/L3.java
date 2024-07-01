import java.util.Scanner;

public class L3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a character: ");
        char character = scanner.next().charAt(0);
        if (isVowel(character)) {
            System.out.println("The character is a Vowel");
        } else {
            System.out.println("The character is not a Vowel");
        }
    }

    public static boolean isVowel(char character) {
        return "AEIOUaeiou".indexOf(character) != -1;
    }
}
