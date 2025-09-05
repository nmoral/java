# 🎯 Défi 34 : Algorithmes Géométriques (Enveloppe Convexe & Sweep Line)

## 📝 Description du Problème

Vous devez implémenter des algorithmes géométriques avancés : l'algorithme de Graham pour l'enveloppe convexe, l'algorithme de Jarvis (alternative), et l'algorithme de Sweep Line pour les intersections de segments. Ces algorithmes sont essentiels pour la géométrie computationnelle et l'infographie.

## 🎯 Objectifs d'Apprentissage

- Comprendre les concepts d'enveloppe convexe
- Implémenter l'algorithme de Graham
- Maîtriser l'algorithme de Jarvis
- Implémenter l'algorithme de Sweep Line
- Analyser les performances des algorithmes géométriques

## 📋 Spécifications

### Classes à Créer

1. **Classe `Point`** :
   - Attributs : x, y
   - Méthodes : distance(), angle(), comparer()
   - Implémentation de Comparable

2. **Classe `Segment`** :
   - Attributs : point1, point2
   - Méthodes : intersecte(), longueur(), contient()

3. **Interface `AlgorithmeGeometrique`** :
   - Méthodes : executer(), obtenirNom(), obtenirComplexite()

4. **Classe `Graham`** :
   - Implémentation de l'algorithme de Graham
   - Tri par angle polaire
   - Construction de l'enveloppe convexe

5. **Classe `Jarvis`** :
   - Implémentation de l'algorithme de Jarvis
   - Marche du cadeau (Gift Wrapping)
   - Alternative à Graham

6. **Classe `SweepLine`** :
   - Implémentation de l'algorithme de Sweep Line
   - Détection des intersections de segments
   - Gestion des événements

7. **Classe `EnveloppeConvexe`** :
   - Représentation de l'enveloppe convexe
   - Calcul de l'aire et du périmètre
   - Méthodes d'analyse

