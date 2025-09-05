# 🎯 Défi 23 : Système de Gestion de Graphes avec Algorithmes

## 📝 Description du Problème

Vous devez créer un système de gestion de graphes utilisant des algorithmes avancés. Le système doit implémenter des algorithmes de parcours (DFS, BFS), de plus court chemin (Dijkstra, Floyd-Warshall) et d'arbres couvrants (Kruskal, Prim).

## 🎯 Objectifs d'Apprentissage

- Comprendre les structures de données de graphes
- Implémenter des algorithmes de parcours
- Utiliser des algorithmes de plus court chemin
- Implémenter des algorithmes d'arbres couvrants
- Gérer des graphes complexes

## 📋 Spécifications

### Classes à Créer

1. **Classe `Sommet`** :
   - Attributs : id, nom, coordonnees, poids
   - Méthodes : ajouterVoisin(), obtenirVoisins()

2. **Classe `Arete`** :
   - Attributs : sommet1, sommet2, poids, orientee
   - Méthodes : obtenirPoids(), estOrientee()

3. **Classe `Graphe`** :
   - Attributs : sommets, aretes, oriente
   - Méthodes : ajouterSommet(), ajouterArete(), obtenirSommets()

4. **Interface `AlgorithmeGraphe`** :
   - Méthodes : executer(), obtenirNom(), obtenirComplexite()

5. **Classe `DFS` (implémente AlgorithmeGraphe)** :
   - Implémentation du parcours en profondeur
   - Méthodes : parcourir(), marquerVisite()

6. **Classe `BFS` (implémente AlgorithmeGraphe)** :
   - Implémentation du parcours en largeur
   - Méthodes : parcourir(), ajouterFile()

7. **Classe `Dijkstra` (implémente AlgorithmeGraphe)** :
   - Implémentation de l'algorithme de Dijkstra
   - Méthodes : calculerDistances(), obtenirChemin()

8. **Classe `Kruskal` (implémente AlgorithmeGraphe)** :
   - Implémentation de l'algorithme de Kruskal
   - Méthodes : trierAretes(), union(), trouver()

9. **Classe `GestionnaireGraphes`** :
   - Gérer les graphes et algorithmes
   - Menu interactif pour les opérations
   - Visualisation des résultats

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE GESTION DE GRAPHES ===
   1. Créer un graphe
   2. Ajouter un sommet
   3. Ajouter une arête
   4. Parcours DFS
   5. Parcours BFS
   6. Plus court chemin (Dijkstra)
   7. Arbre couvrant minimum (Kruskal)
   8. Visualiser le graphe
   9. Analyser les performances
   10. Quitter
   ```

2. **Algorithmes** :
   - Parcours : DFS, BFS
   - Plus court chemin : Dijkstra
   - Arbre couvrant : Kruskal
   - Analyse : Complexité, performances

## 🔧 Contraintes Techniques

- Implémenter des structures de graphes efficaces
- Utiliser des algorithmes de graphes optimisés
- Gérer des graphes orientés et non orientés
- Analyser les performances
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE GESTION DE GRAPHES ===
1. Créer un graphe
2. Ajouter un sommet
3. Ajouter une arête
4. Parcours DFS
5. Parcours BFS
6. Plus court chemin (Dijkstra)
7. Arbre couvrant minimum (Kruskal)
8. Visualiser le graphe
9. Analyser les performances
10. Quitter
Votre choix: 1

Entrez le nom du graphe: Réseau de transport
Le graphe est-il orienté? (o/n): n
Graphe créé avec succès!

Votre choix: 2
Entrez l'ID du sommet: A
Entrez le nom: Gare Centrale
Entrez les coordonnées (x,y): 0,0
Sommet ajouté avec succès!

Votre choix: 3
Entrez le premier sommet: A
Entrez le deuxième sommet: B
Entrez le poids: 5
Arête ajoutée avec succès!

Votre choix: 4
Entrez le sommet de départ: A

=== PARCOURS DFS ===
Parcours en cours...

Ordre de visite:
1. A (Gare Centrale)
2. B (Station Nord)
3. C (Station Sud)
4. D (Station Est)
5. E (Station Ouest)

Temps d'exécution: 2ms
Complexité: O(V + E)

Votre choix: 6
Entrez le sommet de départ: A
Entrez le sommet d'arrivée: E

=== PLUS COURT CHEMIN (DIJKSTRA) ===
Calcul en cours...

Chemin le plus court de A à E:
A → B → D → E
Distance totale: 12
Temps d'exécution: 3ms
Complexité: O((V + E) log V)

Détails du chemin:
- A → B: 5
- B → D: 4
- D → E: 3

Votre choix: 7

=== ARBRE COUVRANT MINIMUM (KRUSKAL) ===
Calcul en cours...

Arête sélectionnée: B → C (poids: 2)
Arête sélectionnée: A → B (poids: 5)
Arête sélectionnée: D → E (poids: 3)
Arête sélectionnée: C → D (poids: 4)

Arbre couvrant minimum:
- Poids total: 14
- Nombre d'arêtes: 4
- Temps d'exécution: 4ms
- Complexité: O(E log E)

Votre choix: 9

=== ANALYSE DES PERFORMANCES ===
Test avec 100 sommets et 500 arêtes:

Algorithmes de parcours:
- DFS: 15ms (O(V + E))
- BFS: 18ms (O(V + E))

Algorithmes de plus court chemin:
- Dijkstra: 25ms (O((V + E) log V))

Algorithmes d'arbres couvrants:
- Kruskal: 12ms (O(E log E))

Recommandations:
- Pour les parcours: DFS (plus rapide)
- Pour les plus courts chemins: Dijkstra
- Pour les arbres couvrants: Kruskal
```

## 🧪 Tests à Valider

- [ ] Implémentation des structures de graphes
- [ ] Implémentation de DFS
- [ ] Implémentation de BFS
- [ ] Implémentation de Dijkstra
- [ ] Implémentation de Kruskal
- [ ] Gestion des graphes orientés et non orientés
- [ ] Analyse des performances

## 💡 Conseils

- Implémentez les structures de graphes étape par étape
- Utilisez des interfaces pour la réutilisabilité
- Testez avec des graphes de différentes tailles
- Analysez les complexités algorithmiques
- Visualisez les résultats pour mieux comprendre

## 🎯 Fichiers à Créer

- `solutions/Sommet.java`
- `solutions/Arete.java`
- `solutions/Graphe.java`
- `solutions/AlgorithmeGraphe.java`
- `solutions/DFS.java`
- `solutions/BFS.java`
- `solutions/Dijkstra.java`
- `solutions/Kruskal.java`
- `solutions/GestionnaireGraphes.java`

**Bon courage !** 🚀
