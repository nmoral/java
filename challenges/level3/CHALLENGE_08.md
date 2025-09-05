# 🎯 Défi 8 : Système de Formes Géométriques

## 📝 Description du Problème

Vous devez créer un système de gestion de formes géométriques utilisant l'héritage et le polymorphisme. Le système doit calculer les aires, périmètres et afficher les informations de différentes formes (cercle, rectangle, triangle).

## 🎯 Objectifs d'Apprentissage

- Maîtriser l'héritage avec des classes abstraites
- Implémenter des méthodes abstraites
- Utiliser le polymorphisme avancé
- Comprendre les concepts de géométrie
- Gérer les calculs mathématiques

## 📋 Spécifications

### Classes à Créer

1. **Classe abstraite `Forme`** :
   - Attributs : nom, couleur
   - Méthodes concrètes : afficherInfo(), changerCouleur()
   - Méthodes abstraites : calculerAire(), calculerPerimetre()

2. **Classe `Cercle` (hérite de Forme)** :
   - Attribut spécifique : rayon
   - Implémentation des méthodes abstraites
   - Méthode spécifique : calculerDiametre()

3. **Classe `Rectangle` (hérite de Forme)** :
   - Attributs spécifiques : largeur, hauteur
   - Implémentation des méthodes abstraites
   - Méthode spécifique : estCarre()

4. **Classe `Triangle` (hérite de Forme)** :
   - Attributs spécifiques : base, hauteur, cote1, cote2, cote3
   - Implémentation des méthodes abstraites
   - Méthode spécifique : typeTriangle()

5. **Classe `GestionnaireFormes`** :
   - Gérer la collection de formes
   - Menu interactif pour les opérations
   - Calculs statistiques utilisant le polymorphisme

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE FORMES GÉOMÉTRIQUES ===
   1. Créer un cercle
   2. Créer un rectangle
   3. Créer un triangle
   4. Afficher toutes les formes
   5. Calculer l'aire d'une forme
   6. Calculer le périmètre d'une forme
   7. Statistiques globales
   8. Formes par couleur
   9. Quitter
   ```

2. **Calculs géométriques** :
   - Cercle : Aire = π × r², Périmètre = 2 × π × r
   - Rectangle : Aire = l × h, Périmètre = 2 × (l + h)
   - Triangle : Aire = (b × h) / 2, Périmètre = c1 + c2 + c3

## 🔧 Contraintes Techniques

- Utiliser des classes abstraites
- Implémenter toutes les méthodes abstraites
- Utiliser le polymorphisme pour les calculs
- Gérer les erreurs de calcul (valeurs négatives)
- Code modulaire avec validation des données

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE FORMES GÉOMÉTRIQUES ===
1. Créer un cercle
2. Créer un rectangle
3. Créer un triangle
4. Afficher toutes les formes
5. Calculer l'aire d'une forme
6. Calculer le périmètre d'une forme
7. Statistiques globales
8. Formes par couleur
9. Quitter
Votre choix: 1

Entrez le nom: "Cercle Principal"
Entrez la couleur: Rouge
Entrez le rayon: 5.0
Cercle créé avec succès!

Votre choix: 2
Entrez le nom: "Rectangle Bureau"
Entrez la couleur: Bleu
Entrez la largeur: 10.0
Entrez la hauteur: 6.0
Rectangle créé avec succès!

Votre choix: 4

=== TOUTES LES FORMES ===
1. Cercle Principal (Rouge) - Rayon: 5.0
2. Rectangle Bureau (Bleu) - 10.0 x 6.0

Votre choix: 5
Entrez l'index de la forme: 1
Aire du Cercle Principal: 78.54 unités²

Votre choix: 6
Entrez l'index de la forme: 2
Périmètre du Rectangle Bureau: 32.0 unités

Votre choix: 7

=== STATISTIQUES GLOBALES ===
Nombre total de formes: 2
Aire totale: 138.54 unités²
Périmètre moyen: 47.27 unités

Répartition par type:
- Cercles: 1 (50.0%)
- Rectangles: 1 (50.0%)
- Triangles: 0 (0.0%)

Répartition par couleur:
- Rouge: 1 forme(s)
- Bleu: 1 forme(s)
```

## 🧪 Tests à Valider

- [ ] Création de formes avec héritage
- [ ] Implémentation des méthodes abstraites
- [ ] Calculs corrects des aires et périmètres
- [ ] Utilisation du polymorphisme
- [ ] Méthodes spécifiques par type de forme
- [ ] Statistiques globales et par catégorie
- [ ] Gestion des erreurs de validation

## 💡 Conseils

- Utilisez `Math.PI` pour les calculs de cercle
- Implémentez la validation des valeurs positives
- Utilisez le polymorphisme pour les calculs statistiques
- Créez des méthodes utilitaires pour les calculs
- Testez chaque type de forme avec des valeurs connues

## 🎯 Fichiers à Créer

- `solutions/Forme.java`
- `solutions/Cercle.java`
- `solutions/Rectangle.java`
- `solutions/Triangle.java`
- `solutions/GestionnaireFormes.java`

**Bon courage !** 🚀
