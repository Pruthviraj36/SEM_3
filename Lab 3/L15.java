import java.util.Scanner;

public class L15 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of elements: ");
        int n = scanner.nextInt();
        
        int sum = 0;
        for (int i = 1; i <= n; i++) {
            sum += i;
        }
        
        double average = (double) sum / n;
        System.out.println("The average of the first " + n + " numbers is: " + average);
    }
}
