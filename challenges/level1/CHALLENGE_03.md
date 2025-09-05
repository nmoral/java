# 🎯 Défi 3 : Jeu de Devinette

## 📝 Description du Problème

Créez un jeu simple où l'utilisateur doit deviner un nombre aléatoire entre 1 et 100. Le jeu doit donner des indices (plus grand/plus petit) et compter le nombre de tentatives.

## 🎯 Objectifs d'Apprentissage

- Générer des nombres aléatoires
- Implémenter des boucles conditionnelles
- Gérer les entrées utilisateur
- Utiliser les conditions complexes
- Implémenter un algorithme de jeu

## 📋 Spécifications

### Fonctionnalités Requises

1. **Génération du nombre secret** :
   - Nombre aléatoire entre 1 et 100
   - Différent à chaque partie

2. **Interface de jeu** :
   ```
   === JEU DE DEVINETTE ===
   J'ai choisi un nombre entre 1 et 100.
   Devinez-le !
   
   Tentative 1: 50
   Trop grand ! Essayez plus petit.
   
   Tentative 2: 25
   Trop petit ! Essayez plus grand.
   
   Tentative 3: 37
   Bravo ! Vous avez trouvé en 3 tentatives !
   ```

3. **Fonctionnalités avancées** :
   - Compter le nombre de tentatives
   - Proposer de rejouer
   - Afficher le score (nombre de tentatives)
   - Gérer les entrées invalides

## 🔧 Contraintes Techniques

- Utiliser `Random` pour générer le nombre secret
- Utiliser `Scanner` pour les entrées
- Gérer les exceptions d'entrée
- Code propre avec des méthodes séparées

## 📝 Exemple d'Exécution

```
=== JEU DE DEVINETTE ===
J'ai choisi un nombre entre 1 et 100.
Devinez-le !

Entrez votre nombre: 50
Trop grand ! Essayez plus petit.

Entrez votre nombre: 25
Trop petit ! Essayez plus grand.

Entrez votre nombre: 37
🎉 Bravo ! Vous avez trouvé en 3 tentatives !

Voulez-vous rejouer ? (o/n): o

=== NOUVELLE PARTIE ===
J'ai choisi un nombre entre 1 et 100.
Devinez-le !
```

## 🧪 Tests à Valider

- [ ] Génération de nombres aléatoires
- [ ] Validation des entrées (1-100)
- [ ] Indices corrects (plus grand/plus petit)
- [ ] Comptage des tentatives
- [ ] Gestion des entrées invalides
- [ ] Fonctionnalité de rejeu

## 💡 Conseils

- Utilisez `Random.nextInt(100) + 1` pour générer 1-100
- Créez une méthode pour valider les entrées
- Gérez les cas d'erreur (entrée non numérique)
- Ajoutez des messages encourageants

## 🎯 Fichier à Créer

Créez votre solution dans : `solutions/JeuDevinette.java`

**Bon courage !** 🚀
