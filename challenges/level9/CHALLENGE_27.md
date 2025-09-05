# 🎯 Défi 27 : Système de Cache Distribué avec Persistance

## 📝 Description du Problème

Vous devez créer un système de cache distribué avec persistance utilisant Redis et une base de données. Le système doit gérer la cohérence des données, la synchronisation entre les nœuds et la persistance automatique.

## 🎯 Objectifs d'Apprentissage

- Maîtriser la persistance avec JDBC et JPA
- Utiliser Redis pour le cache distribué
- Implémenter la cohérence des données
- Gérer les transactions et la synchronisation
- Comprendre les patterns de cache

## 📋 Spécifications

### Classes à Créer

1. **Classe `Produit`** :
   - Attributs : id, nom, prix, stock, categorie, dateModification
   - Annotations JPA pour la persistance
   - Méthodes : mettreAJourStock(), calculerPrixTTC()

2. **Classe `CacheRedis`** :
   - Gestion du cache Redis
   - Méthodes : mettre(), obtenir(), supprimer(), expirer()
   - Gestion des clés et de l'expiration

3. **Classe `RepositoryProduit`** :
   - Accès aux données avec JPA
   - Méthodes : sauvegarder(), trouverParId(), listerTous()
   - Gestion des transactions

4. **Classe `ServiceProduit`** :
   - Logique métier avec cache
   - Méthodes : obtenirProduit(), mettreAJourProduit(), supprimerProduit()
   - Gestion de la cohérence cache-BDD

5. **Classe `GestionnaireCache`** :
   - Coordination du cache et de la persistance
   - Synchronisation des données
   - Monitoring des performances

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE CACHE DISTRIBUÉ ===
   1. Ajouter un produit
   2. Consulter un produit
   3. Mettre à jour un produit
   4. Supprimer un produit
   5. Synchroniser le cache
   6. Vider le cache
   7. Statistiques du cache
   8. Monitoring des performances
   9. Quitter
   ```

2. **Gestion du cache** :
   - Cache automatique des lectures
   - Invalidation intelligente
   - Persistance automatique
   - Synchronisation multi-nœuds

## 🔧 Contraintes Techniques

- Utiliser JPA pour la persistance
- Implémenter Redis pour le cache
- Gérer les transactions
- Assurer la cohérence des données
- Code modulaire avec séparation des responsabilités

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE CACHE DISTRIBUÉ ===
1. Ajouter un produit
2. Consulter un produit
3. Mettre à jour un produit
4. Supprimer un produit
5. Synchroniser le cache
6. Vider le cache
7. Statistiques du cache
8. Monitoring des performances
9. Quitter
Votre choix: 1

Entrez le nom du produit: Ordinateur Portable
Entrez le prix: 899.99
Entrez le stock: 10
Entrez la catégorie: Informatique

=== AJOUT DE PRODUIT ===
Validation des données...
Sauvegarde en base de données...
Ajout au cache Redis...
Produit ajouté avec succès!

ID: PROD001
Nom: Ordinateur Portable
Prix: 899.99€
Stock: 10
Catégorie: Informatique
Cache: ACTIF
BDD: SAUVEGARDÉ

Votre choix: 2
Entrez l'ID du produit: PROD001

=== CONSULTATION DE PRODUIT ===
Recherche en cours...

🔍 Recherche dans le cache Redis...
✅ Produit trouvé dans le cache!
Temps de réponse: 2ms

Produit: PROD001
- Nom: Ordinateur Portable
- Prix: 899.99€
- Stock: 10
- Catégorie: Informatique
- Dernière modification: 2024-01-15 14:30:25
- Source: CACHE

Votre choix: 3
Entrez l'ID du produit: PROD001
Entrez le nouveau prix: 799.99
Entrez le nouveau stock: 8

=== MISE À JOUR DE PRODUIT ===
Mise à jour en cours...

🔄 Mise à jour en base de données...
✅ BDD mise à jour avec succès
🔄 Invalidation du cache...
✅ Cache invalidé
🔄 Rechargement depuis la BDD...
✅ Cache rechargé

Produit mis à jour:
- Prix: 799.99€ (était: 899.99€)
- Stock: 8 (était: 10)
- Cache: RECHARGÉ
- BDD: MISE À JOUR

Votre choix: 5

=== SYNCHRONISATION DU CACHE ===
Synchronisation en cours...

🔍 Vérification de la cohérence...
✅ Cache et BDD synchronisés
🔄 Nettoyage des entrées expirées...
✅ 3 entrées expirées supprimées
🔄 Rechargement des données modifiées...
✅ 2 produits rechargés

Résultat de la synchronisation:
- Entrées synchronisées: 45
- Entrées expirées supprimées: 3
- Produits rechargés: 2
- Temps de synchronisation: 125ms

Votre choix: 7

=== STATISTIQUES DU CACHE ===
Cache Redis:
- Entrées totales: 45
- Entrées actives: 42
- Entrées expirées: 3
- Taille mémoire: 2.3MB
- Taux de hit: 87.5%

Base de données:
- Produits total: 45
- Produits modifiés: 2
- Dernière sauvegarde: 2024-01-15 14:35:20
- Taille: 1.8MB

Performance:
- Temps de lecture cache: 2ms
- Temps de lecture BDD: 45ms
- Temps d'écriture BDD: 78ms
- Temps de synchronisation: 125ms

Votre choix: 8

=== MONITORING DES PERFORMANCES ===
Performance en temps réel:

Cache Redis:
- Requêtes par seconde: 156
- Taux de hit: 87.5%
- Temps de réponse moyen: 2.1ms
- Utilisation mémoire: 2.3MB/4MB (57.5%)

Base de données:
- Connexions actives: 3/10
- Requêtes par seconde: 23
- Temps de réponse moyen: 45ms
- Utilisation CPU: 12%

Synchronisation:
- Synchronisations réussies: 47
- Synchronisations échouées: 1
- Taux de succès: 97.9%
- Temps moyen: 125ms

Alertes:
- ⚠️ Taux de hit cache < 90%
- ✅ Toutes les autres métriques normales
```

## 🧪 Tests à Valider

- [ ] Persistance avec JPA fonctionnelle
- [ ] Cache Redis opérationnel
- [ ] Cohérence cache-BDD
- [ ] Gestion des transactions
- [ ] Synchronisation des données
- [ ] Invalidation intelligente
- [ ] Monitoring des performances

## 💡 Conseils

- Utilisez JPA pour simplifier la persistance
- Implémentez une stratégie de cache cohérente
- Gérez proprement les transactions
- Testez la cohérence des données
- Surveillez les performances du cache

## 🎯 Fichiers à Créer

- `solutions/Produit.java`
- `solutions/CacheRedis.java`
- `solutions/RepositoryProduit.java`
- `solutions/ServiceProduit.java`
- `solutions/GestionnaireCache.java`

**Bon courage !** 🚀
