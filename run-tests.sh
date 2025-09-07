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
mvn compile -q -Dcheckstyle.skip=true -Dspotbugs.skip=true -Dpmd.skip=true

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
    
    # Vérifier que le fichier existe dans src/main/java
    local src_file="src/main/java/com/java/training/solutions/$class.java"
    local solutions_file="solutions/$class.java"
    
    if [ ! -f "$src_file" ] && [ ! -f "$solutions_file" ]; then
        echo "❌ Fichier $class.java non trouvé"
        echo "   Créez votre solution dans:"
        echo "   • src/main/java/com/java/training/solutions/$class.java (recommandé)"
        echo "   • ou solutions/$class.java (legacy)"
        echo ""
        return 1
    fi
    
    # Si le fichier existe dans solutions/, le copier vers src/
    if [ -f "$solutions_file" ] && [ ! -f "$src_file" ]; then
        echo "📁 Copie du fichier depuis solutions/ vers src/..."
        mkdir -p "src/main/java/com/java/training/solutions"
        cp "$solutions_file" "$src_file"
        
        # Ajouter le package au début du fichier s'il n'existe pas
        if ! grep -q "package com.java.training.solutions;" "$src_file"; then
            sed -i '1i package com.java.training.solutions;\n' "$src_file"
        fi
        
        # Rendre la classe publique si elle ne l'est pas
        sed -i 's/^class /public class /' "$src_file"
        
        # Rendre les méthodes publiques si elles sont privées
        sed -i 's/private void /public void /' "$src_file"
        
        echo "✅ Fichier copié et adapté pour Maven"
    fi
    
    # Compiler avec Maven
    echo "🔨 Compilation avec Maven..."
    mvn compile -q -Dcheckstyle.skip=true -Dspotbugs.skip=true -Dpmd.skip=true
    
    if [ $? -ne 0 ]; then
        echo "❌ Erreur de compilation Maven"
        echo "   Vérifiez votre code dans $src_file"
        echo ""
        return 1
    fi
    
    echo "✅ Compilation Maven réussie!"
    echo ""
    
    # Exécuter la solution
    echo "🚀 Exécution de la solution..."
    echo "   (Appuyez sur Ctrl+C pour arrêter)"
    echo ""
    
    # Générer le classpath avec toutes les dépendances
    CLASSPATH=$(mvn dependency:build-classpath -Dmdep.outputFile=/dev/stdout -q)
    java -cp "target/classes:$CLASSPATH" "com.java.training.solutions.$class"
    
    echo ""
    echo "✅ Test terminé pour $description"
    echo ""
}

