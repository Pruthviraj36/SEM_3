import java.util.Scanner;

public class L36 {

    // Task 1: Temperature Conversion
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter temperature:");
        double temperature = scanner.nextDouble();

        System.out.println("Enter 1 to convert Celsius to Fahrenheit, 2 to convert Fahrenheit to Celsius:");
        int choice = scanner.nextInt();

        if (choice == 1) {
            System.out.println("Temperature in Fahrenheit: " + celsiusToFahrenheit(temperature));
        } else if (choice == 2) {
            System.out.println("Temperature in Celsius: " + fahrenheitToCelsius(temperature));
        } else {
            System.out.println("Invalid choice");
        }
    }

    public static double celsiusToFahrenheit(double celsius) {
        return (celsius * 9/5) + 32;
    }

    public static double fahrenheitToCelsius(double fahrenheit) {
        return (fahrenheit - 32) * 5/9;
    }
}
