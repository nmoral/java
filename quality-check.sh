#!/bin/bash

# Script de validation de qualité pour le programme d'entraînement Java
# Usage: ./quality-check.sh [niveau] [défi]

echo "=== VALIDATION DE QUALITÉ JAVA ==="
echo "Outils d'entreprise pour l'apprentissage"
echo ""

# Couleurs pour l'affichage
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Fonction pour afficher les messages colorés
print_status() {
    local status=$1
    local message=$2
    case $status in
        "SUCCESS")
            echo -e "${GREEN}✅ $message${NC}"
            ;;
        "ERROR")
            echo -e "${RED}❌ $message${NC}"
            ;;
        "WARNING")
            echo -e "${YELLOW}⚠️  $message${NC}"
            ;;
        "INFO")
            echo -e "${BLUE}ℹ️  $message${NC}"
            ;;
    esac
}

# Vérifier que Java est installé
if ! command -v java &> /dev/null; then
    print_status "ERROR" "Java n'est pas installé. Veuillez installer Java 17+ d'abord."
    exit 1
fi

# Vérifier que Maven est installé
if ! command -v mvn &> /dev/null; then
    print_status "ERROR" "Maven n'est pas installé. Veuillez installer Maven d'abord."
    exit 1
fi

# Vérifier que Docker est installé
if ! command -v docker &> /dev/null; then
    print_status "WARNING" "Docker n'est pas installé. SonarQube ne sera pas disponible."
fi

# Fonction pour exécuter un outil de qualité
run_quality_tool() {
    local tool=$1
    local description=$2
    local command=$3
    
    print_status "INFO" "Exécution de $description..."
    
    if eval "$command"; then
        print_status "SUCCESS" "$description terminé avec succès"
        return 0
    else
        print_status "ERROR" "$description a échoué"
        return 1
    fi
}

# Fonction pour valider un défi spécifique
validate_challenge() {
    local level=$1
    local challenge=$2
    local class=$3
    local description=$4
    
    echo ""
    print_status "INFO" "Validation de qualité pour: $description"
    echo "=========================================="
    
    # Vérifier que le fichier existe dans src/main/java
    local src_file="src/main/java/com/java/training/solutions/$class.java"
    local solutions_file="solutions/$class.java"
    
    if [ ! -f "$src_file" ] && [ ! -f "$solutions_file" ]; then
        print_status "ERROR" "Fichier $class.java non trouvé"
        print_status "INFO" "Créez votre solution dans:"
        print_status "INFO" "• src/main/java/com/java/training/solutions/$class.java (recommandé)"
        print_status "INFO" "• ou solutions/$class.java (legacy)"
        return 1
    fi
    
    # Si le fichier existe dans solutions/, le copier vers src/
    if [ -f "$solutions_file" ] && [ ! -f "$src_file" ]; then
        print_status "INFO" "Copie du fichier depuis solutions/ vers src/..."
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
        
        print_status "SUCCESS" "Fichier copié et adapté pour Maven"
    fi
    
    # Compiler le projet avec Maven
    print_status "INFO" "Compilation du projet avec Maven..."
    if ! mvn compile -q; then
        print_status "ERROR" "Erreur de compilation Maven"
        return 1
    fi
    
    # Exécuter les outils de qualité
    local success=true
    
    # Checkstyle
    if ! run_quality_tool "checkstyle" "Vérification du style de code" "mvn checkstyle:check -q"; then
        success=false
    fi
    
    # SpotBugs
    if ! run_quality_tool "spotbugs" "Analyse avec SpotBugs" "mvn spotbugs:check -q"; then
        success=false
    fi
    
    # PMD
    if ! run_quality_tool "pmd" "Analyse avec PMD" "mvn pmd:check -q"; then
        success=false
    fi
    
    # Tests et couverture
    if ! run_quality_tool "tests" "Exécution des tests" "mvn test -q"; then
        success=false
    fi
    
    if ! run_quality_tool "jacoco" "Génération du rapport de couverture" "mvn jacoco:report -q"; then
        success=false
    fi
    
    # Résumé
    echo ""
    if [ "$success" = true ]; then
        print_status "SUCCESS" "Validation de qualité réussie pour $description"
        print_status "INFO" "Rapports générés dans target/site/"
    else
        print_status "ERROR" "Validation de qualité échouée pour $description"
        print_status "INFO" "Consultez les rapports pour plus de détails"
    fi
    
    return $([ "$success" = true ] && echo 0 || echo 1)
}

