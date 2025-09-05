# 🎯 Défi 1 : Calculatrice Simple

## 📝 Description du Problème

Vous devez créer une calculatrice simple qui peut effectuer les opérations de base : addition, soustraction, multiplication et division.

## 🎯 Objectifs d'Apprentissage

- Déclarer des variables en Java
- Utiliser les types primitifs (int, double)
- Implémenter des conditions (if/else, switch)
- Gérer les entrées utilisateur
- Gérer la division par zéro

## 📋 Spécifications

### Fonctionnalités Requises

1. **Menu interactif** qui affiche :
   ```
   === CALCULATRICE SIMPLE ===
   1. Addition
   2. Soustraction
   3. Multiplication
   4. Division
   5. Quitter
   ```

2. **Opérations** :
   - Demander deux nombres à l'utilisateur
   - Effectuer l'opération choisie
   - Afficher le résultat
   - Gérer la division par zéro

3. **Validation** :
   - Vérifier que l'utilisateur entre des nombres valides
   - Gérer les erreurs d'entrée

## 🔧 Contraintes Techniques

- Utiliser `Scanner` pour les entrées utilisateur
- Utiliser des `double` pour les calculs (pas d'arrondi)
- Gérer les exceptions d'entrée
- Code propre et commenté

## 📝 Exemple d'Exécution

```
=== CALCULATRICE SIMPLE ===
1. Addition
2. Soustraction
3. Multiplication
4. Division
5. Quitter
Votre choix: 1

Entrez le premier nombre: 10.5
Entrez le deuxième nombre: 3.2
Résultat: 13.7

Voulez-vous continuer? (o/n): o
```

## 🧪 Tests à Valider

- [ ] Addition : 5 + 3 = 8
- [ ] Soustraction : 10 - 4 = 6
- [ ] Multiplication : 7 * 6 = 42
- [ ] Division : 15 / 3 = 5
- [ ] Division par zéro : affiche "Erreur: Division par zéro"
- [ ] Entrée invalide : gère les erreurs de saisie

## 💡 Conseils

- Commencez par créer la structure de base
- Implémentez une opération à la fois
- Testez chaque fonctionnalité
- Ajoutez la gestion d'erreurs en dernier

## 🎯 Fichier à Créer

Créez votre solution dans : `solutions/Calculatrice.java`

**Bon courage !** 🚀
