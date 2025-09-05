# 🎯 Défi 28 : Microservices avec Communication et Load Balancing

## 📝 Description du Problème

Vous devez créer un système de microservices pour une application e-commerce avec communication inter-services, découverte de services et équilibrage de charge. Le système doit inclure un service utilisateur, un service produit et un service commande.

## 🎯 Objectifs d'Apprentissage

- Comprendre l'architecture microservices
- Implémenter la communication inter-services
- Utiliser la découverte de services
- Gérer l'équilibrage de charge
- Comprendre les patterns de microservices

## 📋 Spécifications

### Services à Créer

1. **Service Utilisateur** :
   - Gestion des utilisateurs et authentification
   - Endpoints : /users, /auth/login, /auth/validate
   - Port : 8081

2. **Service Produit** :
   - Gestion du catalogue de produits
   - Endpoints : /products, /products/{id}, /products/search
   - Port : 8082

3. **Service Commande** :
   - Gestion des commandes et panier
   - Endpoints : /orders, /orders/{id}, /cart
   - Port : 8083

4. **Service Gateway** :
   - Point d'entrée unique
   - Routage des requêtes
   - Port : 8080

5. **Service Registry** :
   - Découverte des services
   - Health checks
   - Port : 8761

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE MICROSERVICES ===
   1. Démarrer tous les services
   2. Démarrer un service spécifique
   3. Arrêter un service
   4. Tester la communication inter-services
   5. Tester l'équilibrage de charge
   6. Monitoring des services
   7. Statistiques de performance
   8. Quitter
   ```

2. **Architecture microservices** :
   - Communication HTTP entre services
   - Découverte automatique des services
   - Équilibrage de charge
   - Health checks et monitoring

## 🔧 Contraintes Techniques

- Utiliser des patterns de microservices
- Implémenter la communication inter-services
- Gérer la découverte de services
- Assurer la haute disponibilité
- Code modulaire avec séparation des services

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE MICROSERVICES ===
1. Démarrer tous les services
2. Démarrer un service spécifique
3. Arrêter un service
4. Tester la communication inter-services
5. Tester l'équilibrage de charge
6. Monitoring des services
7. Statistiques de performance
8. Quitter
Votre choix: 1

=== DÉMARRAGE DE TOUS LES SERVICES ===
Démarrage en cours...

🚀 Service Registry (port 8761)...
✅ Service Registry démarré avec succès

🚀 Service Utilisateur (port 8081)...
✅ Service Utilisateur démarré avec succès
✅ Enregistré dans le registry

🚀 Service Produit (port 8082)...
✅ Service Produit démarré avec succès
✅ Enregistré dans le registry

🚀 Service Commande (port 8083)...
✅ Service Commande démarré avec succès
✅ Enregistré dans le registry

🚀 Service Gateway (port 8080)...
✅ Service Gateway démarré avec succès
✅ Connecté au registry

Tous les services sont opérationnels!

Votre choix: 4

=== TEST DE COMMUNICATION INTER-SERVICES ===
Test en cours...

🔍 Test de communication Service Commande → Service Utilisateur...
✅ Communication réussie
Temps de réponse: 45ms

🔍 Test de communication Service Commande → Service Produit...
✅ Communication réussie
Temps de réponse: 32ms

🔍 Test de communication Service Gateway → Tous les services...
✅ Toutes les communications réussies
Temps de réponse moyen: 38ms

Résultats des tests:
- Service Utilisateur: 45ms
- Service Produit: 32ms
- Service Commande: 28ms
- Service Gateway: 38ms

Votre choix: 5

=== TEST D'ÉQUILIBRAGE DE CHARGE ===
Test en cours...

📊 Simulation de 100 requêtes simultanées...
✅ 100 requêtes traitées avec succès

Répartition des requêtes:
- Service Utilisateur: 25 requêtes (25%)
- Service Produit: 35 requêtes (35%)
- Service Commande: 40 requêtes (40%)

Temps de réponse:
- Minimum: 15ms
- Maximum: 89ms
- Moyenne: 42ms
- Médiane: 38ms

Performance:
- Requêtes par seconde: 238
- Taux de succès: 100%
- Temps de traitement total: 420ms

Votre choix: 6

=== MONITORING DES SERVICES ===
État des services:

Service Registry (8761):
- Statut: ✅ ACTIF
- Services enregistrés: 4
- Health checks: 4/4 OK
- Uptime: 2h 15min

Service Utilisateur (8081):
- Statut: ✅ ACTIF
- Requêtes traitées: 1,247
- Temps de réponse moyen: 45ms
- Utilisation CPU: 23%
- Utilisation mémoire: 145MB

Service Produit (8082):
- Statut: ✅ ACTIF
- Requêtes traitées: 1,856
- Temps de réponse moyen: 32ms
- Utilisation CPU: 18%
- Utilisation mémoire: 98MB

Service Commande (8083):
- Statut: ✅ ACTIF
- Requêtes traitées: 2,134
- Temps de réponse moyen: 28ms
- Utilisation CPU: 31%
- Utilisation mémoire: 167MB

Service Gateway (8080):
- Statut: ✅ ACTIF
- Requêtes routées: 5,237
- Temps de réponse moyen: 38ms
- Utilisation CPU: 15%
- Utilisation mémoire: 89MB

Votre choix: 7

=== STATISTIQUES DE PERFORMANCE ===
Performance globale:

Requêtes totales: 5,237
- Service Utilisateur: 1,247 (23.8%)
- Service Produit: 1,856 (35.4%)
- Service Commande: 2,134 (40.8%)

Temps de réponse:
- Service Utilisateur: 45ms (min: 12ms, max: 156ms)
- Service Produit: 32ms (min: 8ms, max: 98ms)
- Service Commande: 28ms (min: 6ms, max: 87ms)
- Service Gateway: 38ms (min: 15ms, max: 134ms)

Disponibilité:
- Service Registry: 100% (2h 15min)
- Service Utilisateur: 100% (2h 15min)
- Service Produit: 100% (2h 15min)
- Service Commande: 100% (2h 15min)
- Service Gateway: 100% (2h 15min)

Ressources système:
- CPU total: 87% (4 services)
- Mémoire totale: 499MB
- Réseau: 2.3MB/s entrant, 1.8MB/s sortant
```

## 🧪 Tests à Valider

- [ ] Communication inter-services fonctionnelle
- [ ] Découverte de services opérationnelle
- [ ] Équilibrage de charge efficace
- [ ] Health checks fonctionnels
- [ ] Monitoring des services
- [ ] Gestion des erreurs
- [ ] Performance des microservices

## 💡 Conseils

- Utilisez des patterns de microservices éprouvés
- Implémentez une communication robuste
- Gérez la découverte de services
- Testez l'équilibrage de charge
- Surveillez les performances

## 🎯 Fichiers à Créer

- `solutions/ServiceUtilisateur.java`
- `solutions/ServiceProduit.java`
- `solutions/ServiceCommande.java`
- `solutions/ServiceGateway.java`
- `solutions/ServiceRegistry.java`

**Bon courage !** 🚀