# Fonction pour démarrer SonarQube
start_sonarqube() {
    print_status "INFO" "Démarrage de SonarQube avec Docker..."
    
    if ! command -v docker &> /dev/null; then
        print_status "ERROR" "Docker n'est pas installé"
        return 1
    fi
    
    if ! command -v docker-compose &> /dev/null; then
        print_status "ERROR" "Docker Compose n'est pas installé"
        return 1
    fi
    
    # Démarrer les services
    if docker-compose up -d; then
        print_status "SUCCESS" "SonarQube démarré avec succès"
        print_status "INFO" "SonarQube: http://localhost:9000 (admin/admin)"
        print_status "INFO" "Jenkins: http://localhost:8080"
        print_status "INFO" "Arrêter avec: docker-compose down"
    else
        print_status "ERROR" "Erreur lors du démarrage de SonarQube"
        return 1
    fi
}

# Fonction pour analyser avec SonarQube
analyze_with_sonar() {
    print_status "INFO" "Analyse avec SonarQube..."
    
    # Vérifier que SonarQube est accessible
    if ! curl -s http://localhost:9000/api/system/status > /dev/null; then
        print_status "ERROR" "SonarQube n'est pas accessible. Démarrez-le avec: ./quality-check.sh sonar"
        return 1
    fi
    
    # Exécuter l'analyse SonarQube
    if mvn sonar:sonar -Dsonar.host.url=http://localhost:9000; then
        print_status "SUCCESS" "Analyse SonarQube terminée"
        print_status "INFO" "Consultez les résultats sur: http://localhost:9000"
    else
        print_status "ERROR" "Erreur lors de l'analyse SonarQube"
        return 1
    fi
}

