import java.util.Scanner;

public class L26 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of elements in the first array: ");
        int n1 = scanner.nextInt();
        int[] array1 = new int[n1];
        System.out.println("Enter the elements of the first array:");
        for (int i = 0; i < n1; i++) {
            array1[i] = scanner.nextInt();
        }
        
        System.out.print("Enter the number of elements in the second array: ");
        int n2 = scanner.nextInt();
        int[] array2 = new int[n2];
        System.out.println("Enter the elements of the second array:");
        for (int i = 0; i < n2; i++) {
            array2[i] = scanner.nextInt();
        }
        
        int[] mergedArray = new int[n1 + n2];
        System.arraycopy(array1, 0, mergedArray, 0, n1);
        System.arraycopy(array2, 0, mergedArray, n1, n2);
        
        System.out.println("Merged array:");
        for (int num : mergedArray) {
            System.out.print(num + " ");
        }
    }
}
