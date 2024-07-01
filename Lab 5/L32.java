import java.util.Arrays;
import java.util.Random;
import java.util.Scanner;

public class L32 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Enter the number of words: ");
        int n = scanner.nextInt();
        scanner.nextLine();  // Consume the newline character
        
        String[] words = new String[n];
        System.out.println("Enter the words:");
        for (int i = 0; i < n; i++) {
            words[i] = scanner.nextLine();
        }
        
        Random random = new Random();
        int randomIndex = random.nextInt(n);
        String chosenWord = words[randomIndex];
        
        System.out.println("Form an anagram of the word: " + chosenWord);
        String userAnagram = scanner.nextLine();
        
        if (isAnagram(chosenWord, userAnagram)) {
            System.out.println("Correct! " + userAnagram + " is an anagram of " + chosenWord);
        } else {
            System.out.println("Incorrect! " + userAnagram + " is not an anagram of " + chosenWord);
        }
    }
    
    public static boolean isAnagram(String word1, String word2) {
        if (word1.length() != word2.length()) {
            return false;
        }
        
        char[] charArray1 = word1.toCharArray();
        char[] charArray2 = word2.toCharArray();
        
        Arrays.sort(charArray1);
        Arrays.sort(charArray2);
        
        return Arrays.equals(charArray1, charArray2);
    }
}
