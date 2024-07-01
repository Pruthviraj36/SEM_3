import java.util.Scanner;

public class L18 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of elements: ");
        int n = scanner.nextInt();
        
        int[] numbers = new int[n];
        System.out.println("Enter the numbers:");
        for (int i = 0; i < n; i++) {
            numbers[i] = scanner.nextInt();
        }
        
        System.out.print("Enter the number to be replaced: ");
        int oldNumber = scanner.nextInt();
        System.out.print("Enter the new number: ");
        int newNumber = scanner.nextInt();
        
        boolean replaced = false;
        for (int i = 0; i < n; i++) {
            if (numbers[i] == oldNumber) {
                numbers[i] = newNumber;
                System.out.println("Replaced " + oldNumber + " with " + newNumber + " at index " + i);
                replaced = true;
            }
        }
        
        if (!replaced) {
            System.out.println("Number " + oldNumber + " not found in the array.");
        } else {
            System.out.println("The final array is:");
            for (int num : numbers) {
                System.out.print(num + " ");
            }
        }
    }
}
