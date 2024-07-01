import java.util.Scanner;

public class L33 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter first number: ");
        int num1 = scanner.nextInt();
        
        System.out.print("Enter second number: ");
        int num2 = scanner.nextInt();

        System.out.println("Before swapping: num1 = " + num1 + ", num2 = " + num2);
        
        swap(num1, num2);
    }

    public static void swap(int a, int b) {
        int temp = a;
        a = b;
        b = temp;
        
        System.out.println("After swapping: num1 = " + a + ", num2 = " + b);
    }
}
