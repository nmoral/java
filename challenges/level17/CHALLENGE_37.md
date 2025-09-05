# 🎯 Défi 37 : Algorithmes de Machine Learning (K-Means, DBSCAN, Apriori, PageRank)

## 📝 Description du Problème

Vous devez implémenter des algorithmes de machine learning fondamentaux : K-Means pour le clustering, DBSCAN pour le clustering basé sur la densité, Apriori pour les règles d'association, et PageRank pour le classement de pages web. Ces algorithmes sont essentiels pour l'analyse de données et l'intelligence artificielle.

## 🎯 Objectifs d'Apprentissage

- Comprendre les algorithmes de clustering
- Implémenter K-Means et DBSCAN
- Maîtriser l'algorithme Apriori
- Implémenter PageRank
- Analyser les performances sur différents types de données

## 📋 Spécifications

### Classes à Créer

1. **Interface `AlgorithmeML`** :
   - Méthodes : executer(), obtenirNom(), obtenirComplexite()
   - Méthodes : obtenirResultats(), obtenirPerformance()

2. **Classe `KMeans`** :
   - Implémentation de l'algorithme K-Means
   - Initialisation des centroïdes
   - Itérations jusqu'à convergence

3. **Classe `DBSCAN`** :
   - Implémentation de l'algorithme DBSCAN
   - Détection des points de densité
   - Classification des points

4. **Classe `Apriori`** :
   - Implémentation de l'algorithme Apriori
   - Génération des itemsets fréquents
   - Extraction des règles d'association

5. **Classe `PageRank`** :
   - Implémentation de l'algorithme PageRank
   - Calcul des scores de page
   - Itérations jusqu'à convergence

6. **Classe `DonneesML`** :
   - Représentation des données d'entrée
   - Normalisation et prétraitement
   - Validation des données

7. **Classe `AnalyseurML`** :
   - Analyse des résultats
   - Calcul des métriques de performance
   - Visualisation des données

