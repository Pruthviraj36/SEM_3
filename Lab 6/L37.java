import java.util.Scanner;

class BankAccount {
    private String accountNumber;
    private double balance;
    private String accountHolderName;

    public BankAccount(String accountNumber, String accountHolderName, double initialBalance) {
        this.accountNumber = accountNumber;
        this.accountHolderName = accountHolderName;
        this.balance = initialBalance;
    }

    public void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            System.out.println("Deposited: " + amount);
            System.out.println("New Balance: " + balance);
        } else {
            System.out.println("Invalid deposit amount");
        }
    }

    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            System.out.println("Withdrew: " + amount);
            System.out.println("New Balance: " + balance);
        } else {
            System.out.println("Invalid withdrawal amount or insufficient balance");
        }
    }

    public void checkBalance() {
        System.out.println("Current Balance: " + balance);
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public String getAccountHolderName() {
        return accountHolderName;
    }
}

public class L37 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        BankAccount[] accounts = new BankAccount[2];
        
        // Create bank accounts
        accounts[0] = new BankAccount("123456", "John Doe", 1000.0);
        accounts[1] = new BankAccount("654321", "Jane Doe", 2000.0);

        // Simulate some operations
        accounts[0].deposit(500.0);
        accounts[0].withdraw(200.0);
        accounts[0].checkBalance();

        accounts[1].deposit(1000.0);
        accounts[1].withdraw(500.0);
        accounts[1].checkBalance();
    }
}
