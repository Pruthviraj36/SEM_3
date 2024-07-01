import java.util.Scanner;

public class L23 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of elements: ");
        int n = scanner.nextInt();
        
        int[] numbers = new int[n + 1];
        System.out.println("Enter the sorted numbers:");
        for (int i = 0; i < n; i++) {
            numbers[i] = scanner.nextInt();
        }
        
        System.out.print("Enter the number to insert: ");
        int numberToInsert = scanner.nextInt();
        
        int i;
        for (i = n - 1; i >= 0 && numbers[i] > numberToInsert; i--) {
            numbers[i + 1] = numbers[i];
        }
        numbers[i + 1] = numberToInsert;
        
        System.out.println("Array after insertion:");
        for (int num : numbers) {
            System.out.print(num + " ");
        }
    }
}
