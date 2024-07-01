import java.util.Scanner;

public class L24 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of elements: ");
        int n = scanner.nextInt();
        
        int[] numbers = new int[n];
        System.out.println("Enter the sorted numbers:");
        for (int i = 0; i < n; i++) {
            numbers[i] = scanner.nextInt();
        }
        
        System.out.print("Enter the number to delete: ");
        int numberToDelete = scanner.nextInt();
        
        int i;
        for (i = 0; i < n; i++) {
            if (numbers[i] == numberToDelete) {
                break;
            }
        }
        
        if (i < n) {
            for (int j = i; j < n - 1; j++) {
                numbers[j] = numbers[j + 1];
            }
        }
        
        System.out.println("Array after deletion:");
        for (int j = 0; j < n - 1; j++) {
            System.out.print(numbers[j] + " ");
        }
    }
}
