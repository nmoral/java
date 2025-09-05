# 🎯 Défi 31 : Algorithmes de Plus Courts Chemins Avancés

## 📝 Description du Problème

Vous devez implémenter des algorithmes avancés de plus courts chemins : Floyd-Warshall (tous-à-tous), Bellman-Ford (avec poids négatifs), et Johnson (optimisé pour graphes denses). Ces algorithmes sont essentiels pour la planification de routes et l'optimisation de réseaux.

## 🎯 Objectifs d'Apprentissage

- Comprendre l'algorithme de Floyd-Warshall
- Implémenter Bellman-Ford pour les poids négatifs
- Maîtriser l'algorithme de Johnson
- Analyser les complexités et cas d'usage
- Optimiser les performances sur différents types de graphes

## 📋 Spécifications

### Classes à Créer

1. **Interface `AlgorithmePlusCourtChemin`** :
   - Méthodes : calculer(), obtenirNom(), obtenirComplexite()
   - Méthodes : obtenirDistances(), obtenirChemins()

2. **Classe `FloydWarshall`** :
   - Calcul des plus courts chemins tous-à-tous
   - Détection des cycles négatifs
   - Reconstruction des chemins

3. **Classe `BellmanFord`** :
   - Plus courts chemins avec poids négatifs
   - Détection des cycles négatifs
   - Relaxation des arêtes

4. **Classe `Johnson`** :
   - Optimisation pour graphes denses
   - Transformation des poids
   - Utilisation de Dijkstra

5. **Classe `GraphePondere`** :
   - Représentation du graphe avec poids
   - Gestion des arêtes orientées/non-orientées
   - Support des poids négatifs

6. **Classe `AnalyseurGraphe`** :
   - Analyse des propriétés du graphe
   - Détection des cycles
   - Calcul de la densité

7. **Classe `GestionnaireChemins`** :
   - Menu interactif pour tester les algorithmes
   - Génération de graphes de test
   - Comparaison des performances

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE PLUS COURTS CHEMINS ===
   1. Test Floyd-Warshall
   2. Test Bellman-Ford
   3. Test Johnson
   4. Comparer les algorithmes
   5. Générer un graphe de test
   6. Analyser le graphe
   7. Test sur différents types
   8. Quitter
   ```

2. **Types de graphes supportés** :
   - Graphes orientés et non-orientés
   - Poids positifs et négatifs
   - Graphes denses et clairsemés
   - Graphes avec cycles

## 🔧 Contraintes Techniques

- Implémenter les trois algorithmes complets
- Gérer les cas limites (cycles négatifs, graphes non connexes)
- Mesurer les performances sur différents types de graphes
- Optimiser selon la densité du graphe
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE PLUS COURTS CHEMINS ===
1. Test Floyd-Warshall
2. Test Bellman-Ford
3. Test Johnson
4. Comparer les algorithmes
5. Générer un graphe de test
6. Analyser le graphe
7. Test sur différents types
8. Quitter
Votre choix: 1

=== TEST FLOYD-WARSHALL ===
Entrez le nombre de sommets: 5
Entrez le nombre d'arêtes: 10

Génération du graphe...
Graphe généré:
- Sommets: A, B, C, D, E
- Arêtes: A->B(4), A->C(2), B->C(1), B->D(5), C->D(8), C->E(10), D->E(2)

Calcul en cours...

=== RÉSULTATS FLOYD-WARSHALL ===
Matrice des distances:
     A    B    C    D    E
A    0    4    2    9   11
B  INF    0    1    5    7
C  INF  INF    0    8   10
D  INF  INF  INF    0    2
E  INF  INF  INF  INF    0

Chemins reconstruits:
A -> B: A -> B (distance: 4)
A -> C: A -> C (distance: 2)
A -> D: A -> C -> B -> D (distance: 9)
A -> E: A -> C -> B -> D -> E (distance: 11)

Performance:
- Temps d'exécution: 0.5ms
- Complexité: O(V³)
- Mémoire utilisée: 125 bytes
- Cycles négatifs: Aucun

Votre choix: 2

=== TEST BELLMAN-FORD ===
Entrez le sommet de départ: A
Entrez le nombre de sommets: 5
Entrez le nombre d'arêtes: 8

Génération du graphe avec poids négatifs...
Graphe généré:
- Arêtes: A->B(4), A->C(2), B->C(-1), B->D(5), C->D(8), C->E(10), D->E(2), E->B(-3)

Calcul en cours...

=== RÉSULTATS BELLMAN-FORD ===
Distances depuis A:
A: 0
B: 1 (A -> C -> B)
C: 2 (A -> C)
D: 6 (A -> C -> B -> D)
E: 8 (A -> C -> B -> D -> E)

Performance:
- Temps d'exécution: 0.3ms
- Complexité: O(V × E)
- Relaxations: 8
- Cycles négatifs: Aucun

Votre choix: 3

=== TEST JOHNSON ===
Entrez le nombre de sommets: 6
Entrez le nombre d'arêtes: 15

Génération du graphe dense...
Graphe généré (densité: 83%)

Calcul en cours...

=== RÉSULTATS JOHNSON ===
Matrice des distances calculée avec succès!

Exemple de chemins:
A -> F: A -> C -> E -> F (distance: 12)
B -> D: B -> A -> D (distance: 7)
C -> E: C -> E (distance: 5)

Performance:
- Temps d'exécution: 1.2ms
- Complexité: O(V² log V + V × E)
- Dijkstra exécutions: 6
- Transformation: 0.1ms

Votre choix: 4

=== COMPARAISON DES ALGORITHMES ===
Test sur graphe de 100 sommets:

Floyd-Warshall:
- Temps: 45ms
- Mémoire: 40KB
- Complexité: O(V³)
- Meilleur pour: Petits graphes, tous-à-tous

Bellman-Ford:
- Temps: 12ms
- Mémoire: 8KB
- Complexité: O(V × E)
- Meilleur pour: Poids négatifs, graphes clairsemés

Johnson:
- Temps: 8ms
- Mémoire: 12KB
- Complexité: O(V² log V + V × E)
- Meilleur pour: Graphes denses, tous-à-tous

Recommandations:
- Graphes denses: Johnson
- Poids négatifs: Bellman-Ford
- Petits graphes: Floyd-Warshall
- Graphes clairsemés: Bellman-Ford
```

## 🧪 Tests à Valider

- [ ] Implémentation de Floyd-Warshall
- [ ] Implémentation de Bellman-Ford
- [ ] Implémentation de Johnson
- [ ] Gestion des cycles négatifs
- [ ] Reconstruction des chemins
- [ ] Test sur différents types de graphes
- [ ] Comparaison des performances

## 💡 Conseils

- Floyd-Warshall est optimal pour les petits graphes
- Bellman-Ford gère les poids négatifs
- Johnson est optimal pour les graphes denses
- Testez toujours avec des cycles négatifs
- Mesurez les performances sur des données réelles

## 🎯 Fichiers à Créer

- `solutions/AlgorithmePlusCourtChemin.java`
- `solutions/FloydWarshall.java`
- `solutions/BellmanFord.java`
- `solutions/Johnson.java`
- `solutions/GraphePondere.java`
- `solutions/AnalyseurGraphe.java`
- `solutions/GestionnaireChemins.java`

**Bon courage !** 🚀
