# 🎯 Défi 36 : Algorithmes de Compression Avancés (BWT, LZ77, PPM, Arithmetic Coding)

## 📝 Description du Problème

Vous devez implémenter des algorithmes de compression avancés : Burrows-Wheeler Transform (BWT), LZ77/LZ78, PPM (Prediction by Partial Matching), et Arithmetic Coding. Ces algorithmes sont utilisés dans les systèmes de compression modernes comme bzip2, gzip et 7zip.

## 🎯 Objectifs d'Apprentissage

- Comprendre les algorithmes de compression avancés
- Implémenter la transformation Burrows-Wheeler
- Maîtriser les algorithmes LZ77 et LZ78
- Implémenter PPM pour la compression prédictive
- Comprendre l'Arithmetic Coding

## 📋 Spécifications

### Classes à Créer

1. **Interface `AlgorithmeCompression`** :
   - Méthodes : compresser(), decompresser(), obtenirNom()
   - Méthodes : obtenirTauxCompression(), obtenirTemps()

2. **Classe `BWT`** :
   - Implémentation de la transformation Burrows-Wheeler
   - Construction de la matrice de rotations
   - Transformation inverse

3. **Classe `LZ77`** :
   - Implémentation de l'algorithme LZ77
   - Fenêtre glissante
   - Codage des références

4. **Classe `LZ78`** :
   - Implémentation de l'algorithme LZ78
   - Dictionnaire adaptatif
   - Gestion des entrées

5. **Classe `PPM`** :
   - Implémentation de PPM (Prediction by Partial Matching)
   - Modèles de prédiction
   - Codage adaptatif

6. **Classe `ArithmeticCoding`** :
   - Implémentation de l'Arithmetic Coding
   - Calcul des probabilités
   - Codage arithmétique

7. **Classe `AnalyseurCompression`** :
   - Analyse des performances de compression
   - Calcul des statistiques
   - Comparaison des algorithmes

