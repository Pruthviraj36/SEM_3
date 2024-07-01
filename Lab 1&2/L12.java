public class L12 {
    public static void main(String[] args) {
        for (int number = 1; number <= 1000; number++) {
            if (isArmstrong(number)) {
                System.out.println(number);
            }
        }
    }

    public static boolean isArmstrong(int number) {
        int sum = 0;
        int temp = number;
        int digits = String.valueOf(number).length();

        while (temp != 0) {
            int digit = temp % 10;
            sum += Math.pow(digit, digits);
            temp /= 10;
        }

        return sum == number;
    }
}
