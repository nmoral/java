#!/bin/bash

# Script de démarrage des bases de données pour le programme d'entraînement Java
# Usage: ./start-databases.sh

echo "=== DÉMARRAGE DES BASES DE DONNÉES ==="
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

# Vérifier Docker
if ! command -v docker &> /dev/null; then
    print_status "ERROR" "Docker n'est pas installé"
    print_status "INFO" "Installez Docker pour utiliser les bases de données"
    exit 1
fi

if ! command -v docker-compose &> /dev/null; then
    print_status "ERROR" "Docker Compose n'est pas installé"
    print_status "INFO" "Installez Docker Compose pour utiliser les bases de données"
    exit 1
fi

# Démarrer les services
print_status "INFO" "Démarrage des bases de données..."

if docker-compose -f docker-compose-databases.yml up -d; then
    print_status "SUCCESS" "Bases de données démarrées avec succès"
    echo ""
    print_status "INFO" "🔗 Accès aux bases de données:"
    echo "   • MySQL: localhost:3306"
    echo "     - Database: training_db"
    echo "     - User: training_user"
    echo "     - Password: training_password"
    echo ""
    echo "   • PostgreSQL: localhost:5432"
    echo "     - Database: training_db"
    echo "     - User: training_user"
    echo "     - Password: training_password"
    echo ""
    print_status "INFO" "🔗 Interfaces d'administration:"
    echo "   • phpMyAdmin (MySQL): http://localhost:8081"
    echo "   • pgAdmin (PostgreSQL): http://localhost:8082"
    echo "     - Email: admin@training.com"
    echo "     - Password: admin"
    echo ""
    print_status "INFO" "📋 Commandes utiles:"
    echo "   • Arrêter: docker-compose -f docker-compose-databases.yml down"
    echo "   • Voir les logs: docker-compose -f docker-compose-databases.yml logs -f"
    echo "   • Redémarrer: docker-compose -f docker-compose-databases.yml restart"
    echo ""
    print_status "INFO" "⏳ Attendez 30 secondes que les bases de données soient complètement initialisées"
    echo ""
    print_status "INFO" "🧪 Pour tester la connexion:"
    echo "   • ./quality-check.sh 6 18"
    echo "   • ./run-tests.sh 6 18"
else
    print_status "ERROR" "Erreur lors du démarrage des bases de données"
    exit 1
fi
