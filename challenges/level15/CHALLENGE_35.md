# 🎯 Défi 35 : Algorithmes de Recherche de Motifs (KMP, Boyer-Moore, Rabin-Karp)

## 📝 Description du Problème

Vous devez implémenter des algorithmes avancés de recherche de motifs dans des chaînes de caractères : Knuth-Morris-Pratt (KMP), Boyer-Moore, et Rabin-Karp. Ces algorithmes sont essentiels pour la recherche de texte, l'édition de fichiers et l'analyse de données.

## 🎯 Objectifs d'Apprentissage

- Comprendre les algorithmes de recherche de motifs
- Implémenter l'algorithme de Knuth-Morris-Pratt
- Maîtriser l'algorithme de Boyer-Moore
- Implémenter l'algorithme de Rabin-Karp
- Analyser les performances sur différents types de texte

## 📋 Spécifications

### Classes à Créer

1. **Interface `AlgorithmeRechercheMotif`** :
   - Méthodes : rechercher(), obtenirNom(), obtenirComplexite()
   - Méthodes : obtenirComparaisons(), obtenirOccurrences()

2. **Classe `KMP`** :
   - Implémentation de l'algorithme de Knuth-Morris-Pratt
   - Construction de la table de préfixes
   - Recherche optimisée

3. **Classe `BoyerMoore`** :
   - Implémentation de l'algorithme de Boyer-Moore
   - Tables de saut (bad character, good suffix)
   - Recherche de droite à gauche

4. **Classe `RabinKarp`** :
   - Implémentation de l'algorithme de Rabin-Karp
   - Hachage roulant
   - Gestion des collisions

5. **Classe `AnalyseurTexte`** :
   - Analyse des propriétés du texte
   - Calcul de la fréquence des caractères
   - Détection des patterns

