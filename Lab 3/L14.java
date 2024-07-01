import java.util.Scanner;

public class L14 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the starting number (m): ");
        int m = scanner.nextInt();
        System.out.print("Enter the ending number (n): ");
        int n = scanner.nextInt();
        
        int sum = 0;
        for (int i = m; i <= n; i++) {
            sum += i;
        }
        
        System.out.println("The sum from " + m + " to " + n + " is: " + sum);
    }
}
