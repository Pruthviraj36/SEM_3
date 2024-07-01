import java.util.Scanner;

public class L27 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String input = scanner.nextLine();
        
        StringBuilder toggledString = new StringBuilder(input.length());
        
        for (char c : input.toCharArray()) {
            if (Character.isLowerCase(c)) {
                toggledString.append(Character.toUpperCase(c));
            } else if (Character.isUpperCase(c)) {
                toggledString.append(Character.toLowerCase(c));
            } else {
                toggledString.append(c);
            }
        }
        
        System.out.println("String after case toggle: " + toggledString.toString());
    }
}
