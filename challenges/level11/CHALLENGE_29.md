# 🎯 Défi 29 : Algorithmes de Tri Avancés (Radix Sort & Timsort)

## 📝 Description du Problème

Vous devez implémenter des algorithmes de tri avancés : Radix Sort (tri par base numérique) et Timsort (tri hybride optimisé). Ces algorithmes sont utilisés dans les systèmes réels pour des performances optimales sur des données spécifiques.

## 🎯 Objectifs d'Apprentissage

- Comprendre le tri par base (Radix Sort)
- Implémenter Timsort, l'algorithme de tri de Python
- Analyser les performances sur différents types de données
- Comparer les complexités algorithmiques
- Optimiser les algorithmes pour des cas d'usage réels

## 📋 Spécifications

### Classes à Créer

1. **Interface `AlgorithmeTri`** :
   - Méthodes : trier(), obtenirNom(), obtenirComplexite()
   - Méthodes : obtenirComparaisons(), obtenirEchanges()

2. **Classe `RadixSort`** :
   - Tri par base numérique (décimale, binaire, hexadécimale)
   - Support des entiers positifs et négatifs
   - Optimisation pour différents types de données

3. **Classe `Timsort`** :
   - Tri hybride (Merge Sort + Insertion Sort)
   - Détection des runs (séquences déjà triées)
   - Optimisation pour les données partiellement triées

4. **Classe `AnalyseurPerformance`** :
   - Mesure des temps d'exécution
   - Comptage des comparaisons et échanges
   - Génération de rapports de performance

5. **Classe `GestionnaireTri`** :
   - Menu interactif pour tester les algorithmes
   - Génération de données de test
   - Comparaison des performances

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE TRI AVANCÉ ===
   1. Tester Radix Sort
   2. Tester Timsort
   3. Comparer les algorithmes
   4. Générer des données de test
   5. Analyser les performances
   6. Test de stabilité
   7. Test sur différents types
   8. Quitter
   ```

2. **Types de données supportés** :
   - Entiers positifs et négatifs
   - Nombres à virgule flottante
   - Chaînes de caractères
   - Objets personnalisés

## 🔧 Contraintes Techniques

- Implémenter Radix Sort avec différentes bases
- Implémenter Timsort avec détection des runs
- Mesurer précisément les performances
- Gérer les cas limites (tableaux vides, déjà triés)
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE TRI AVANCÉ ===
1. Tester Radix Sort
2. Tester Timsort
3. Comparer les algorithmes
4. Générer des données de test
5. Analyser les performances
6. Test de stabilité
7. Test sur différents types
8. Quitter
Votre choix: 1

=== TEST RADIX SORT ===
Entrez la taille du tableau: 10000
Entrez le type de données (1: entiers, 2: chaînes): 1
Entrez la base (2, 10, 16): 10

Génération des données...
Tri en cours...

=== RÉSULTATS RADIX SORT ===
Données originales: [4732, 1829, 5647, 2938, 8471, ...]
Données triées: [1829, 2938, 4732, 5647, 8471, ...]

Performance:
- Temps d'exécution: 3.2ms
- Complexité: O(d × (n + k))
- Base utilisée: 10
- Chiffres maximum: 4
- Stabilité: OUI

Votre choix: 2

=== TEST TIMSORT ===
Entrez la taille du tableau: 10000
Entrez le type de données (1: entiers, 2: chaînes): 1
Entrez le pourcentage de tri (0-100): 30

Génération des données partiellement triées...
Tri en cours...

=== RÉSULTATS TIMSORT ===
Données originales: [1, 2, 3, 7, 5, 6, 8, 9, 4, 10, ...]
Données triées: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, ...]

Performance:
- Temps d'exécution: 2.8ms
- Complexité: O(n log n) dans le pire cas
- Runs détectés: 15
- Fusions effectuées: 12
- Stabilité: OUI

Votre choix: 3

=== COMPARAISON DES ALGORITHMES ===
Test sur 100,000 éléments:

Radix Sort (base 10):
- Temps: 15.3ms
- Comparaisons: 0
- Échanges: 0
- Mémoire: 100KB

Timsort:
- Temps: 18.7ms
- Comparaisons: 1,247,563
- Échanges: 623,781
- Mémoire: 50KB

QuickSort (référence):
- Temps: 22.1ms
- Comparaisons: 1,856,234
- Échanges: 928,117
- Mémoire: 25KB

Recommandations:
- Données entières: Radix Sort
- Données partiellement triées: Timsort
- Données aléatoires: QuickSort
```

## 🧪 Tests à Valider

- [ ] Implémentation de Radix Sort
- [ ] Implémentation de Timsort
- [ ] Mesure des performances
- [ ] Test de stabilité
- [ ] Gestion des cas limites
- [ ] Comparaison avec d'autres algorithmes
- [ ] Support de différents types de données

## 💡 Conseils

- Radix Sort est optimal pour les entiers avec un nombre de chiffres limité
- Timsort excelle sur les données partiellement triées
- Mesurez toujours les performances sur des données réelles
- Testez la stabilité des algorithmes
- Optimisez selon le type de données

## 🎯 Fichiers à Créer

- `solutions/AlgorithmeTri.java`
- `solutions/RadixSort.java`
- `solutions/Timsort.java`
- `solutions/AnalyseurPerformance.java`
- `solutions/GestionnaireTri.java`

**Bon courage !** 🚀
