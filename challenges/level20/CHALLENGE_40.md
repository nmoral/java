# 🎯 Défi 40 : Algorithmes de Traitement d'Images

## 📝 Description du Problème

Vous devez implémenter des algorithmes de traitement d'images avancés : Canny (détection de contours), Hough Transform (détection de formes), SIFT (points d'intérêt), et Seam Carving (redimensionnement intelligent). Ces algorithmes sont essentiels pour la vision par ordinateur et l'infographie.

## 🎯 Objectifs d'Apprentissage

- Comprendre les algorithmes de traitement d'images
- Implémenter la détection de contours Canny
- Maîtriser la transformation de Hough
- Implémenter SIFT pour les points d'intérêt
- Comprendre Seam Carving

## 📋 Spécifications

### Classes à Créer

1. **Interface `AlgorithmeImage`** :
   - Méthodes : traiter(), obtenirNom(), obtenirComplexite()
   - Méthodes : obtenirResultats(), obtenirPerformance()

2. **Classe `Canny`** :
   - Détection de contours
   - Filtrage gaussien
   - Seuillage adaptatif

3. **Classe `HoughTransform`** :
   - Détection de lignes
   - Détection de cercles
   - Espace de paramètres

4. **Classe `SIFT`** :
   - Détection de points d'intérêt
   - Descripteurs invariants
   - Correspondance de points

5. **Classe `SeamCarving`** :
   - Redimensionnement intelligent
   - Calcul de l'énergie
   - Suppression de coutures

6. **Classe `GestionnaireImage`** :
   - Menu interactif pour tester les algorithmes
   - Chargement d'images
   - Visualisation des résultats

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE TRAITEMENT D'IMAGES ===
   1. Test Canny
   2. Test Hough Transform
   3. Test SIFT
   4. Test Seam Carving
   5. Comparer les algorithmes
   6. Charger une image
   7. Quitter
   ```

## 🔧 Contraintes Techniques

- Implémenter les quatre algorithmes complets
- Gérer les images en niveaux de gris
- Mesurer les performances
- Tests sur différentes images
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE TRAITEMENT D'IMAGES ===
1. Test Canny
2. Test Hough Transform
3. Test SIFT
4. Test Seam Carving
5. Comparer les algorithmes
6. Charger une image
7. Quitter
Votre choix: 1

=== TEST CANNY ===
Image chargée: 512x512 pixels
Détection de contours en cours...

Contours détectés: 1,247
Seuils utilisés: 50, 150
Temps de traitement: 45ms

Performance:
- Temps d'exécution: 45ms
- Contours détectés: 1,247
- Précision: Élevée
```

## 🧪 Tests à Valider

- [ ] Implémentation de Canny
- [ ] Implémentation de Hough Transform
- [ ] Implémentation de SIFT
- [ ] Implémentation de Seam Carving
- [ ] Tests sur différentes images
- [ ] Comparaison des performances

## 💡 Conseils

- Canny pour la détection de contours
- Hough Transform pour la détection de formes
- SIFT pour les points d'intérêt
- Seam Carving pour le redimensionnement
- Testez sur des images réelles

## 🎯 Fichiers à Créer

- `solutions/AlgorithmeImage.java`
- `solutions/Canny.java`
- `solutions/HoughTransform.java`
- `solutions/SIFT.java`
- `solutions/SeamCarving.java`
- `solutions/GestionnaireImage.java`

**Bon courage !** 🚀
