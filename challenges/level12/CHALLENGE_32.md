# 🎯 Défi 32 : Composantes Fortement Connexes (Tarjan & Kosaraju)

## 📝 Description du Problème

Vous devez implémenter des algorithmes pour trouver les composantes fortement connexes (CFC) dans un graphe orienté : l'algorithme de Tarjan et l'algorithme de Kosaraju. Ces algorithmes sont essentiels pour l'analyse de réseaux et la détection de cycles.

## 🎯 Objectifs d'Apprentissage

- Comprendre les composantes fortement connexes
- Implémenter l'algorithme de Tarjan
- Implémenter l'algorithme de Kosaraju
- Analyser les performances des deux approches
- Comprendre les applications en analyse de réseaux

## 📋 Spécifications

### Classes à Créer

1. **Interface `AlgorithmeCFC`** :
   - Méthodes : trouverCFC(), obtenirNom(), obtenirComplexite()
   - Méthodes : obtenirNombreCFC(), obtenirCFC()

2. **Classe `Tarjan`** :
   - Implémentation de l'algorithme de Tarjan
   - Utilisation d'une pile et de numéros de découverte
   - Détection des CFC en un seul parcours

3. **Classe `Kosaraju`** :
   - Implémentation de l'algorithme de Kosaraju
   - Double parcours (DFS + DFS sur le graphe transposé)
   - Approche plus intuitive

4. **Classe `GrapheOriente`** :
   - Représentation du graphe orienté
   - Gestion des listes d'adjacence
   - Méthodes de transposition

5. **Classe `ComposanteFortementConnexe`** :
   - Représentation d'une CFC
   - Liste des sommets appartenant à la CFC
   - Méthodes d'analyse

6. **Classe `AnalyseurReseau`** :
   - Analyse des propriétés du réseau
   - Calcul de la connectivité
   - Détection des points d'articulation

7. **Classe `GestionnaireCFC`** :
   - Menu interactif pour tester les algorithmes
   - Génération de graphes de test
   - Visualisation des résultats

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE COMPOSANTES FORTEMENT CONNEXES ===
   1. Test algorithme de Tarjan
   2. Test algorithme de Kosaraju
   3. Comparer les algorithmes
   4. Générer un graphe de test
   5. Analyser le réseau
   6. Visualiser les CFC
   7. Test sur différents types
   8. Quitter
   ```

2. **Types de graphes supportés** :
   - Graphes orientés
   - Graphes avec cycles
   - Graphes connexes et non-connexes
   - Graphes de différentes tailles

## 🔧 Contraintes Techniques

- Implémenter les deux algorithmes complets
- Gérer les cas limites (graphes vides, un seul sommet)
- Mesurer les performances sur différents types de graphes
- Visualiser les résultats de manière claire
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE COMPOSANTES FORTEMENT CONNEXES ===
1. Test algorithme de Tarjan
2. Test algorithme de Kosaraju
3. Comparer les algorithmes
4. Générer un graphe de test
5. Analyser le réseau
6. Visualiser les CFC
7. Test sur différents types
8. Quitter
Votre choix: 1

=== TEST ALGORITHME DE TARJAN ===
Entrez le nombre de sommets: 8
Entrez le nombre d'arêtes: 12

Génération du graphe...
Graphe généré:
- Sommets: A, B, C, D, E, F, G, H
- Arêtes: A->B, B->C, C->A, D->E, E->F, F->D, G->H, H->G, A->D, C->E, F->G, H->A

Calcul en cours...

=== RÉSULTATS TARJAN ===
Composantes fortement connexes trouvées: 4

CFC 1: {A, B, C}
- Cycle: A -> B -> C -> A
- Taille: 3 sommets

CFC 2: {D, E, F}
- Cycle: D -> E -> F -> D
- Taille: 3 sommets

CFC 3: {G, H}
- Cycle: G -> H -> G
- Taille: 2 sommets

CFC 4: {A, B, C, D, E, F, G, H}
- Cycle: A -> D -> E -> F -> G -> H -> A
- Taille: 8 sommets

Performance:
- Temps d'exécution: 0.8ms
- Complexité: O(V + E)
- Parcours DFS: 1
- Pile utilisée: Oui

Votre choix: 2

=== TEST ALGORITHME DE KOSARAJU ===
Entrez le nombre de sommets: 8
Entrez le nombre d'arêtes: 12

Génération du graphe...
Graphe généré (même que précédemment)

Calcul en cours...

=== RÉSULTATS KOSARAJU ===
Composantes fortement connexes trouvées: 4

CFC 1: {A, B, C}
- Cycle: A -> B -> C -> A
- Taille: 3 sommets

CFC 2: {D, E, F}
- Cycle: D -> E -> F -> D
- Taille: 3 sommets

CFC 3: {G, H}
- Cycle: G -> H -> G
- Taille: 2 sommets

CFC 4: {A, B, C, D, E, F, G, H}
- Cycle: A -> D -> E -> F -> G -> H -> A
- Taille: 8 sommets

Performance:
- Temps d'exécution: 1.2ms
- Complexité: O(V + E)
- Parcours DFS: 2
- Graphe transposé: Oui

Votre choix: 3

=== COMPARAISON DES ALGORITHMES ===
Test sur graphe de 1000 sommets:

Tarjan:
- Temps: 15ms
- Mémoire: 8KB
- Complexité: O(V + E)
- Parcours: 1
- Avantage: Plus rapide, moins de mémoire

Kosaraju:
- Temps: 22ms
- Mémoire: 12KB
- Complexité: O(V + E)
- Parcours: 2
- Avantage: Plus intuitif, plus facile à comprendre

Recommandations:
- Performance: Tarjan
- Simplicité: Kosaraju
- Mémoire limitée: Tarjan
- Apprentissage: Kosaraju

Votre choix: 5

=== ANALYSE DU RÉSEAU ===
Propriétés du graphe:
- Nombre de sommets: 8
- Nombre d'arêtes: 12
- Densité: 21.4%
- Degré moyen: 3.0

Connectivité:
- Composantes fortement connexes: 4
- Plus grande CFC: 8 sommets
- Plus petite CFC: 2 sommets
- Taille moyenne des CFC: 4.0

Cycles détectés:
- Cycle de longueur 3: A->B->C->A
- Cycle de longueur 3: D->E->F->D
- Cycle de longueur 2: G->H->G
- Cycle de longueur 8: A->D->E->F->G->H->A

Points d'articulation: Aucun
```

## 🧪 Tests à Valider

- [ ] Implémentation de l'algorithme de Tarjan
- [ ] Implémentation de l'algorithme de Kosaraju
- [ ] Détection correcte des CFC
- [ ] Gestion des cas limites
- [ ] Test sur différents types de graphes
- [ ] Comparaison des performances
- [ ] Visualisation des résultats

## 💡 Conseils

- Tarjan est plus efficace en termes de performance
- Kosaraju est plus facile à comprendre et implémenter
- Testez avec des graphes de différentes tailles
- Vérifiez la correction sur des exemples connus
- Analysez les propriétés du réseau

## 🎯 Fichiers à Créer

- `solutions/AlgorithmeCFC.java`
- `solutions/Tarjan.java`
- `solutions/Kosaraju.java`
- `solutions/GrapheOriente.java`
- `solutions/ComposanteFortementConnexe.java`
- `solutions/AnalyseurReseau.java`
- `solutions/GestionnaireCFC.java`

**Bon courage !** 🚀