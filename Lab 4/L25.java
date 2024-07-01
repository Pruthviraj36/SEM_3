import java.util.Scanner;
import java.util.HashSet;

public class L25 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of elements: ");
        int n = scanner.nextInt();
        
        int[] numbers = new int[n];
        System.out.println("Enter the numbers:");
        for (int i = 0; i < n; i++) {
            numbers[i] = scanner.nextInt();
        }
        
        HashSet<Integer> set = new HashSet<>();
        int[] uniqueNumbers = new int[n];
        int j = 0;
        
        for (int num : numbers) {
            if (set.add(num)) {
                uniqueNumbers[j++] = num;
            }
        }
        
        System.out.println("Array after deleting duplicates:");
        for (int i = 0; i < j; i++) {
            System.out.print(uniqueNumbers[i] + " ");
        }
    }
}