# Menu principal
if [ $# -eq 0 ]; then
    echo "📚 Options disponibles:"
    echo "1. Valider un défi spécifique"
    echo "2. Démarrer SonarQube"
    echo "3. Analyser avec SonarQube"
    echo "4. Validation complète"
    echo "0. Quitter"
    echo ""
    read -p "Votre choix: " choice
    
    case $choice in
        1)
            echo ""
            echo "🎯 Niveaux disponibles:"
            echo "1-5.  Niveaux 1-5  - Bases du langage Java"
            echo "6-10. Niveaux 6-10 - Programmation intermédiaire et avancée"
            echo "11-15. Niveaux 11-15 - Algorithmes complexes"
            echo "16-20. Niveaux 16-20 - Algorithmes spécialisés"
            echo ""
            read -p "Choisissez un niveau (1-20): " level
            
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
                        1) validate_challenge "1" "1" "Calculatrice" "Calculatrice Simple" ;;
                        2) validate_challenge "1" "2" "GestionnaireNotes" "Gestionnaire de Notes" ;;
                        3) validate_challenge "1" "3" "JeuDevinette" "Jeu de Devinette" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        4) validate_challenge "2" "4" "GestionnaireComptes" "Gestionnaire de Comptes" ;;
                        5) validate_challenge "2" "5" "Bibliotheque" "Système de Bibliothèque" ;;
                        6) validate_challenge "2" "6" "GestionnaireInventaire" "Gestionnaire d'Inventaire" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        7) validate_challenge "3" "7" "SystemeVehicules" "Système de Véhicules" ;;
                        8) validate_challenge "3" "8" "FormesGeometriques" "Système de Formes Géométriques" ;;
                        9) validate_challenge "3" "9" "GestionnaireAnimaux" "Système de Gestion d'Animaux" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        10) validate_challenge "4" "10" "SystemePaiement" "Système de Paiement" ;;
                        11) validate_challenge "4" "11" "SystemeNotifications" "Système de Notifications" ;;
                        12) validate_challenge "4" "12" "SystemePlugins" "Système de Plugins" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        13) validate_challenge "5" "13" "GestionnaireContacts" "Système de Gestion de Contacts" ;;
                        14) validate_challenge "5" "14" "GestionnaireCommandes" "Système de Gestion de Commandes" ;;
                        15) validate_challenge "5" "15" "SystemeCache" "Système de Cache" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        16) validate_challenge "6" "16" "SystemeValidation" "Système de Validation" ;;
                        17) validate_challenge "6" "17" "GestionnaireFichiers" "Système de Gestion de Fichiers" ;;
                        18) validate_challenge "6" "18" "GestionnaireBaseDonnees" "Système de Gestion de Base de Données" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        19) validate_challenge "7" "19" "AnalyseDonnees" "Système d'Analyse de Données" ;;
                        20) validate_challenge "7" "20" "FiltrageTransformation" "Système de Filtrage et Transformation" ;;
                        21) validate_challenge "7" "21" "TraitementFichiers" "Système de Traitement de Fichiers" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        23) validate_challenge "8" "23" "GestionnaireGraphes" "Système de Gestion de Graphes" ;;
                        24) validate_challenge "8" "24" "CompressionCryptographie" "Système de Compression et Cryptographie" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        25) validate_challenge "9" "25" "ChatTempsReel" "Système de Chat en Temps Réel" ;;
                        26) validate_challenge "9" "26" "ApiRest" "API REST avec Authentification" ;;
                        27) validate_challenge "9" "27" "CacheDistribue" "Système de Cache Distribué" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        28) validate_challenge "10" "28" "Microservices" "Microservices avec Communication" ;;
                        29) validate_challenge "10" "29" "MonitoringAlertes" "Système de Monitoring et Alertes" ;;
                        30) validate_challenge "10" "30" "PipelineCICD" "Pipeline CI/CD" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        29) validate_challenge "11" "29" "AlgorithmesTri" "Algorithmes de Tri Avancés" ;;
                        30) validate_challenge "11" "30" "AlgorithmesRecherche" "Algorithmes de Recherche Avancés" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        31) validate_challenge "12" "31" "PlusCourtsChemins" "Algorithmes de Plus Courts Chemins" ;;
                        32) validate_challenge "12" "32" "ComposantesConnexes" "Composantes Fortement Connexes" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
                    esac
                    ;;
                13)
                    echo ""
                    echo "🎯 Défis du niveau 13:"
                    echo "33. Algorithmes de Flot Maximum"
                    echo ""
                    read -p "Choisissez un défi (33): " challenge
                    case $challenge in
                        33) validate_challenge "13" "33" "FlotMaximum" "Algorithmes de Flot Maximum" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
                    esac
                    ;;
                14)
                    echo ""
                    echo "🎯 Défis du niveau 14:"
                    echo "34. Algorithmes Géométriques"
                    echo ""
                    read -p "Choisissez un défi (34): " challenge
                    case $challenge in
                        34) validate_challenge "14" "34" "AlgorithmesGeometriques" "Algorithmes Géométriques" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
                    esac
                    ;;
                15)
                    echo ""
                    echo "🎯 Défis du niveau 15:"
                    echo "35. Algorithmes de Recherche de Motifs"
                    echo ""
                    read -p "Choisissez un défi (35): " challenge
                    case $challenge in
                        35) validate_challenge "15" "35" "RechercheMotifs" "Algorithmes de Recherche de Motifs" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
                    esac
                    ;;
                16)
                    echo ""
                    echo "🎯 Défis du niveau 16:"
                    echo "36. Algorithmes de Compression Avancés"
                    echo ""
                    read -p "Choisissez un défi (36): " challenge
                    case $challenge in
                        36) validate_challenge "16" "36" "CompressionAvancee" "Algorithmes de Compression Avancés" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
                    esac
                    ;;
                17)
                    echo ""
                    echo "🎯 Défis du niveau 17:"
                    echo "37. Algorithmes de Machine Learning"
                    echo ""
                    read -p "Choisissez un défi (37): " challenge
                    case $challenge in
                        37) validate_challenge "17" "37" "MachineLearning" "Algorithmes de Machine Learning" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
                    esac
                    ;;
                18)
                    echo ""
                    echo "🎯 Défis du niveau 18:"
                    echo "38. Algorithmes de Cryptographie Avancés"
                    echo ""
                    read -p "Choisissez un défi (38): " challenge
                    case $challenge in
                        38) validate_challenge "18" "38" "CryptographieAvancee" "Algorithmes de Cryptographie Avancés" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
                    esac
                    ;;
                19)
                    echo ""
                    echo "🎯 Défis du niveau 19:"
                    echo "39. Algorithmes de Simulation et Monte Carlo"
                    echo ""
                    read -p "Choisissez un défi (39): " challenge
                    case $challenge in
                        39) validate_challenge "19" "39" "SimulationMonteCarlo" "Algorithmes de Simulation et Monte Carlo" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
                    esac
                    ;;
                20)
                    echo ""
                    echo "🎯 Défis du niveau 20:"
                    echo "40. Algorithmes de Traitement d'Images"
                    echo ""
                    read -p "Choisissez un défi (40): " challenge
                    case $challenge in
                        40) validate_challenge "20" "40" "TraitementImages" "Algorithmes de Traitement d'Images" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
                    esac
                    ;;
                *)
                    print_status "ERROR" "Niveau invalide"
                    ;;
            esac
            ;;
        2)
            start_sonarqube
            ;;
        3)
            analyze_with_sonar
            ;;
        4)
            print_status "INFO" "Validation complète du projet..."
            mvn clean compile test checkstyle:check spotbugs:check pmd:check jacoco:report
            ;;
        0)
            print_status "INFO" "Au revoir!"
            exit 0
            ;;
        *)
            print_status "ERROR" "Choix invalide"
            ;;
    esac