# Si des arguments sont fournis, tester ce défi spécifique
if [ $# -eq 2 ]; then
    case $1 in
        "1")
            case $2 in
                "1") test_challenge "1" "1" "Calculatrice" "Calculatrice Simple" ;;
                "2") test_challenge "1" "2" "GestionnaireNotes" "Gestionnaire de Notes" ;;
                "3") test_challenge "1" "3" "JeuDevinette" "Jeu de Devinette" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 1: 1, 2, 3"; exit 1 ;;
            esac
            ;;
        "2")
            case $2 in
                "4") test_challenge "2" "4" "GestionnaireComptes" "Gestionnaire de Comptes" ;;
                "5") test_challenge "2" "5" "Bibliotheque" "Système de Bibliothèque" ;;
                "6") test_challenge "2" "6" "GestionnaireInventaire" "Gestionnaire d'Inventaire" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 2: 4, 5, 6"; exit 1 ;;
            esac
            ;;
        "3")
            case $2 in
                "7") test_challenge "3" "7" "SystemeVehicules" "Système de Véhicules" ;;
                "8") test_challenge "3" "8" "FormesGeometriques" "Système de Formes Géométriques" ;;
                "9") test_challenge "3" "9" "GestionnaireAnimaux" "Système de Gestion d'Animaux" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 3: 7, 8, 9"; exit 1 ;;
            esac
            ;;
        "4")
            case $2 in
                "10") test_challenge "4" "10" "SystemePaiement" "Système de Paiement" ;;
                "11") test_challenge "4" "11" "SystemeNotifications" "Système de Notifications" ;;
                "12") test_challenge "4" "12" "SystemePlugins" "Système de Plugins" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 4: 10, 11, 12"; exit 1 ;;
            esac
            ;;
        "5")
            case $2 in
                "13") test_challenge "5" "13" "GestionnaireContacts" "Système de Gestion de Contacts" ;;
                "14") test_challenge "5" "14" "GestionnaireCommandes" "Système de Gestion de Commandes" ;;
                "15") test_challenge "5" "15" "SystemeCache" "Système de Cache" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 5: 13, 14, 15"; exit 1 ;;
            esac
            ;;
        "6")
            case $2 in
                "16") test_challenge "6" "16" "SystemeValidation" "Système de Validation" ;;
                "17") test_challenge "6" "17" "GestionnaireFichiers" "Système de Gestion de Fichiers" ;;
                "18") test_challenge "6" "18" "GestionnaireBaseDonnees" "Système de Gestion de Base de Données" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 6: 16, 17, 18"; exit 1 ;;
            esac
            ;;
        "7")
            case $2 in
                "19") test_challenge "7" "19" "AnalyseDonnees" "Système d'Analyse de Données" ;;
                "20") test_challenge "7" "20" "FiltrageTransformation" "Système de Filtrage et Transformation" ;;
                "21") test_challenge "7" "21" "TraitementFichiers" "Système de Traitement de Fichiers" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 7: 19, 20, 21"; exit 1 ;;
            esac
            ;;
        "8")
            case $2 in
                "23") test_challenge "8" "23" "GestionnaireGraphes" "Système de Gestion de Graphes" ;;
                "24") test_challenge "8" "24" "CompressionCryptographie" "Système de Compression et Cryptographie" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 8: 23, 24"; exit 1 ;;
            esac
            ;;
        "9")
            case $2 in
                "25") test_challenge "9" "25" "ChatTempsReel" "Système de Chat en Temps Réel" ;;
                "26") test_challenge "9" "26" "ApiRest" "API REST avec Authentification" ;;
                "27") test_challenge "9" "27" "CacheDistribue" "Système de Cache Distribué" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 9: 25, 26, 27"; exit 1 ;;
            esac
            ;;
        "10")
            case $2 in
                "28") test_challenge "10" "28" "Microservices" "Microservices avec Communication" ;;
                "29") test_challenge "10" "29" "MonitoringAlertes" "Système de Monitoring et Alertes" ;;
                "30") test_challenge "10" "30" "PipelineCICD" "Pipeline CI/CD" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 10: 28, 29, 30"; exit 1 ;;
            esac
            ;;
        "11")
            case $2 in
                "29") test_challenge "11" "29" "AlgorithmesTri" "Algorithmes de Tri Avancés" ;;
                "30") test_challenge "11" "30" "AlgorithmesRecherche" "Algorithmes de Recherche Avancés" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 11: 29, 30"; exit 1 ;;
            esac
            ;;
        "12")
            case $2 in
                "31") test_challenge "12" "31" "PlusCourtsChemins" "Algorithmes de Plus Courts Chemins" ;;
                "32") test_challenge "12" "32" "ComposantesConnexes" "Composantes Fortement Connexes" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 12: 31, 32"; exit 1 ;;
            esac
            ;;
        "13")
            case $2 in
                "33") test_challenge "13" "33" "FlotMaximum" "Algorithmes de Flot Maximum" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 13: 33"; exit 1 ;;
            esac
            ;;
        "14")
            case $2 in
                "34") test_challenge "14" "34" "AlgorithmesGeometriques" "Algorithmes Géométriques" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 14: 34"; exit 1 ;;
            esac
            ;;
        "15")
            case $2 in
                "35") test_challenge "15" "35" "RechercheMotifs" "Algorithmes de Recherche de Motifs" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 15: 35"; exit 1 ;;
            esac
            ;;
        "16")
            case $2 in
                "36") test_challenge "16" "36" "CompressionAvancee" "Algorithmes de Compression Avancés" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 16: 36"; exit 1 ;;
            esac
            ;;
        "17")
            case $2 in
                "37") test_challenge "17" "37" "MachineLearning" "Algorithmes de Machine Learning" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 17: 37"; exit 1 ;;
            esac
            ;;
        "18")
            case $2 in
                "38") test_challenge "18" "38" "CryptographieAvancee" "Algorithmes de Cryptographie Avancés" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 18: 38"; exit 1 ;;
            esac
            ;;
        "19")
            case $2 in
                "39") test_challenge "19" "39" "SimulationMonteCarlo" "Algorithmes de Simulation et Monte Carlo" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 19: 39"; exit 1 ;;
            esac
            ;;
        "20")
            case $2 in
                "40") test_challenge "20" "40" "TraitementImages" "Algorithmes de Traitement d'Images" ;;
                *) echo "❌ Défi inconnu: $2"; echo "Défis disponibles pour le niveau 20: 40"; exit 1 ;;
            esac
            ;;
        *)
            echo "❌ Niveau inconnu: $1"
            echo "Niveaux disponibles: 1-20"
            exit 1
            ;;
    esac