8. **Classe `GestionnaireML`** :
   - Menu interactif pour tester les algorithmes
   - Chargement de datasets
   - Comparaison des performances

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE MACHINE LEARNING ===
   1. Test K-Means
   2. Test DBSCAN
   3. Test Apriori
   4. Test PageRank
   5. Comparer les algorithmes
   6. Charger un dataset
   7. Analyser les résultats
   8. Quitter
   ```

2. **Types de données supportés** :
   - Données numériques
   - Données catégorielles
   - Graphes de pages web
   - Transactions commerciales

## 🔧 Contraintes Techniques

- Implémenter les quatre algorithmes complets
- Gérer les cas limites (données vides, clusters vides)
- Mesurer les performances sur différents types de données
- Optimiser selon le type d'algorithme
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE MACHINE LEARNING ===
1. Test K-Means
2. Test DBSCAN
3. Test Apriori
4. Test PageRank
5. Comparer les algorithmes
6. Charger un dataset
7. Analyser les résultats
8. Quitter
Votre choix: 1

=== TEST K-MEANS ===
Entrez le nombre de points: 100
Entrez le nombre de clusters: 3

Génération des données...
Données générées:
Cluster 1: (2.1, 3.4), (2.3, 3.6), (2.0, 3.2), ...
Cluster 2: (7.8, 8.2), (7.9, 8.1), (7.7, 8.3), ...
Cluster 3: (5.2, 1.8), (5.1, 1.9), (5.3, 1.7), ...

Calcul en cours...

=== RÉSULTATS K-MEANS ===
Clusters trouvés: 3

Cluster 1:
- Centroïde: (2.1, 3.4)
- Points: 33
- Inertie: 12.5

Cluster 2:
- Centroïde: (7.8, 8.2)
- Points: 34
- Inertie: 15.2

Cluster 3:
- Centroïde: (5.2, 1.8)
- Points: 33
- Inertie: 11.8

Performance:
- Temps d'exécution: 25ms
- Complexité: O(n × k × i)
- Itérations: 8
- Inertie totale: 39.5

Votre choix: 2

=== TEST DBSCAN ===
Entrez le nombre de points: 100
Entrez epsilon: 1.5
Entrez minPts: 5

Génération des données...
Données générées (même ensemble que précédemment)

Calcul en cours...

=== RÉSULTATS DBSCAN ===
Clusters trouvés: 3

Cluster 1:
- Points: 32
- Type: Dense
- Rayon: 1.2

Cluster 2:
- Points: 35
- Type: Dense
- Rayon: 1.4

Cluster 3:
- Points: 28
- Type: Dense
- Rayon: 1.1

Points bruit: 5

Performance:
- Temps d'exécution: 45ms
- Complexité: O(n log n)
- Voisins trouvés: 1,247
- Points de densité: 95

Votre choix: 3

=== TEST APRIORI ===
Entrez le nombre de transactions: 1000
Entrez le support minimum: 0.1
Entrez la confiance minimum: 0.5

Génération des transactions...
Transactions générées:
T1: {Pain, Lait, Œufs}
T2: {Pain, Beurre, Œufs}
T3: {Lait, Beurre, Œufs}
...

Calcul en cours...

=== RÉSULTATS APRIORI ===
Itemsets fréquents trouvés: 15

Itemsets de taille 1:
- {Pain}: 0.45
- {Lait}: 0.38
- {Œufs}: 0.42
- {Beurre}: 0.35

Itemsets de taille 2:
- {Pain, Lait}: 0.25
- {Pain, Œufs}: 0.28
- {Lait, Œufs}: 0.22
- {Beurre, Œufs}: 0.18

Itemsets de taille 3:
- {Pain, Lait, Œufs}: 0.15
- {Pain, Beurre, Œufs}: 0.12

Règles d'association trouvées: 8
1. {Pain} -> {Lait} (confiance: 0.56)
2. {Pain} -> {Œufs} (confiance: 0.62)
3. {Lait} -> {Œufs} (confiance: 0.58)
4. {Pain, Lait} -> {Œufs} (confiance: 0.60)
5. {Pain, Œufs} -> {Lait} (confiance: 0.54)
6. {Lait, Œufs} -> {Pain} (confiance: 0.68)
7. {Beurre} -> {Œufs} (confiance: 0.51)
8. {Pain, Beurre} -> {Œufs} (confiance: 0.57)

Performance:
- Temps d'exécution: 120ms
- Complexité: O(2^n)
- Itemsets générés: 1,247
- Règles extraites: 8

Votre choix: 4

=== TEST PAGERANK ===
Entrez le nombre de pages: 10
Entrez le facteur d'amortissement: 0.85

Génération du graphe de pages...
Graphe généré:
Page 1 -> Page 2, Page 3
Page 2 -> Page 1, Page 4
Page 3 -> Page 1, Page 5
Page 4 -> Page 2, Page 6
Page 5 -> Page 3, Page 7
Page 6 -> Page 4, Page 8
Page 7 -> Page 5, Page 9
Page 8 -> Page 6, Page 10
Page 9 -> Page 7, Page 1
Page 10 -> Page 8, Page 2

Calcul en cours...

=== RÉSULTATS PAGERANK ===
Scores PageRank calculés:

Page 1: 0.1234
Page 2: 0.1156
Page 3: 0.1089
Page 4: 0.1023
Page 5: 0.0956
Page 6: 0.0889
Page 7: 0.0823
Page 8: 0.0756
Page 9: 0.0689
Page 10: 0.0623

Classement des pages:
1. Page 1 (0.1234)
2. Page 2 (0.1156)
3. Page 3 (0.1089)
4. Page 4 (0.1023)
5. Page 5 (0.0956)
6. Page 6 (0.0889)
7. Page 7 (0.0823)
8. Page 8 (0.0756)
9. Page 9 (0.0689)
10. Page 10 (0.0623)

Performance:
- Temps d'exécution: 15ms
- Complexité: O(n²)
- Itérations: 12
- Convergence: 0.001

Votre choix: 5

=== COMPARAISON DES ALGORITHMES ===
Test sur dataset de 10,000 points:

K-Means:
- Temps: 250ms
- Clusters: 5
- Inertie: 1,247.5
- Meilleur pour: Données sphériques

DBSCAN:
- Temps: 450ms
- Clusters: 7
- Points bruit: 234
- Meilleur pour: Données de formes variées

Apriori:
- Temps: 1,200ms
- Itemsets: 1,247
- Règles: 89
- Meilleur pour: Données transactionnelles

PageRank:
- Temps: 150ms
- Pages: 1,000
- Convergence: 0.001
- Meilleur pour: Graphes de pages web

Recommandations:
- Données sphériques: K-Means
- Données de formes variées: DBSCAN
- Données transactionnelles: Apriori
- Graphes de pages web: PageRank
```

## 🧪 Tests à Valider

- [ ] Implémentation de K-Means
- [ ] Implémentation de DBSCAN
- [ ] Implémentation d'Apriori
- [ ] Implémentation de PageRank
- [ ] Test sur différents types de données
- [ ] Comparaison des performances
- [ ] Analyse des résultats

## 💡 Conseils

- K-Means est optimal pour les données sphériques
- DBSCAN est optimal pour les données de formes variées
- Apriori est optimal pour les données transactionnelles
- PageRank est optimal pour les graphes de pages web
- Testez sur des datasets réels

## 🎯 Fichiers à Créer

- `solutions/AlgorithmeML.java`
- `solutions/KMeans.java`
- `solutions/DBSCAN.java`
- `solutions/Apriori.java`
- `solutions/PageRank.java`
- `solutions/DonneesML.java`
- `solutions/AnalyseurML.java`
- `solutions/GestionnaireML.java`

**Bon courage !** 🚀
