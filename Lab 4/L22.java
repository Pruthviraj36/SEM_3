import java.util.Scanner;

public class L22 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of elements: ");
        int n = scanner.nextInt();
        
        int[] numbers = new int[n];
        System.out.println("Enter the numbers:");
        for (int i = 0; i < n; i++) {
            numbers[i] = scanner.nextInt();
        }
        
        System.out.print("Enter the position to delete the number from: ");
        int position = scanner.nextInt();
        
        for (int i = position; i < n - 1; i++) {
            numbers[i] = numbers[i + 1];
        }
        
        System.out.println("Array after deletion:");
        for (int i = 0; i < n - 1; i++) {
            System.out.print(numbers[i] + " ");
        }
    }
}
