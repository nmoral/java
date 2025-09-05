#!/bin/bash

# Script de démarrage des outils de qualité
# Usage: ./start-quality-tools.sh

echo "=== DÉMARRAGE DES OUTILS DE QUALITÉ ==="
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
    print_status "INFO" "Installez Docker pour utiliser SonarQube et Jenkins"
    exit 1
fi

if ! command -v docker-compose &> /dev/null; then
    print_status "ERROR" "Docker Compose n'est pas installé"
    print_status "INFO" "Installez Docker Compose pour utiliser les outils de qualité"
    exit 1
fi

# Démarrer les services
print_status "INFO" "Démarrage des outils de qualité..."

if docker-compose up -d; then
    print_status "SUCCESS" "Outils de qualité démarrés avec succès"
    echo ""
    print_status "INFO" "🔗 Accès aux outils:"
    echo "   • SonarQube: http://localhost:9000 (admin/admin)"
    echo "   • Jenkins: http://localhost:8080"
    echo ""
    print_status "INFO" "📋 Commandes utiles:"
    echo "   • Arrêter: docker-compose down"
    echo "   • Voir les logs: docker-compose logs -f"
    echo "   • Redémarrer: docker-compose restart"
    echo ""
    print_status "INFO" "⏳ Attendez 2-3 minutes que SonarQube soit complètement démarré"
    echo ""
    print_status "INFO" "🧪 Pour analyser votre code:"
    echo "   • ./quality-check.sh analyze"
    echo "   • mvn sonar:sonar"
else
    print_status "ERROR" "Erreur lors du démarrage des outils"
    exit 1
fi
