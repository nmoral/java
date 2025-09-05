# 🎯 Défi 30 : Algorithmes de Recherche Avancés

## 📝 Description du Problème

Vous devez implémenter des algorithmes de recherche avancés : recherche par interpolation, arbres B+ et B*, et structures de données optimisées pour la recherche dans de grandes bases de données.

## 🎯 Objectifs d'Apprentissage

- Comprendre la recherche par interpolation
- Implémenter des arbres B+ et B* pour les bases de données
- Optimiser les structures de données pour la recherche
- Analyser les performances sur de gros volumes
- Comprendre les applications en bases de données

## 📋 Spécifications

### Classes à Créer

1. **Interface `AlgorithmeRecherche`** :
   - Méthodes : rechercher(), obtenirNom(), obtenirComplexite()
   - Méthodes : obtenirComparaisons(), obtenirTemps()

2. **Classe `RechercheInterpolation`** :
   - Recherche dans des données uniformément distribuées
   - Calcul de la position estimée
   - Optimisation pour les données triées

3. **Classe `NoeudBPlus`** :
   - Structure de nœud pour arbre B+
   - Gestion des clés et pointeurs
   - Méthodes d'insertion et de recherche

4. **Classe `ArbreBPlus`** :
   - Implémentation complète de l'arbre B+
   - Insertion, suppression, recherche
   - Gestion de la hauteur et du rééquilibrage

5. **Classe `NoeudBStar`** :
   - Structure de nœud pour arbre B*
   - Optimisation de l'espace
   - Gestion des surcharges

6. **Classe `ArbreBStar`** :
   - Implémentation de l'arbre B*
   - Algorithme de redistribution
   - Optimisation des performances

7. **Classe `GestionnaireRecherche`** :
   - Menu interactif pour tester les algorithmes
   - Génération de données de test
   - Comparaison des performances

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE RECHERCHE AVANCÉ ===
   1. Test recherche par interpolation
   2. Test arbre B+
   3. Test arbre B*
   4. Comparer les performances
   5. Générer des données de test
   6. Analyser la complexité
   7. Test sur gros volumes
   8. Quitter
   ```

2. **Types de données supportés** :
   - Entiers
   - Chaînes de caractères
   - Nombres à virgule flottante
   - Objets personnalisés

## 🔧 Contraintes Techniques

- Implémenter la recherche par interpolation
- Implémenter les arbres B+ et B* complets
- Gérer les opérations CRUD sur les arbres
- Mesurer les performances sur de gros volumes
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE RECHERCHE AVANCÉ ===
1. Test recherche par interpolation
2. Test arbre B+
3. Test arbre B*
4. Comparer les performances
5. Générer des données de test
6. Analyser la complexité
7. Test sur gros volumes
8. Quitter
Votre choix: 1

=== TEST RECHERCHE PAR INTERPOLATION ===
Entrez la taille du tableau: 1000000
Entrez la valeur à rechercher: 750000

Génération des données uniformément distribuées...
Recherche en cours...

=== RÉSULTATS RECHERCHE PAR INTERPOLATION ===
Valeur recherchée: 750000
Position trouvée: 750000
Index dans le tableau: 750000

Performance:
- Temps d'exécution: 0.001ms
- Comparaisons effectuées: 1
- Complexité: O(log log n)
- Données: Uniformément distribuées

Votre choix: 2

=== TEST ARBRE B+ ===
Entrez le nombre d'éléments: 10000
Entrez l'ordre de l'arbre: 4

Construction de l'arbre B+...
Insertion en cours...

=== RÉSULTATS ARBRE B+ ===
Arbre B+ construit avec succès!
- Nombre d'éléments: 10,000
- Hauteur de l'arbre: 4
- Nœuds internes: 156
- Nœuds feuilles: 2,500
- Ordre: 4

Test de recherche:
Entrez la valeur à rechercher: 5432
Recherche en cours...

Valeur trouvée: 5432
Chemin de recherche: Racine -> Nœud1 -> Nœud2 -> Feuille3
Comparaisons: 4
Temps: 0.002ms

Votre choix: 3

=== TEST ARBRE B* ===
Entrez le nombre d'éléments: 10000
Entrez l'ordre de l'arbre: 4

Construction de l'arbre B*...
Insertion en cours...

=== RÉSULTATS ARBRE B* ===
Arbre B* construit avec succès!
- Nombre d'éléments: 10,000
- Hauteur de l'arbre: 3
- Nœuds internes: 89
- Nœuds feuilles: 1,667
- Ordre: 4
- Taux d'occupation: 85.3%

Test de recherche:
Entrez la valeur à rechercher: 7890
Recherche en cours...

Valeur trouvée: 7890
Chemin de recherche: Racine -> Nœud1 -> Feuille2
Comparaisons: 3
Temps: 0.001ms

Votre choix: 4

=== COMPARAISON DES PERFORMANCES ===
Test sur 1,000,000 d'éléments:

Recherche par interpolation:
- Temps moyen: 0.001ms
- Comparaisons: 1-2
- Complexité: O(log log n)
- Meilleur cas: Données uniformes

Arbre B+ (ordre 4):
- Temps moyen: 0.003ms
- Comparaisons: 4-6
- Complexité: O(log n)
- Hauteur: 6

Arbre B* (ordre 4):
- Temps moyen: 0.002ms
- Comparaisons: 3-5
- Complexité: O(log n)
- Hauteur: 5
- Taux d'occupation: 87%

Recherche binaire classique:
- Temps moyen: 0.005ms
- Comparaisons: 20
- Complexité: O(log n)

Recommandations:
- Données uniformes: Recherche par interpolation
- Gros volumes: Arbre B*
- Bases de données: Arbre B+
- Petits volumes: Recherche binaire
```

## 🧪 Tests à Valider

- [ ] Implémentation de la recherche par interpolation
- [ ] Implémentation de l'arbre B+
- [ ] Implémentation de l'arbre B*
- [ ] Test des opérations CRUD
- [ ] Mesure des performances
- [ ] Test sur de gros volumes
- [ ] Comparaison avec d'autres algorithmes

## 💡 Conseils

- La recherche par interpolation est optimale pour des données uniformément distribuées
- Les arbres B+ sont parfaits pour les bases de données
- Les arbres B* optimisent l'utilisation de l'espace
- Testez toujours sur des données réelles
- Mesurez la hauteur et le taux d'occupation

## 🎯 Fichiers à Créer

- `solutions/AlgorithmeRecherche.java`
- `solutions/RechercheInterpolation.java`
- `solutions/NoeudBPlus.java`
- `solutions/ArbreBPlus.java`
- `solutions/NoeudBStar.java`
- `solutions/ArbreBStar.java`
- `solutions/GestionnaireRecherche.java`

**Bon courage !** 🚀