8. **Classe `GestionnaireGeometrie`** :
   - Menu interactif pour tester les algorithmes
   - Génération de points et segments
   - Visualisation des résultats

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME D'ALGORITHMES GÉOMÉTRIQUES ===
   1. Test algorithme de Graham
   2. Test algorithme de Jarvis
   3. Test Sweep Line
   4. Comparer les algorithmes
   5. Générer des points de test
   6. Analyser les résultats
   7. Visualiser la géométrie
   8. Quitter
   ```

2. **Types de données supportés** :
   - Points 2D
   - Segments de droite
   - Polygones
   - Ensembles de points

## 🔧 Contraintes Techniques

- Implémenter les trois algorithmes complets
- Gérer les cas limites (points colinéaires, segments parallèles)
- Mesurer les performances sur différents types de données
- Visualiser les résultats de manière claire
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME D'ALGORITHMES GÉOMÉTRIQUES ===
1. Test algorithme de Graham
2. Test algorithme de Jarvis
3. Test Sweep Line
4. Comparer les algorithmes
5. Générer des points de test
6. Analyser les résultats
7. Visualiser la géométrie
8. Quitter
Votre choix: 1

=== TEST ALGORITHME DE GRAHAM ===
Entrez le nombre de points: 20

Génération des points...
Points générés:
(2, 3), (5, 7), (1, 1), (8, 4), (3, 9), (6, 2), (9, 8), (4, 6), (7, 1), (0, 5), ...

Calcul en cours...

=== RÉSULTATS GRAHAM ===
Enveloppe convexe trouvée: 8 points

Points de l'enveloppe convexe:
1. (0, 5) - Point le plus bas
2. (1, 1) - Angle: 0.0°
3. (6, 2) - Angle: 26.6°
4. (8, 4) - Angle: 45.0°
5. (9, 8) - Angle: 63.4°
6. (5, 7) - Angle: 90.0°
7. (3, 9) - Angle: 116.6°
8. (0, 5) - Retour au point de départ

Propriétés de l'enveloppe convexe:
- Aire: 28.5 unités²
- Périmètre: 24.7 unités
- Nombre de points: 8
- Points intérieurs: 12

Performance:
- Temps d'exécution: 1.2ms
- Complexité: O(n log n)
- Tri des points: 0.8ms
- Construction: 0.4ms

Votre choix: 2

=== TEST ALGORITHME DE JARVIS ===
Entrez le nombre de points: 20

Génération des points...
Points générés (même ensemble que précédemment)

Calcul en cours...

=== RÉSULTATS JARVIS ===
Enveloppe convexe trouvée: 8 points

Points de l'enveloppe convexe:
1. (0, 5) - Point le plus bas
2. (1, 1) - Angle: 0.0°
3. (6, 2) - Angle: 26.6°
4. (8, 4) - Angle: 45.0°
5. (9, 8) - Angle: 63.4°
6. (5, 7) - Angle: 90.0°
7. (3, 9) - Angle: 116.6°
8. (0, 5) - Retour au point de départ

Propriétés de l'enveloppe convexe:
- Aire: 28.5 unités²
- Périmètre: 24.7 unités
- Nombre de points: 8
- Points intérieurs: 12

Performance:
- Temps d'exécution: 2.8ms
- Complexité: O(nh) où h est le nombre de points de l'enveloppe
- Itérations: 8
- Comparaisons d'angles: 156

Votre choix: 3

=== TEST SWEEP LINE ===
Entrez le nombre de segments: 15

Génération des segments...
Segments générés:
(1,1)->(5,5), (2,3)->(6,1), (3,2)->(7,6), (4,4)->(8,2), (5,1)->(9,5), ...

Calcul en cours...

=== RÉSULTATS SWEEP LINE ===
Intersections trouvées: 3

Intersection 1:
- Segment 1: (1,1)->(5,5)
- Segment 2: (2,3)->(6,1)
- Point d'intersection: (3.5, 3.5)

Intersection 2:
- Segment 1: (3,2)->(7,6)
- Segment 2: (4,4)->(8,2)
- Point d'intersection: (5.0, 4.0)

Intersection 3:
- Segment 1: (5,1)->(9,5)
- Segment 2: (6,3)->(10,1)
- Point d'intersection: (7.0, 3.0)

Performance:
- Temps d'exécution: 3.5ms
- Complexité: O(n log n + k) où k est le nombre d'intersections
- Événements traités: 30
- Intersections trouvées: 3

Votre choix: 4

=== COMPARAISON DES ALGORITHMES ===
Test sur 1000 points:

Graham:
- Temps: 15ms
- Mémoire: 8KB
- Complexité: O(n log n)
- Meilleur pour: Grand nombre de points

Jarvis:
- Temps: 45ms
- Mémoire: 4KB
- Complexité: O(nh)
- Meilleur pour: Peu de points sur l'enveloppe

Sweep Line:
- Temps: 25ms
- Mémoire: 12KB
- Complexité: O(n log n + k)
- Meilleur pour: Détection d'intersections

Recommandations:
- Enveloppe convexe (beaucoup de points): Graham
- Enveloppe convexe (peu de points sur l'enveloppe): Jarvis
- Intersections de segments: Sweep Line
```

## 🧪 Tests à Valider

- [ ] Implémentation de l'algorithme de Graham
- [ ] Implémentation de l'algorithme de Jarvis
- [ ] Implémentation de Sweep Line
- [ ] Gestion des cas limites
- [ ] Test sur différents types de données
- [ ] Comparaison des performances
- [ ] Visualisation des résultats

## 💡 Conseils

- Graham est optimal pour les grands ensembles de points
- Jarvis est optimal quand l'enveloppe convexe a peu de points
- Sweep Line est essentiel pour les problèmes d'intersection
- Testez avec des cas dégénérés (points colinéaires)
- Visualisez les résultats pour vérifier la correction

## 🎯 Fichiers à Créer

- `solutions/Point.java`
- `solutions/Segment.java`
- `solutions/AlgorithmeGeometrique.java`
- `solutions/Graham.java`
- `solutions/Jarvis.java`
- `solutions/SweepLine.java`
- `solutions/EnveloppeConvexe.java`
- `solutions/GestionnaireGeometrie.java`

**Bon courage !** 🚀
