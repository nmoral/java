# 🎯 Défi 33 : Algorithmes de Flot Maximum (Ford-Fulkerson & Edmonds-Karp)

## 📝 Description du Problème

Vous devez implémenter des algorithmes de flot maximum : Ford-Fulkerson (avec recherche de chemins d'augmentation) et Edmonds-Karp (optimisé avec BFS). Ces algorithmes sont essentiels pour l'optimisation de réseaux, la planification de ressources et les problèmes de matching.

## 🎯 Objectifs d'Apprentissage

- Comprendre les concepts de flot maximum
- Implémenter l'algorithme de Ford-Fulkerson
- Maîtriser l'algorithme d'Edmonds-Karp
- Analyser les performances des deux approches
- Comprendre les applications en optimisation de réseaux

## 📋 Spécifications

### Classes à Créer

1. **Interface `AlgorithmeFlot`** :
   - Méthodes : calculerFlotMaximum(), obtenirNom(), obtenirComplexite()
   - Méthodes : obtenirFlot(), obtenirCheminAugmentation()

2. **Classe `FordFulkerson`** :
   - Implémentation de l'algorithme de Ford-Fulkerson
   - Recherche de chemins d'augmentation avec DFS
   - Calcul du flot maximum

3. **Classe `EdmondsKarp`** :
   - Implémentation de l'algorithme d'Edmonds-Karp
   - Recherche de chemins d'augmentation avec BFS
   - Optimisation pour les graphes denses

4. **Classe `ReseauFlot`** :
   - Représentation du réseau de flot
   - Gestion des capacités et flots
   - Méthodes de mise à jour

5. **Classe `CheminAugmentation`** :
   - Représentation d'un chemin d'augmentation
   - Calcul de la capacité résiduelle
   - Mise à jour du flot

6. **Classe `AnalyseurReseau`** :
   - Analyse des propriétés du réseau
   - Calcul de la coupe minimum
   - Détection des goulots d'étranglement

7. **Classe `GestionnaireFlot`** :
   - Menu interactif pour tester les algorithmes
   - Génération de réseaux de test
   - Visualisation des résultats

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE FLOT MAXIMUM ===
   1. Test Ford-Fulkerson
   2. Test Edmonds-Karp
   3. Comparer les algorithmes
   4. Générer un réseau de test
   5. Analyser le réseau
   6. Visualiser le flot
   7. Test sur différents types
   8. Quitter
   ```

2. **Types de réseaux supportés** :
   - Réseaux orientés
   - Capacités variables
   - Sources et puits multiples
   - Réseaux avec contraintes

## 🔧 Contraintes Techniques

- Implémenter les deux algorithmes complets
- Gérer les cas limites (réseaux vides, pas de chemin)
- Mesurer les performances sur différents types de réseaux
- Visualiser les résultats de manière claire
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE FLOT MAXIMUM ===
1. Test Ford-Fulkerson
2. Test Edmonds-Karp
3. Comparer les algorithmes
4. Générer un réseau de test
5. Analyser le réseau
6. Visualiser le flot
7. Test sur différents types
8. Quitter
Votre choix: 1

=== TEST FORD-FULKERSON ===
Entrez le nombre de sommets: 6
Entrez le nombre d'arêtes: 9

Génération du réseau...
Réseau généré:
- Source: S, Puits: T
- Arêtes: S->A(10), S->B(8), A->B(5), A->C(5), B->C(4), B->D(3), C->D(6), C->T(7), D->T(9)

Calcul en cours...

=== RÉSULTATS FORD-FULKERSON ===
Flot maximum calculé: 15

Chemins d'augmentation trouvés:
1. S -> A -> C -> T (flot: 5)
2. S -> B -> D -> T (flot: 3)
3. S -> A -> B -> C -> T (flot: 4)
4. S -> B -> C -> T (flot: 3)

Flot final sur les arêtes:
S->A: 9/10
S->B: 6/8
A->B: 4/5
A->C: 5/5
B->C: 4/4
B->D: 3/3
C->D: 0/6
C->T: 7/7
D->T: 9/9

Performance:
- Temps d'exécution: 2.1ms
- Complexité: O(E × f*)
- Chemins d'augmentation: 4
- Itérations: 4

Votre choix: 2

=== TEST EDMONDS-KARP ===
Entrez le nombre de sommets: 6
Entrez le nombre d'arêtes: 9

Génération du réseau...
Réseau généré (même que précédemment)

Calcul en cours...

=== RÉSULTATS EDMONDS-KARP ===
Flot maximum calculé: 15

Chemins d'augmentation trouvés:
1. S -> A -> C -> T (flot: 5)
2. S -> B -> D -> T (flot: 3)
3. S -> A -> B -> C -> T (flot: 4)
4. S -> B -> C -> T (flot: 3)

Flot final sur les arêtes:
S->A: 9/10
S->B: 6/8
A->B: 4/5
A->C: 5/5
B->C: 4/4
B->D: 3/3
C->D: 0/6
C->T: 7/7
D->T: 9/9

Performance:
- Temps d'exécution: 1.8ms
- Complexité: O(V × E²)
- Chemins d'augmentation: 4
- Itérations: 4

Votre choix: 3

=== COMPARAISON DES ALGORITHMES ===
Test sur réseau de 100 sommets:

Ford-Fulkerson:
- Temps: 45ms
- Mémoire: 12KB
- Complexité: O(E × f*)
- Chemins d'augmentation: 23
- Avantage: Simple à implémenter

Edmonds-Karp:
- Temps: 38ms
- Mémoire: 15KB
- Complexité: O(V × E²)
- Chemins d'augmentation: 23
- Avantage: Plus prévisible, meilleur dans le pire cas

Recommandations:
- Réseaux clairsemés: Ford-Fulkerson
- Réseaux denses: Edmonds-Karp
- Flot maximum petit: Ford-Fulkerson
- Flot maximum grand: Edmonds-Karp

Votre choix: 5

=== ANALYSE DU RÉSEAU ===
Propriétés du réseau:
- Nombre de sommets: 6
- Nombre d'arêtes: 9
- Source: S
- Puits: T
- Capacité totale: 57

Flot maximum: 15
Coupe minimum: 15
Goulots d'étranglement:
- Arête A->C: 5/5 (saturée)
- Arête B->C: 4/4 (saturée)
- Arête B->D: 3/3 (saturée)

Coupe minimum: {S, A, B} -> {C, D, T}
Capacité de la coupe: 15
```

## 🧪 Tests à Valider

- [ ] Implémentation de Ford-Fulkerson
- [ ] Implémentation d'Edmonds-Karp
- [ ] Calcul correct du flot maximum
- [ ] Gestion des cas limites
- [ ] Test sur différents types de réseaux
- [ ] Comparaison des performances
- [ ] Visualisation des résultats

## 💡 Conseils

- Ford-Fulkerson est plus simple à implémenter
- Edmonds-Karp est plus prévisible en performance
- Testez avec des réseaux de différentes tailles
- Vérifiez la correction sur des exemples connus
- Analysez les goulots d'étranglement

## 🎯 Fichiers à Créer

- `solutions/AlgorithmeFlot.java`
- `solutions/FordFulkerson.java`
- `solutions/EdmondsKarp.java`
- `solutions/ReseauFlot.java`
- `solutions/CheminAugmentation.java`
- `solutions/AnalyseurReseau.java`
- `solutions/GestionnaireFlot.java`

**Bon courage !** 🚀
