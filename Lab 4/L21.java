import java.util.Scanner;

public class L21 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of elements: ");
        int n = scanner.nextInt();
        
        int[] numbers = new int[n + 1];
        System.out.println("Enter the numbers:");
        for (int i = 0; i < n; i++) {
            numbers[i] = scanner.nextInt();
        }
        
        System.out.print("Enter the number to insert: ");
        int numberToInsert = scanner.nextInt();
        System.out.print("Enter the position to insert the number: ");
        int position = scanner.nextInt();
        
        for (int i = n; i > position; i--) {
            numbers[i] = numbers[i - 1];
        }
        numbers[position] = numberToInsert;
        
        System.out.println("Array after insertion:");
        for (int num : numbers) {
            System.out.print(num + " ");
        }
    }
}
