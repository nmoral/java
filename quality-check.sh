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
    
    # Vérifier que le fichier existe
    if [ ! -f "solutions/$class.java" ]; then
        print_status "ERROR" "Fichier solutions/$class.java non trouvé"
        print_status "INFO" "Créez votre solution dans le dossier solutions/"
        return 1
    fi
    
    # Compiler le projet
    print_status "INFO" "Compilation du projet..."
    if ! mvn compile -q; then
        print_status "ERROR" "Erreur de compilation"
        return 1
    fi
    
    # Compiler la solution
    print_status "INFO" "Compilation de la solution..."
    if ! javac -cp "target/classes" "solutions/$class.java"; then
        print_status "ERROR" "Erreur de compilation de la solution"
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
            echo "1. Niveau 1 - Problèmes de base"
            echo "2. Niveau 2 - Problèmes intermédiaires"
            echo "3. Niveau 3 - Problèmes avancés"
            echo "4. Niveau 4 - Problèmes complexes"
            echo ""
            read -p "Choisissez un niveau (1-4): " level
            
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
                    echo ""
                    read -p "Choisissez un défi (4-5): " challenge
                    case $challenge in
                        4) validate_challenge "2" "4" "GestionnaireComptes" "Gestionnaire de Comptes" ;;
                        5) validate_challenge "2" "5" "Bibliotheque" "Système de Bibliothèque" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        6) validate_challenge "3" "6" "GestionnaireInventaire" "Gestionnaire d'Inventaire" ;;
                        7) validate_challenge "3" "7" "Restaurant" "Système de Restaurant" ;;
                        *) print_status "ERROR" "Défi invalide" ;;
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
                        8) validate_challenge "4" "8" "GestionnaireRH" "Gestionnaire RH" ;;
                        9) validate_challenge "4" "9" "BibliothequeAvancee" "Bibliothèque Avancée" ;;
                        10) validate_challenge "4" "10" "GestionnaireVentes" "Gestionnaire de Ventes" ;;
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
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "3")
                        case $2 in
                            "6") validate_challenge "3" "6" "GestionnaireInventaire" "Gestionnaire d'Inventaire" ;;
                            "7") validate_challenge "3" "7" "Restaurant" "Système de Restaurant" ;;
                            *) print_status "ERROR" "Défi invalide" ;;
                        esac
                        ;;
                    "4")
                        case $2 in
                            "8") validate_challenge "4" "8" "GestionnaireRH" "Gestionnaire RH" ;;
                            "9") validate_challenge "4" "9" "BibliothequeAvancee" "Bibliothèque Avancée" ;;
                            "10") validate_challenge "4" "10" "GestionnaireVentes" "Gestionnaire de Ventes" ;;
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
