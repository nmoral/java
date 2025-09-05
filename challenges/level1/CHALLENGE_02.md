# 🎯 Défi 2 : Gestionnaire de Notes d'Étudiants

## 📝 Description du Problème

Vous devez créer un système simple pour gérer les notes d'étudiants. Le système doit pouvoir ajouter des notes, calculer des moyennes et afficher des statistiques.

## 🎯 Objectifs d'Apprentissage

- Utiliser les tableaux (arrays) en Java
- Implémenter des boucles (for, while)
- Calculer des moyennes et statistiques
- Gérer les collections de données
- Utiliser les méthodes utilitaires

## 📋 Spécifications

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === GESTIONNAIRE DE NOTES ===
   1. Ajouter une note
   2. Afficher toutes les notes
   3. Calculer la moyenne
   4. Trouver la note la plus haute
   5. Trouver la note la plus basse
   6. Afficher les statistiques
   7. Quitter
   ```

2. **Gestion des notes** :
   - Stocker les notes dans un tableau
   - Valider que les notes sont entre 0 et 20
   - Gérer un maximum de 100 notes

3. **Statistiques** :
   - Moyenne générale
   - Note la plus haute et la plus basse
   - Nombre de notes
   - Nombre de notes au-dessus de la moyenne

## 🔧 Contraintes Techniques

- Utiliser un tableau de `double` pour stocker les notes
- Gérer la taille dynamique du tableau
- Valider les entrées utilisateur
- Code modulaire avec des méthodes séparées

## 📝 Exemple d'Exécution

```
=== GESTIONNAIRE DE NOTES ===
1. Ajouter une note
2. Afficher toutes les notes
3. Calculer la moyenne
4. Trouver la note la plus haute
5. Trouver la note la plus basse
6. Afficher les statistiques
7. Quitter
Votre choix: 1

Entrez une note (0-20): 15.5
Note ajoutée avec succès!

Votre choix: 6

=== STATISTIQUES ===
Nombre de notes: 3
Moyenne: 14.33
Note la plus haute: 16.0
Note la plus basse: 12.5
Notes au-dessus de la moyenne: 2
```

## 🧪 Tests à Valider

- [ ] Ajout de notes valides (0-20)
- [ ] Rejet des notes invalides (< 0 ou > 20)
- [ ] Calcul correct de la moyenne
- [ ] Identification de la note la plus haute/basse
- [ ] Gestion du tableau vide
- [ ] Limite de 100 notes

## 💡 Conseils

- Utilisez un tableau de taille fixe (100 éléments)
- Gardez un compteur du nombre de notes ajoutées
- Créez des méthodes pour chaque fonctionnalité
- Gérez le cas où aucune note n'est ajoutée

## 🎯 Fichier à Créer

Créez votre solution dans : `solutions/GestionnaireNotes.java`

**Bon courage !** 🚀