else
    # Menu interactif
    echo "📚 Niveaux disponibles:"
    echo "1-5.  Niveaux 1-5  - Bases du langage Java"
    echo "6-10. Niveaux 6-10 - Programmation intermédiaire et avancée"
    echo "11-15. Niveaux 11-15 - Algorithmes complexes"
    echo "16-20. Niveaux 16-20 - Algorithmes spécialisés"
    echo "0. Quitter"
    echo ""
    read -p "Choisissez un niveau (0-20): " level
    
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
            echo "6. Gestionnaire d'Inventaire"
            echo ""
            read -p "Choisissez un défi (4-6): " challenge
            case $challenge in
                4) test_challenge "2" "4" "GestionnaireComptes" "Gestionnaire de Comptes" ;;
                5) test_challenge "2" "5" "Bibliotheque" "Système de Bibliothèque" ;;
                6) test_challenge "2" "6" "GestionnaireInventaire" "Gestionnaire d'Inventaire" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        3)
            echo ""
            echo "🎯 Défis du niveau 3:"
            echo "7. Système de Véhicules"
            echo "8. Système de Formes Géométriques"
            echo "9. Système de Gestion d'Animaux"
            echo ""
            read -p "Choisissez un défi (7-9): " challenge
            case $challenge in
                7) test_challenge "3" "7" "SystemeVehicules" "Système de Véhicules" ;;
                8) test_challenge "3" "8" "FormesGeometriques" "Système de Formes Géométriques" ;;
                9) test_challenge "3" "9" "GestionnaireAnimaux" "Système de Gestion d'Animaux" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        4)
            echo ""
            echo "🎯 Défis du niveau 4:"
            echo "10. Système de Paiement"
            echo "11. Système de Notifications"
            echo "12. Système de Plugins"
            echo ""
            read -p "Choisissez un défi (10-12): " challenge
            case $challenge in
                10) test_challenge "4" "10" "SystemePaiement" "Système de Paiement" ;;
                11) test_challenge "4" "11" "SystemeNotifications" "Système de Notifications" ;;
                12) test_challenge "4" "12" "SystemePlugins" "Système de Plugins" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        5)
            echo ""
            echo "🎯 Défis du niveau 5:"
            echo "13. Système de Gestion de Contacts"
            echo "14. Système de Gestion de Commandes"
            echo "15. Système de Cache"
            echo ""
            read -p "Choisissez un défi (13-15): " challenge
            case $challenge in
                13) test_challenge "5" "13" "GestionnaireContacts" "Système de Gestion de Contacts" ;;
                14) test_challenge "5" "14" "GestionnaireCommandes" "Système de Gestion de Commandes" ;;
                15) test_challenge "5" "15" "SystemeCache" "Système de Cache" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        6)
            echo ""
            echo "🎯 Défis du niveau 6:"
            echo "16. Système de Validation"
            echo "17. Système de Gestion de Fichiers"
            echo "18. Système de Gestion de Base de Données"
            echo ""
            read -p "Choisissez un défi (16-18): " challenge
            case $challenge in
                16) test_challenge "6" "16" "SystemeValidation" "Système de Validation" ;;
                17) test_challenge "6" "17" "GestionnaireFichiers" "Système de Gestion de Fichiers" ;;
                18) test_challenge "6" "18" "GestionnaireBaseDonnees" "Système de Gestion de Base de Données" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        7)
            echo ""
            echo "🎯 Défis du niveau 7:"
            echo "19. Système d'Analyse de Données"
            echo "20. Système de Filtrage et Transformation"
            echo "21. Système de Traitement de Fichiers"
            echo ""
            read -p "Choisissez un défi (19-21): " challenge
            case $challenge in
                19) test_challenge "7" "19" "AnalyseDonnees" "Système d'Analyse de Données" ;;
                20) test_challenge "7" "20" "FiltrageTransformation" "Système de Filtrage et Transformation" ;;
                21) test_challenge "7" "21" "TraitementFichiers" "Système de Traitement de Fichiers" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        8)
            echo ""
            echo "🎯 Défis du niveau 8:"
            echo "23. Système de Gestion de Graphes"
            echo "24. Système de Compression et Cryptographie"
            echo ""
            read -p "Choisissez un défi (23-24): " challenge
            case $challenge in
                23) test_challenge "8" "23" "GestionnaireGraphes" "Système de Gestion de Graphes" ;;
                24) test_challenge "8" "24" "CompressionCryptographie" "Système de Compression et Cryptographie" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        9)
            echo ""
            echo "🎯 Défis du niveau 9:"
            echo "25. Système de Chat en Temps Réel"
            echo "26. API REST avec Authentification"
            echo "27. Système de Cache Distribué"
            echo ""
            read -p "Choisissez un défi (25-27): " challenge
            case $challenge in
                25) test_challenge "9" "25" "ChatTempsReel" "Système de Chat en Temps Réel" ;;
                26) test_challenge "9" "26" "ApiRest" "API REST avec Authentification" ;;
                27) test_challenge "9" "27" "CacheDistribue" "Système de Cache Distribué" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        10)
            echo ""
            echo "🎯 Défis du niveau 10:"
            echo "28. Microservices avec Communication"
            echo "29. Système de Monitoring et Alertes"
            echo "30. Pipeline CI/CD"
            echo ""
            read -p "Choisissez un défi (28-30): " challenge
            case $challenge in
                28) test_challenge "10" "28" "Microservices" "Microservices avec Communication" ;;
                29) test_challenge "10" "29" "MonitoringAlertes" "Système de Monitoring et Alertes" ;;
                30) test_challenge "10" "30" "PipelineCICD" "Pipeline CI/CD" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        11)
            echo ""
            echo "🎯 Défis du niveau 11:"
            echo "29. Algorithmes de Tri Avancés"
            echo "30. Algorithmes de Recherche Avancés"
            echo ""
            read -p "Choisissez un défi (29-30): " challenge
            case $challenge in
                29) test_challenge "11" "29" "AlgorithmesTri" "Algorithmes de Tri Avancés" ;;
                30) test_challenge "11" "30" "AlgorithmesRecherche" "Algorithmes de Recherche Avancés" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        12)
            echo ""
            echo "🎯 Défis du niveau 12:"
            echo "31. Algorithmes de Plus Courts Chemins"
            echo "32. Composantes Fortement Connexes"
            echo ""
            read -p "Choisissez un défi (31-32): " challenge
            case $challenge in
                31) test_challenge "12" "31" "PlusCourtsChemins" "Algorithmes de Plus Courts Chemins" ;;
                32) test_challenge "12" "32" "ComposantesConnexes" "Composantes Fortement Connexes" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        13)
            echo ""
            echo "🎯 Défis du niveau 13:"
            echo "33. Algorithmes de Flot Maximum"
            echo ""
            read -p "Choisissez un défi (33): " challenge
            case $challenge in
                33) test_challenge "13" "33" "FlotMaximum" "Algorithmes de Flot Maximum" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        14)
            echo ""
            echo "🎯 Défis du niveau 14:"
            echo "34. Algorithmes Géométriques"
            echo ""
            read -p "Choisissez un défi (34): " challenge
            case $challenge in
                34) test_challenge "14" "34" "AlgorithmesGeometriques" "Algorithmes Géométriques" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        15)
            echo ""
            echo "🎯 Défis du niveau 15:"
            echo "35. Algorithmes de Recherche de Motifs"
            echo ""
            read -p "Choisissez un défi (35): " challenge
            case $challenge in
                35) test_challenge "15" "35" "RechercheMotifs" "Algorithmes de Recherche de Motifs" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        16)
            echo ""
            echo "🎯 Défis du niveau 16:"
            echo "36. Algorithmes de Compression Avancés"
            echo ""
            read -p "Choisissez un défi (36): " challenge
            case $challenge in
                36) test_challenge "16" "36" "CompressionAvancee" "Algorithmes de Compression Avancés" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        17)
            echo ""
            echo "🎯 Défis du niveau 17:"
            echo "37. Algorithmes de Machine Learning"
            echo ""
            read -p "Choisissez un défi (37): " challenge
            case $challenge in
                37) test_challenge "17" "37" "MachineLearning" "Algorithmes de Machine Learning" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        18)
            echo ""
            echo "🎯 Défis du niveau 18:"
            echo "38. Algorithmes de Cryptographie Avancés"
            echo ""
            read -p "Choisissez un défi (38): " challenge
            case $challenge in
                38) test_challenge "18" "38" "CryptographieAvancee" "Algorithmes de Cryptographie Avancés" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        19)
            echo ""
            echo "🎯 Défis du niveau 19:"
            echo "39. Algorithmes de Simulation et Monte Carlo"
            echo ""
            read -p "Choisissez un défi (39): " challenge
            case $challenge in
                39) test_challenge "19" "39" "SimulationMonteCarlo" "Algorithmes de Simulation et Monte Carlo" ;;
                *) echo "❌ Défi invalide." ;;
            esac
            ;;
        20)
            echo ""
            echo "🎯 Défis du niveau 20:"
            echo "40. Algorithmes de Traitement d'Images"
            echo ""
            read -p "Choisissez un défi (40): " challenge
            case $challenge in
                40) test_challenge "20" "40" "TraitementImages" "Algorithmes de Traitement d'Images" ;;
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
