package com.java.training.solutions;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.assertj.core.api.Assertions.assertThat;

@DisplayName("Tests unitaires pour la classe Calculatrice")
class CalculatriceTest {

    private Calculatrice calculatrice;
    private ByteArrayOutputStream outputStream;
    private PrintStream originalOut;
    private ByteArrayInputStream inputStream;

    @BeforeEach
    void setUp() {
        // Sauvegarder System.out original
        originalOut = System.out;
        outputStream = new ByteArrayOutputStream();
        System.setOut(new PrintStream(outputStream));
    }

    @AfterEach
    void tearDown() {
        // Restaurer System.out original
        System.setOut(originalOut);
        if (inputStream != null) {
            System.setIn(System.in);
        }
    }

    @Test
    @DisplayName("Devrait effectuer une addition correctement")
    void shouldPerformAdditionCorrectly() {
        // Given
        String input = "1\n5\n3\n";
        inputStream = new ByteArrayInputStream(input.getBytes());
        System.setIn(inputStream);
        calculatrice = new Calculatrice();

        // When
        Calculatrice.main(new String[]{});

        // Then
        String output = outputStream.toString();
        assertThat(output)
            .contains("Entrez le premier nombre:")
            .contains("Entrez le second nombre:")
            .contains("resultat : 8.0");
    }

    @Test
    @DisplayName("Devrait effectuer une soustraction correctement")
    void shouldPerformSubtractionCorrectly() {
        // Given
        String input = "2\n10\n4\n";
        inputStream = new ByteArrayInputStream(input.getBytes());
        System.setIn(inputStream);
        calculatrice = new Calculatrice();

        // When
        Calculatrice.main(new String[]{});

        // Then
        String output = outputStream.toString();
        assertThat(output)
            .contains("Entrez le premier nombre:")
            .contains("Entrez le second nombre:")
            .contains("resultat : 6.0");
    }

    @Test
    @DisplayName("Devrait effectuer une multiplication correctement")
    void shouldPerformMultiplicationCorrectly() {
        // Given
        String input = "3\n7\n6\n";
        inputStream = new ByteArrayInputStream(input.getBytes());
        System.setIn(inputStream);
        calculatrice = new Calculatrice();

        // When
        Calculatrice.main(new String[]{});
        
        // Then
        String output = outputStream.toString();
        assertThat(output)
            .contains("Entrez le premier nombre:")
            .contains("Entrez le second nombre:")
            .contains("resultat : 42.0");
    }

    @Test
    @DisplayName("Devrait effectuer une division correctement")
    void shouldPerformDivisionCorrectly() {
        // Given
        String input = "4\n15\n3\n";
        inputStream = new ByteArrayInputStream(input.getBytes());
        System.setIn(inputStream);
        calculatrice = new Calculatrice();

        // When
        Calculatrice.main(new String[]{});

        // Then
        String output = outputStream.toString();
        assertThat(output)
            .contains("Entrez le premier nombre:")
            .contains("Entrez le second nombre:")
            .contains("resultat : 5.0");
    }

    @Test
    @DisplayName("Devrait gérer la division par zéro")
    void shouldHandleDivisionByZero() {
        // Given
        String input = "4\n10\n0\n";
        inputStream = new ByteArrayInputStream(input.getBytes());
        System.setIn(inputStream);
        calculatrice = new Calculatrice();

        // When
        Calculatrice.main(new String[]{});

        // Then
        String output = outputStream.toString();
        assertThat(output)
            .contains("Entrez le premier nombre:")
            .contains("Entrez le second nombre:")
            .contains("Division par zéro impossible!");
    }

    @Test
    @DisplayName("Devrait gérer les nombres décimaux")
    void shouldHandleDecimalNumbers() {
        // Given
        String input = "1\n2,5\n3,7\n";
        inputStream = new ByteArrayInputStream(input.getBytes());
        System.setIn(inputStream);
        calculatrice = new Calculatrice();

        // When
        Calculatrice.main(new String[]{});

        // Then
        String output = outputStream.toString();
        assertThat(output)
            .contains("resultat : 6.2");
    }

    @Test
    @DisplayName("Devrait gérer les nombres négatifs")
    void shouldHandleNegativeNumbers() {
        // Given
        String input = "2\n-5\n3\n";
        inputStream = new ByteArrayInputStream(input.getBytes());
        System.setIn(inputStream);
        calculatrice = new Calculatrice();

        // When
        Calculatrice.main(new String[]{});

        // Then
        String output = outputStream.toString();
        assertThat(output)
            .contains("resultat : -8.0");
    }

    @Test
    @DisplayName("Devrait gérer les nombres entiers")
    void shouldHandleIntegerNumbers() {
        // Given
        String input = "3\n8\n2\n";
        inputStream = new ByteArrayInputStream(input.getBytes());
        System.setIn(inputStream);
        calculatrice = new Calculatrice();

        // When
        Calculatrice.main(new String[]{});

        // Then
        String output = outputStream.toString();
        assertThat(output)
            .contains("resultat : 16.0");
    }
}