else
    # Arguments en ligne de commande
    case $1 in
        "sonar")
            start_sonarqube
            ;;
        "analyze")
            analyze_with_sonar
            ;;
        "full")
            print_status "INFO" "Validation complète du projet..."
            mvn clean compile test checkstyle:check spotbugs:check pmd:check jacoco:report
            ;;
        *)
            if [ $# -eq 2 ]; then
                case $1 in
                    "1")
                        case $2 in
                            "1") validate_challenge "1" "1" "Calculatrice" "Calculatrice Simple" ;;
                            "2") validate_challenge "1" "2" "GestionnaireNotes" "Gestionnaire de Notes" ;;
                            "3") validate_challenge "1" "3" "JeuDevinette" "Jeu de Devinette" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "2")
                        case $2 in
                            "4") validate_challenge "2" "4" "GestionnaireComptes" "Gestionnaire de Comptes" ;;
                            "5") validate_challenge "2" "5" "Bibliotheque" "Système de Bibliothèque" ;;
                            "6") validate_challenge "2" "6" "GestionnaireInventaire" "Gestionnaire d'Inventaire" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "3")
                        case $2 in
                            "7") validate_challenge "3" "7" "SystemeVehicules" "Système de Véhicules" ;;
                            "8") validate_challenge "3" "8" "FormesGeometriques" "Système de Formes Géométriques" ;;
                            "9") validate_challenge "3" "9" "GestionnaireAnimaux" "Système de Gestion d'Animaux" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "4")
                        case $2 in
                            "10") validate_challenge "4" "10" "SystemePaiement" "Système de Paiement" ;;
                            "11") validate_challenge "4" "11" "SystemeNotifications" "Système de Notifications" ;;
                            "12") validate_challenge "4" "12" "SystemePlugins" "Système de Plugins" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "5")
                        case $2 in
                            "13") validate_challenge "5" "13" "GestionnaireContacts" "Système de Gestion de Contacts" ;;
                            "14") validate_challenge "5" "14" "GestionnaireCommandes" "Système de Gestion de Commandes" ;;
                            "15") validate_challenge "5" "15" "SystemeCache" "Système de Cache" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "6")
                        case $2 in
                            "16") validate_challenge "6" "16" "SystemeValidation" "Système de Validation" ;;
                            "17") validate_challenge "6" "17" "GestionnaireFichiers" "Système de Gestion de Fichiers" ;;
                            "18") validate_challenge "6" "18" "GestionnaireBaseDonnees" "Système de Gestion de Base de Données" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "7")
                        case $2 in
                            "19") validate_challenge "7" "19" "AnalyseDonnees" "Système d'Analyse de Données" ;;
                            "20") validate_challenge "7" "20" "FiltrageTransformation" "Système de Filtrage et Transformation" ;;
                            "21") validate_challenge "7" "21" "TraitementFichiers" "Système de Traitement de Fichiers" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "8")
                        case $2 in
                            "23") validate_challenge "8" "23" "GestionnaireGraphes" "Système de Gestion de Graphes" ;;
                            "24") validate_challenge "8" "24" "CompressionCryptographie" "Système de Compression et Cryptographie" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "9")
                        case $2 in
                            "25") validate_challenge "9" "25" "ChatTempsReel" "Système de Chat en Temps Réel" ;;
                            "26") validate_challenge "9" "26" "ApiRest" "API REST avec Authentification" ;;
                            "27") validate_challenge "9" "27" "CacheDistribue" "Système de Cache Distribué" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "10")
                        case $2 in
                            "28") validate_challenge "10" "28" "Microservices" "Microservices avec Communication" ;;
                            "29") validate_challenge "10" "29" "MonitoringAlertes" "Système de Monitoring et Alertes" ;;
                            "30") validate_challenge "10" "30" "PipelineCICD" "Pipeline CI/CD" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "11")
                        case $2 in
                            "29") validate_challenge "11" "29" "AlgorithmesTri" "Algorithmes de Tri Avancés" ;;
                            "30") validate_challenge "11" "30" "AlgorithmesRecherche" "Algorithmes de Recherche Avancés" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "12")
                        case $2 in
                            "31") validate_challenge "12" "31" "PlusCourtsChemins" "Algorithmes de Plus Courts Chemins" ;;
                            "32") validate_challenge "12" "32" "ComposantesConnexes" "Composantes Fortement Connexes" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "13")
                        case $2 in
                            "33") validate_challenge "13" "33" "FlotMaximum" "Algorithmes de Flot Maximum" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "14")
                        case $2 in
                            "34") validate_challenge "14" "34" "AlgorithmesGeometriques" "Algorithmes Géométriques" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "15")
                        case $2 in
                            "35") validate_challenge "15" "35" "RechercheMotifs" "Algorithmes de Recherche de Motifs" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "16")
                        case $2 in
                            "36") validate_challenge "16" "36" "CompressionAvancee" "Algorithmes de Compression Avancés" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "17")
                        case $2 in
                            "37") validate_challenge "17" "37" "MachineLearning" "Algorithmes de Machine Learning" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "18")
                        case $2 in
                            "38") validate_challenge "18" "38" "CryptographieAvancee" "Algorithmes de Cryptographie Avancés" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "19")
                        case $2 in
                            "39") validate_challenge "19" "39" "SimulationMonteCarlo" "Algorithmes de Simulation et Monte Carlo" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "20")
                        case $2 in
                            "40") validate_challenge "20" "40" "TraitementImages" "Algorithmes de Traitement d'Images" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    *)
                        print_status "ERROR" "Niveau invalide"
                        ;;
                esac
            else
                print_status "ERROR" "Usage: $0 [niveau] [défi] ou $0 [sonar|analyze|full]"
            fi
            ;;
    esac
fi

echo ""
print_status "INFO" "Validation de qualité terminée!"
print_status "INFO" "Consultez les rapports dans target/site/ pour plus de détails"
