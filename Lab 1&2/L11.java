import java.util.Scanner;

public class L11 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int n = scanner.nextInt();
        
        int sum = 0;
        for (int i = 1; i <= n; i++) {
            sum += i * (i + 1) / 2;
        }
        
        System.out.println("The sum of the series is: " + sum);
    }
}
