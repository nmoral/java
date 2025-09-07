package com.java.training.solutions;

import java.nio.charset.StandardCharsets;
import java.util.Scanner;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Calculatrice {
    
    // Logger pour cette classe
    private static final Logger LOGGER = LoggerFactory.getLogger(Calculatrice.class);

    private final Scanner scanner;

    private static final String FIRST_NUMBER = "Entrez le premier nombre: ";
    private static final String SECOND_NUMBER = "Entrez le second nombre: ";

    public Calculatrice() {
        scanner = new Scanner(System.in, StandardCharsets.UTF_8);
    }

    public static void main(final String[] args) {

        final Calculatrice calculatrice = new Calculatrice();
        calculatrice.handleChoice(calculatrice.printMenu());
    }

    private int printMenu() {
        printMessage("=== CALCULATRICE SIMPLE ===");
        printMessage("1. Addition");
        printMessage("2. Soustraction");
        printMessage("3. Multiplication");
        printMessage("4. Division");
        printMessage("5. Quitter");
        printMessage("Votre choix: ");
        while (!scanner.hasNextInt()) {
            printMessage("Entrée invalide. Veuillez entrer un nombre valide.");
            scanner.next();
        }

        return scanner.nextInt();
        
    }

    private void handleChoice(final int choice) {
        switch (choice) {
            case 1:
                this.add();
                break;
            case 2:
                this.sub();
                break;
            case 3:
                this.mul();
                break;
            case 4:
                this.div();
                break;
            case 5:
                break;
            default:
                this.printMessage("Choix invalide");
                break;
        }
    }

    private void add() {
        final double firstNumber = askForNumber(FIRST_NUMBER);
        final double secondNumber = askForNumber(SECOND_NUMBER);
        printResult(firstNumber + secondNumber);
    }

    private void sub() {
        final double firstNumber = askForNumber(FIRST_NUMBER);
        final double secondNumber = askForNumber(SECOND_NUMBER);
        printResult(firstNumber - secondNumber);
    }

    private void mul() {
        final double firstNumber = askForNumber(FIRST_NUMBER);
        final double secondNumber = askForNumber(SECOND_NUMBER);
        printResult(firstNumber * secondNumber);
    }

    @SuppressWarnings({"PMD.PrematureDeclaration", "PMD.DataflowAnomalyAnalysis"})
    private void div() {
        final double firstNumber = askForNumber(FIRST_NUMBER);
        final double secondNumber = askForNumber(SECOND_NUMBER);
        if (secondNumber == 0) {
            printMessage("Division par zéro impossible!");
            return;
        }

        printResult(firstNumber / secondNumber);
    }


    private double askForNumber(final String message) {
        printMessage(message);
        while (!scanner.hasNextDouble()) {
            printMessage("Entrée invalide. Veuillez entrer un nombre valide.");
            scanner.next();
        }

        return scanner.nextDouble();
    }

    private void printResult(final double result) {
        printMessage("resultat : " + result);
    }

    private void printMessage(final String message) {
        if (LOGGER.isInfoEnabled()) { 
            LOGGER.info(message);
        }
    }   
}