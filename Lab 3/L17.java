import java.util.Scanner;
import java.util.HashSet;

public class L17 {
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
        boolean containsDuplicate = false;
        for (int num : numbers) {
            if (!set.add(num)) {
                containsDuplicate = true;
                break;
            }
        }
        
        if (containsDuplicate) {
            System.out.println("The array contains duplicate numbers.");
        } else {
            System.out.println("The array does not contain duplicate numbers.");
        }
    }
}
