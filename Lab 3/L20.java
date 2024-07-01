import java.util.Scanner;
import java.util.Arrays;

public class L20 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of names: ");
        int n = scanner.nextInt();
        scanner.nextLine(); // Consume the newline character
        
        String[] names = new String[n];
        System.out.println("Enter the names:");
        for (int i = 0; i < n; i++) {
            names[i] = scanner.nextLine();
        }
        
        Arrays.sort(names);
        
        System.out.println("The names in alphabetical order are:");
        for (String name : names) {
            System.out.println(name);
        }
    }
}
