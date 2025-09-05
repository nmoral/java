#!/bin/bash

# Script de test pour valider les solutions des défis
# Usage: ./run-tests.sh [niveau] [défi]

echo "=== VALIDATEUR DE SOLUTIONS ==="
echo "Système de test pour les défis Java"
echo ""

# Vérifier que Java est installé
if ! command -v java &> /dev/null; then
    echo "❌ Java n'est pas installé. Veuillez installer Java 17+ d'abord."
    exit 1
fi

# Vérifier que Maven est installé
if ! command -v mvn &> /dev/null; then
    echo "❌ Maven n'est pas installé. Veuillez installer Maven d'abord."
    exit 1
fi

# Compiler le projet
echo "🔨 Compilation du projet..."
mvn compile -q

if [ $? -ne 0 ]; then
    echo "❌ Erreur de compilation. Vérifiez votre code."
    exit 1
fi

echo "✅ Compilation réussie!"
echo ""

# Fonction pour tester un défi
test_challenge() {
    local level=$1
    local challenge=$2
    local class=$3
    local description=$4
    
    echo "🧪 Test du défi: $description"
    echo "----------------------------------------"
    
    # Vérifier que le fichier existe
    if [ ! -f "solutions/$class.java" ]; then
        echo "❌ Fichier solutions/$class.java non trouvé"
        echo "   Créez votre solution dans le dossier solutions/"
        echo ""
        return 1
    fi
    
    # Compiler la solution
    echo "🔨 Compilation de la solution..."
    javac -cp "target/classes" "solutions/$class.java"
    
    if [ $? -ne 0 ]; then
        echo "❌ Erreur de compilation de la solution"
        echo "   Vérifiez votre code dans solutions/$class.java"
        echo ""
        return 1
    fi
    
    echo "✅ Compilation de la solution réussie!"
    echo ""
    
    # Exécuter la solution
    echo "🚀 Exécution de la solution..."
    echo "   (Appuyez sur Ctrl+C pour arrêter)"
    echo ""
    
    java -cp "target/classes:solutions" "$class"
    
    echo ""
    echo "✅ Test terminé pour $description"
    echo ""
}

# Si des arguments sont fournis, tester ce défi spécifique
if [ $# -eq 2 ]; then
    case $1 in
        "1")
            case $2 in
                "1")
                    test_challenge "1" "1" "Calculatrice" "Calculatrice Simple"
                    ;;
                "2")
                    test_challenge "1" "2" "GestionnaireNotes" "Gestionnaire de Notes"
                    ;;
                "3")
                    test_challenge "1" "3" "JeuDevinette" "Jeu de Devinette"
                    ;;
                *)
                    echo "❌ Défi inconnu: $2"
                    echo "Défis disponibles pour le niveau 1: 1, 2, 3"
                    exit 1
                    ;;
            esac
            ;;
        "2")
            case $2 in
                "4")
                    test_challenge "2" "4" "GestionnaireComptes" "Gestionnaire de Comptes"
                    ;;
                "5")
                    test_challenge "2" "5" "Bibliotheque" "Système de Bibliothèque"
                    ;;
                *)
                    echo "❌ Défi inconnu: $2"
                    echo "Défis disponibles pour le niveau 2: 4, 5"
                    exit 1
                    ;;
            esac
            ;;
        "3")
            case $2 in
                "6")
                    test_challenge "3" "6" "GestionnaireInventaire" "Gestionnaire d'Inventaire"
                    ;;
                "7")
                    test_challenge "3" "7" "Restaurant" "Système de Restaurant"
                    ;;
                *)
                    echo "❌ Défi inconnu: $2"
                    echo "Défis disponibles pour le niveau 3: 6, 7"
                    exit 1
                    ;;
            esac
            ;;
        "4")
            case $2 in
                "8")
                    test_challenge "4" "8" "GestionnaireRH" "Gestionnaire RH"
                    ;;
                "9")
                    test_challenge "4" "9" "BibliothequeAvancee" "Bibliothèque Avancée"
                    ;;
                "10")
                    test_challenge "4" "10" "GestionnaireVentes" "Gestionnaire de Ventes"
                    ;;
                *)
                    echo "❌ Défi inconnu: $2"
                    echo "Défis disponibles pour le niveau 4: 8, 9, 10"
                    exit 1
                    ;;
            esac
            ;;
        *)
            echo "❌ Niveau inconnu: $1"
            echo "Niveaux disponibles: 1, 2, 3, 4"
            exit 1
            ;;
    esac
else
    # Menu interactif
    echo "📚 Niveaux disponibles:"
    echo "1. Niveau 1 - Problèmes de base"
    echo "2. Niveau 2 - Problèmes intermédiaires"
    echo "3. Niveau 3 - Problèmes avancés"
    echo "4. Niveau 4 - Problèmes complexes"
    echo "0. Quitter"
    echo ""
    read -p "Choisissez un niveau (0-4): " level
    
    case $level in
        1)
            echo ""
            echo "🎯 Défis du niveau 1:"
            echo "1. Calculatrice Simple"
            echo "2. Gestionnaire de Notes"
            echo "3. Jeu de Devinette"
            echo ""
            read -p "Choisissez un défi (1-3): " challenge
            case $challenge in
                1) test_challenge "1" "1" "Calculatrice" "Calculatrice Simple" ;;
                2) test_challenge "1" "2" "GestionnaireNotes" "Gestionnaire de Notes" ;;
                3) test_challenge "1" "3" "JeuDevinette" "Jeu de Devinette" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        2)
            echo ""
            echo "🎯 Défis du niveau 2:"
            echo "4. Gestionnaire de Comptes"
            echo "5. Système de Bibliothèque"
            echo ""
            read -p "Choisissez un défi (4-5): " challenge
            case $challenge in
                4) test_challenge "2" "4" "GestionnaireComptes" "Gestionnaire de Comptes" ;;
                5) test_challenge "2" "5" "Bibliotheque" "Système de Bibliothèque" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        3)
            echo ""
            echo "🎯 Défis du niveau 3:"
            echo "6. Gestionnaire d'Inventaire"
            echo "7. Système de Restaurant"
            echo ""
            read -p "Choisissez un défi (6-7): " challenge
            case $challenge in
                6) test_challenge "3" "6" "GestionnaireInventaire" "Gestionnaire d'Inventaire" ;;
                7) test_challenge "3" "7" "Restaurant" "Système de Restaurant" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        4)
            echo ""
            echo "🎯 Défis du niveau 4:"
            echo "8. Gestionnaire RH"
            echo "9. Bibliothèque Avancée"
            echo "10. Gestionnaire de Ventes"
            echo ""
            read -p "Choisissez un défi (8-10): " challenge
            case $challenge in
                8) test_challenge "4" "8" "GestionnaireRH" "Gestionnaire RH" ;;
                9) test_challenge "4" "9" "BibliothequeAvancee" "Bibliothèque Avancée" ;;
                10) test_challenge "4" "10" "GestionnaireVentes" "Gestionnaire de Ventes" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        0)
            echo "👋 Au revoir!"
            exit 0
            ;;
        *)
            echo "❌ Niveau invalide."
            exit 1
            ;;
    esac
fi

echo "🎉 Tests terminés!"
echo ""
echo "💡 Conseils:"
echo "- Lisez attentivement les spécifications de chaque défi"
echo "- Testez votre code étape par étape"
echo "- Utilisez un IDE pour une meilleure expérience"
echo "- Consultez la documentation Java si nécessaire"