6. **Classe `GestionnaireRecherche`** :
   - Menu interactif pour tester les algorithmes
   - Chargement de fichiers texte
   - Comparaison des performances

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE RECHERCHE DE MOTIFS ===
   1. Test algorithme KMP
   2. Test algorithme Boyer-Moore
   3. Test algorithme Rabin-Karp
   4. Comparer les algorithmes
   5. Charger un fichier texte
   6. Analyser le texte
   7. Recherche multiple
   8. Quitter
   ```

2. **Types de recherche supportés** :
   - Recherche simple
   - Recherche multiple
   - Recherche insensible à la casse
   - Recherche avec caractères génériques

## 🔧 Contraintes Techniques

- Implémenter les trois algorithmes complets
- Gérer les cas limites (motif vide, texte vide)
- Mesurer les performances sur différents types de texte
- Optimiser selon le type de motif
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE RECHERCHE DE MOTIFS ===
1. Test algorithme KMP
2. Test algorithme Boyer-Moore
3. Test algorithme Rabin-Karp
4. Comparer les algorithmes
5. Charger un fichier texte
6. Analyser le texte
7. Recherche multiple
8. Quitter
Votre choix: 1

=== TEST ALGORITHME KMP ===
Entrez le texte: "ABABCABABDABABCABAB"
Entrez le motif: "ABABCABAB"

Calcul en cours...

=== RÉSULTATS KMP ===
Motif recherché: "ABABCABAB"
Texte: "ABABCABABDABABCABAB"

Table de préfixes construite:
[0, 0, 1, 2, 0, 1, 2, 3, 4]

Occurrences trouvées: 2
- Position 0: "ABABCABAB"
- Position 10: "ABABCABAB"

Performance:
- Temps d'exécution: 0.8ms
- Complexité: O(m + n)
- Comparaisons: 18
- Préprocessing: 0.2ms

Votre choix: 2

=== TEST ALGORITHME BOYER-MOORE ===
Entrez le texte: "ABABCABABDABABCABAB"
Entrez le motif: "ABABCABAB"

Calcul en cours...

=== RÉSULTATS BOYER-MOORE ===
Motif recherché: "ABABCABAB"
Texte: "ABABCABABDABABCABAB"

Tables de saut construites:
Bad Character: {A: 1, B: 0, C: 6, D: 8}
Good Suffix: [0, 0, 0, 0, 0, 0, 0, 0, 1]

Occurrences trouvées: 2
- Position 0: "ABABCABAB"
- Position 10: "ABABCABAB"

Performance:
- Temps d'exécution: 0.6ms
- Complexité: O(m + n) dans le meilleur cas
- Comparaisons: 12
- Préprocessing: 0.3ms

Votre choix: 3

=== TEST ALGORITHME RABIN-KARP ===
Entrez le texte: "ABABCABABDABABCABAB"
Entrez le motif: "ABABCABAB"

Calcul en cours...

=== RÉSULTATS RABIN-KARP ===
Motif recherché: "ABABCABAB"
Texte: "ABABCABABDABABCABAB"

Hachage du motif: 123456789
Hachage roulant calculé...

Occurrences trouvées: 2
- Position 0: "ABABCABAB" (hash: 123456789)
- Position 10: "ABABCABAB" (hash: 123456789)

Performance:
- Temps d'exécution: 1.2ms
- Complexité: O(m + n) en moyenne
- Comparaisons: 18
- Collisions: 0

Votre choix: 4

=== COMPARAISON DES ALGORITHMES ===
Test sur texte de 10,000 caractères:

KMP:
- Temps: 15ms
- Mémoire: 8KB
- Complexité: O(m + n)
- Comparaisons: 12,000
- Meilleur pour: Motifs avec répétitions

Boyer-Moore:
- Temps: 8ms
- Mémoire: 12KB
- Complexité: O(m + n) dans le meilleur cas
- Comparaisons: 6,000
- Meilleur pour: Motifs courts, texte long

Rabin-Karp:
- Temps: 25ms
- Mémoire: 4KB
- Complexité: O(m + n) en moyenne
- Comparaisons: 10,000
- Meilleur pour: Recherche multiple

Recommandations:
- Motifs avec répétitions: KMP
- Motifs courts: Boyer-Moore
- Recherche multiple: Rabin-Karp
- Texte long: Boyer-Moore

Votre choix: 5

=== CHARGEMENT DE FICHIER ===
Entrez le chemin du fichier: /path/to/text.txt

Fichier chargé avec succès!
- Taille: 50,000 caractères
- Lignes: 1,200
- Mots: 8,500

Entrez le motif à rechercher: "algorithm"

=== RECHERCHE DANS LE FICHIER ===
Recherche en cours...

Occurrences trouvées: 45
- Ligne 23, position 15: "algorithm"
- Ligne 45, position 8: "algorithm"
- Ligne 67, position 22: "algorithm"
...

Performance:
- Temps de recherche: 12ms
- Occurrences trouvées: 45
- Lignes analysées: 1,200
```

## 🧪 Tests à Valider

- [ ] Implémentation de l'algorithme KMP
- [ ] Implémentation de l'algorithme Boyer-Moore
- [ ] Implémentation de l'algorithme Rabin-Karp
- [ ] Gestion des cas limites
- [ ] Test sur différents types de texte
- [ ] Comparaison des performances
- [ ] Recherche dans des fichiers

## 💡 Conseils

- KMP est optimal pour les motifs avec répétitions
- Boyer-Moore est optimal pour les motifs courts
- Rabin-Karp est optimal pour la recherche multiple
- Testez avec des textes de différentes tailles
- Mesurez les performances sur des données réelles

## 🎯 Fichiers à Créer

- `solutions/AlgorithmeRechercheMotif.java`
- `solutions/KMP.java`
- `solutions/BoyerMoore.java`
- `solutions/RabinKarp.java`
- `solutions/AnalyseurTexte.java`
- `solutions/GestionnaireRecherche.java`

**Bon courage !** 🚀
