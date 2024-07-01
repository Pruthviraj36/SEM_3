import java.util.Scanner;

class Employee_Detail {
    private int employeeID;
    private String name;
    private String designation;
    private double salary;

    public void setDetails(int employeeID, String name, String designation, double salary) {
        this.employeeID = employeeID;
        this.name = name;
        this.designation = designation;
        this.salary = salary;
    }

    public void printDetails() {
        System.out.println("Employee ID: " + employeeID);
        System.out.println("Name: " + name);
        System.out.println("Designation: " + designation);
        System.out.println("Salary: " + salary);
    }
}

public class L34 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        Employee_Detail employee = new Employee_Detail();

        System.out.print("Enter Employee ID: ");
        int employeeID = scanner.nextInt();
        scanner.nextLine();  // Consume newline

        System.out.print("Enter Name: ");
        String name = scanner.nextLine();

        System.out.print("Enter Designation: ");
        String designation = scanner.nextLine();

        System.out.print("Enter Salary: ");
        double salary = scanner.nextDouble();

        employee.setDetails(employeeID, name, designation, salary);
        employee.printDetails();
    }
}
