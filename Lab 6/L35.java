import java.util.Scanner;

class Student_Detail {
    private String enrollmentNo;
    private String name;
    private int semester;
    private double cpi;

    public void setDetails(String enrollmentNo, String name, int semester, double cpi) {
        this.enrollmentNo = enrollmentNo;
        this.name = name;
        this.semester = semester;
        this.cpi = cpi;
    }

    public void printDetails() {
        System.out.println("Enrollment No: " + enrollmentNo);
        System.out.println("Name: " + name);
        System.out.println("Semester: " + semester);
        System.out.println("CPI: " + cpi);
    }
}

public class L35 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Student_Detail[] students = new Student_Detail[5];

        for (int i = 0; i < 5; i++) {
            students[i] = new Student_Detail();

            System.out.print("Enter Enrollment No: ");
            String enrollmentNo = scanner.nextLine();

            System.out.print("Enter Name: ");
            String name = scanner.nextLine();

            System.out.print("Enter Semester: ");
            int semester = scanner.nextInt();

            System.out.print("Enter CPI: ");
            double cpi = scanner.nextDouble();
            scanner.nextLine();  // Consume newline

            students[i].setDetails(enrollmentNo, name, semester, cpi);
        }

        System.out.println("\nStudent Details:");
        for (Student_Detail student : students) {
            student.printDetails();
            System.out.println();
        }
    }
}
