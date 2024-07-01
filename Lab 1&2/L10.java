import java.util.Scanner;

public class L10 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of days: ");
        int totalDays = scanner.nextInt();
        
        int years = totalDays / 365;
        int weeks = (totalDays % 365) / 7;
        int days = totalDays % 7;
        
        System.out.printf("%d year(s), %d week(s), and %d day(s)\n", years, weeks, days);
    }
}