8. **Classe `GestionnaireCompression`** :
   - Menu interactif pour tester les algorithmes
   - Chargement de fichiers
   - Comparaison des performances

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE COMPRESSION AVANCÉ ===
   1. Test BWT
   2. Test LZ77
   3. Test LZ78
   4. Test PPM
   5. Test Arithmetic Coding
   6. Comparer les algorithmes
   7. Charger un fichier
   8. Quitter
   ```

2. **Types de données supportés** :
   - Texte brut
   - Fichiers binaires
   - Données répétitives
   - Données aléatoires

## 🔧 Contraintes Techniques

- Implémenter les cinq algorithmes complets
- Gérer les cas limites (fichiers vides, données non compressibles)
- Mesurer les performances sur différents types de données
- Optimiser selon le type de contenu
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE COMPRESSION AVANCÉ ===
1. Test BWT
2. Test LZ77
3. Test LZ78
4. Test PPM
5. Test Arithmetic Coding
6. Comparer les algorithmes
7. Charger un fichier
8. Quitter
Votre choix: 1

=== TEST BWT ===
Entrez le texte à compresser: "BANANA"

Calcul en cours...

=== RÉSULTATS BWT ===
Texte original: "BANANA"
Longueur: 6 caractères

Matrice de rotations:
0: BANANA
1: ANANAB
2: NANABA
3: ANANAB
4: NABANA
5: ABANAN

Tri de la matrice:
0: ABANAN
1: ANANAB
2: ANANAB
3: BANANA
4: NABANA
5: NANABA

Transformation BWT: "NNBAAA"
Index original: 3

Performance:
- Temps de compression: 2.1ms
- Temps de décompression: 1.8ms
- Taille originale: 6 octets
- Taille compressée: 7 octets
- Taux de compression: -16.7% (expansion)

Votre choix: 2

=== TEST LZ77 ===
Entrez le texte à compresser: "ABABABABABABABAB"

Calcul en cours...

=== RÉSULTATS LZ77 ===
Texte original: "ABABABABABABABAB"
Longueur: 16 caractères

Fenêtre glissante: 8 caractères
Recherche: 4 caractères

Séquences compressées:
1. (0, 0, A) - Nouveau caractère
2. (0, 0, B) - Nouveau caractère
3. (2, 2, A) - Référence: 2 caractères, 2 positions
4. (2, 2, B) - Référence: 2 caractères, 2 positions
5. (4, 4, A) - Référence: 4 caractères, 4 positions
6. (4, 4, B) - Référence: 4 caractères, 4 positions
7. (8, 8, A) - Référence: 8 caractères, 8 positions
8. (8, 8, B) - Référence: 8 caractères, 8 positions

Performance:
- Temps de compression: 3.2ms
- Temps de décompression: 2.1ms
- Taille originale: 16 octets
- Taille compressée: 24 octets
- Taux de compression: -50% (expansion)

Votre choix: 3

=== TEST LZ78 ===
Entrez le texte à compresser: "ABABABABABABABAB"

Calcul en cours...

=== RÉSULTATS LZ78 ===
Texte original: "ABABABABABABABAB"
Longueur: 16 caractères

Dictionnaire construit:
1: A
2: B
3: AB
4: BA
5: ABA
6: BAB
7: ABAB
8: BABA
9: ABABA
10: BABAB
11: ABABAB
12: BABABA
13: ABABABA
14: BABABAB
15: ABABABAB

Séquences compressées:
1: (0, A)
2: (0, B)
3: (1, B)
4: (2, A)
5: (3, A)
6: (4, B)
7: (5, B)
8: (6, A)
9: (7, A)
10: (8, B)
11: (9, B)
12: (10, A)
13: (11, A)
14: (12, B)
15: (13, B)

Performance:
- Temps de compression: 4.1ms
- Temps de décompression: 3.2ms
- Taille originale: 16 octets
- Taille compressée: 30 octets
- Taux de compression: -87.5% (expansion)

Votre choix: 4

=== TEST PPM ===
Entrez le texte à compresser: "HELLO WORLD HELLO WORLD"

Calcul en cours...

=== RÉSULTATS PPM ===
Texte original: "HELLO WORLD HELLO WORLD"
Longueur: 22 caractères

Modèles de prédiction:
Ordre 0: H(1), E(1), L(4), O(2), W(2), R(1), D(2), (1)
Ordre 1: H->E(1), E->L(1), L->L(2), L->O(2), O-> (1), O->W(1), W->O(1), W->R(1), R->L(1), D-> (1)
Ordre 2: HE->L(1), EL->L(1), LL->O(2), LO-> (1), LO->W(1), WO->R(1), OR->L(1), RL->D(1), LD-> (1)

Séquences compressées:
1: H (nouveau)
2: E (prédit par H)
3: L (prédit par E)
4: L (prédit par L)
5: O (prédit par L)
6: (espace) (prédit par O)
7: W (prédit par espace)
8: O (prédit par W)
9: R (prédit par O)
10: L (prédit par R)
11: D (prédit par L)
12: (espace) (prédit par D)
13: H (prédit par espace)
14: E (prédit par H)
15: L (prédit par E)
16: L (prédit par L)
17: O (prédit par L)
18: (espace) (prédit par O)
19: W (prédit par espace)
20: O (prédit par W)
21: R (prédit par O)
22: L (prédit par R)
23: D (prédit par L)

Performance:
- Temps de compression: 5.2ms
- Temps de décompression: 4.1ms
- Taille originale: 22 octets
- Taille compressée: 18 octets
- Taux de compression: 18.2%

Votre choix: 5

=== TEST ARITHMETIC CODING ===
Entrez le texte à compresser: "HELLO WORLD"

Calcul en cours...

=== RÉSULTATS ARITHMETIC CODING ===
Texte original: "HELLO WORLD"
Longueur: 11 caractères

Probabilités calculées:
H: 1/11 (0.091)
E: 1/11 (0.091)
L: 3/11 (0.273)
O: 2/11 (0.182)
(espace): 1/11 (0.091)
W: 1/11 (0.091)
R: 1/11 (0.091)
D: 1/11 (0.091)

Codage arithmétique:
Intervalle initial: [0.0, 1.0)
H: [0.0, 0.091)
E: [0.091, 0.182)
L: [0.182, 0.455)
L: [0.182, 0.455)
O: [0.455, 0.637)
(espace): [0.637, 0.728)
W: [0.728, 0.819)
O: [0.819, 1.0)
R: [0.819, 1.0)
L: [0.819, 1.0)
D: [0.819, 1.0)

Valeur finale: 0.819
Représentation binaire: 1101001011

Performance:
- Temps de compression: 3.8ms
- Temps de décompression: 4.2ms
- Taille originale: 11 octets
- Taille compressée: 2 octets
- Taux de compression: 81.8%

Votre choix: 6

=== COMPARAISON DES ALGORITHMES ===
Test sur fichier de 10,000 caractères:

BWT:
- Temps: 45ms
- Taux de compression: 35.2%
- Meilleur pour: Texte répétitif

LZ77:
- Temps: 25ms
- Taux de compression: 42.1%
- Meilleur pour: Données avec répétitions locales

LZ78:
- Temps: 35ms
- Taux de compression: 38.7%
- Meilleur pour: Données avec patterns

PPM:
- Temps: 120ms
- Taux de compression: 28.3%
- Meilleur pour: Texte naturel

Arithmetic Coding:
- Temps: 80ms
- Taux de compression: 25.1%
- Meilleur pour: Données avec distribution inégale

Recommandations:
- Texte répétitif: BWT
- Données avec répétitions: LZ77
- Texte naturel: PPM
- Distribution inégale: Arithmetic Coding
```

## 🧪 Tests à Valider

- [ ] Implémentation de BWT
- [ ] Implémentation de LZ77
- [ ] Implémentation de LZ78
- [ ] Implémentation de PPM
- [ ] Implémentation d'Arithmetic Coding
- [ ] Test de compression/décompression
- [ ] Comparaison des performances

## 💡 Conseils

- BWT est optimal pour les données répétitives
- LZ77 est optimal pour les répétitions locales
- PPM est optimal pour le texte naturel
- Arithmetic Coding est optimal pour les distributions inégales
- Testez sur différents types de données

## 🎯 Fichiers à Créer

- `solutions/AlgorithmeCompression.java`
- `solutions/BWT.java`
- `solutions/LZ77.java`
- `solutions/LZ78.java`
- `solutions/PPM.java`
- `solutions/ArithmeticCoding.java`
- `solutions/AnalyseurCompression.java`
- `solutions/GestionnaireCompression.java`

**Bon courage !** 🚀
