# 🎯 Défi 19 : Système d'Analyse de Données avec Streams

## 📝 Description du Problème

Vous devez créer un système d'analyse de données utilisant les Streams Java. Le système doit analyser des données de ventes, calculer des statistiques et générer des rapports en utilisant les opérations de stream.

## 🎯 Objectifs d'Apprentissage

- Maîtriser les Streams Java
- Utiliser les opérations intermédiaires (filter, map, sorted)
- Utiliser les opérations terminales (collect, reduce, forEach)
- Comprendre les lambdas et les références de méthodes
- Implémenter des analyses de données complexes

## 📋 Spécifications

### Classes à Créer

1. **Classe `Vente`** :
   - Attributs : id, produit, quantite, prix, date, vendeur, region
   - Méthodes : calculerTotal(), afficherInfo()

2. **Classe `Vendeur`** :
   - Attributs : id, nom, email, region, experience
   - Méthodes : calculerCommission(), afficherInfo()

3. **Classe `AnalyseurDonnees`** :
   - Méthodes : analyserVentes(), calculerStatistiques(), genererRapports()
   - Utilisation des Streams pour l'analyse

4. **Classe `GestionnaireVentes`** :
   - Gérer la collection de ventes et vendeurs
   - Menu interactif pour les opérations
   - Utilisation des Streams pour les requêtes

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME D'ANALYSE DE DONNÉES ===
   1. Ajouter une vente
   2. Ajouter un vendeur
   3. Analyser les ventes par région
   4. Analyser les ventes par vendeur
   5. Analyser les ventes par produit
   6. Calculer les statistiques globales
   7. Générer des rapports
   8. Recherches avancées
   9. Quitter
   ```

2. **Analyses avec Streams** :
   - Ventes par région avec groupBy
   - Top vendeurs avec sorted et limit
   - Produits les plus vendus
   - Statistiques avec reduce et collect
   - Filtrage et mapping des données

## 🔧 Contraintes Techniques

- Utiliser les Streams pour toutes les analyses
- Implémenter des lambdas et références de méthodes
- Utiliser les opérations intermédiaires et terminales
- Gérer des collections de données importantes
- Code modulaire avec séparation des responsabilités

## 📝 Exemple d'Exécution

```
=== SYSTÈME D'ANALYSE DE DONNÉES ===
1. Ajouter une vente
2. Ajouter un vendeur
3. Analyser les ventes par région
4. Analyser les ventes par vendeur
5. Analyser les ventes par produit
6. Calculer les statistiques globales
7. Générer des rapports
8. Recherches avancées
9. Quitter
Votre choix: 1

Entrez l'ID de la vente: VENTE001
Entrez le produit: Ordinateur Portable
Entrez la quantité: 2
Entrez le prix unitaire: 899.99
Entrez la date (YYYY-MM-DD): 2024-01-15
Entrez l'ID du vendeur: VEND001
Entrez la région: Paris
Vente ajoutée avec succès!

Votre choix: 3

=== ANALYSE DES VENTES PAR RÉGION ===
Calcul en cours avec Streams...

Région: Paris
- Nombre de ventes: 15
- Chiffre d'affaires: 25,450.75€
- Vendeurs actifs: 3
- Produits vendus: 8

Région: Lyon
- Nombre de ventes: 12
- Chiffre d'affaires: 18,320.50€
- Vendeurs actifs: 2
- Produits vendus: 6

Région: Marseille
- Nombre de ventes: 8
- Chiffre d'affaires: 12,150.25€
- Vendeurs actifs: 2
- Produits vendus: 4

Votre choix: 4

=== TOP VENDEURS ===
Calcul en cours avec Streams...

1. Jean Dupont (VEND001)
   - Ventes: 25
   - Chiffre d'affaires: 35,750.00€
   - Commission: 3,575.00€
   - Région: Paris

2. Marie Martin (VEND002)
   - Ventes: 18
   - Chiffre d'affaires: 28,450.50€
   - Commission: 2,845.05€
   - Région: Lyon

3. Pierre Durand (VEND003)
   - Ventes: 15
   - Chiffre d'affaires: 22,320.75€
   - Commission: 2,232.08€
   - Région: Paris

Votre choix: 6

=== STATISTIQUES GLOBALES ===
Calcul en cours avec Streams...

Ventes totales: 58
Chiffre d'affaires total: 85,921.50€
Vendeurs actifs: 7
Produits vendus: 18
Régions actives: 3

Moyennes:
- Vente moyenne: 1,481.40€
- Ventes par vendeur: 8.3
- Ventes par région: 19.3

Extrêmes:
- Vente la plus élevée: 4,500.00€
- Vente la plus basse: 25.50€
- Vendeur le plus performant: Jean Dupont
- Région la plus performante: Paris
```

## 🧪 Tests à Valider

- [ ] Utilisation des Streams pour l'analyse
- [ ] Opérations intermédiaires (filter, map, sorted)
- [ ] Opérations terminales (collect, reduce, forEach)
- [ ] Lambdas et références de méthodes
- [ ] Analyses par région, vendeur, produit
- [ ] Calcul de statistiques
- [ ] Génération de rapports

## 💡 Conseils

- Utilisez les Streams pour toutes les analyses
- Implémentez des lambdas pour les opérations
- Utilisez les opérations groupBy pour les regroupements
- Utilisez les opérations reduce pour les calculs
- Testez avec des données variées

## 🎯 Fichiers à Créer

- `solutions/Vente.java`
- `solutions/Vendeur.java`
- `solutions/AnalyseurDonnees.java`
- `solutions/GestionnaireVentes.java`

**Bon courage !** 🚀
