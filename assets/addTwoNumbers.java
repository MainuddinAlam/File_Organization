/**
 * Java program to add two numbers
 */

import java.util.Scanner;

/**
 * Java program to add two numbers
 */
public class addTwoNumbers {
    public static void main(String[] args) {
        // Creating scanner object
        Scanner kbd = new Scanner(System.in);

        // Prompt the user for the two numbers to be added
        System.out.print("Give your first number: ");
        double num1 = kbd.nextDouble();
        kbd.nextLine();
        System.out.print("Give your second number: ");
        double num2 = kbd.nextDouble();
        kbd.nextLine();
        System.out.println("The result is:  " + (num1 + num2));
    }
}

