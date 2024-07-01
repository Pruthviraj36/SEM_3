import java.util.*;

public class L29 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();  // Number of test cases

        while (t-- > 0) {
            int n = scanner.nextInt();  // Size of the array
            int[] arr = new int[n];

            for (int i = 0; i < n; i++) {
                arr[i] = scanner.nextInt();
            }

            // Create a result array by rotating the elements
            int[] result = new int[n];
            for (int i = 0; i < n; i++) {
                result[i] = arr[(i + 1) % n];
            }

            // Count the number of pairs that remain the same
            int unchangedCount = 0;
            for (int i = 0; i < n; i++) {
                if (arr[i] == result[i]) {
                    unchangedCount++;
                    // Swap with next element if the same
                    int temp = result[i];
                    result[i] = result[(i + 1) % n];
                    result[(i + 1) % n] = temp;
                }
            }

            System.out.println(n - unchangedCount);
            for (int num : result) {
                System.out.print(num + " ");
            }
            System.out.println();
        }
    }
}
