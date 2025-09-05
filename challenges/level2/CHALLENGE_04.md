# 🎯 Défi 4 : Gestionnaire de Comptes Bancaires

## 📝 Description du Problème

Vous devez créer un système de gestion de comptes bancaires simple. Le système doit permettre de créer des comptes, effectuer des opérations bancaires (dépôt, retrait, virement) et consulter les soldes.

## 🎯 Objectifs d'Apprentissage

- Créer et utiliser des classes en Java
- Implémenter des constructeurs et méthodes
- Gérer l'encapsulation (private, public)
- Utiliser des attributs d'instance
- Comprendre les concepts de base de la POO

## 📋 Spécifications

### Classes à Créer

1. **Classe `CompteBancaire`** :
   - Attributs : numéro de compte, nom du titulaire, solde
   - Méthodes : déposer, retirer, consulter solde, afficher informations

2. **Classe `GestionnaireComptes`** :
   - Gérer une collection de comptes
   - Menu interactif pour les opérations
   - Recherche de comptes par numéro

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === GESTIONNAIRE DE COMPTES BANCAIRES ===
   1. Créer un nouveau compte
   2. Consulter un compte
   3. Effectuer un dépôt
   4. Effectuer un retrait
   5. Effectuer un virement
   6. Afficher tous les comptes
   7. Quitter
   ```

2. **Opérations bancaires** :
   - Création de compte avec validation
   - Dépôt avec mise à jour du solde
   - Retrait avec vérification du solde
   - Virement entre comptes
   - Consultation des informations

## 🔧 Contraintes Techniques

- Utiliser l'encapsulation (attributs privés)
- Valider les montants (positifs)
- Gérer les erreurs (solde insuffisant)
- Code modulaire avec méthodes séparées
- Gestion d'un maximum de 50 comptes

## 📝 Exemple d'Exécution

```
=== GESTIONNAIRE DE COMPTES BANCAIRES ===
1. Créer un nouveau compte
2. Consulter un compte
3. Effectuer un dépôt
4. Effectuer un retrait
5. Effectuer un virement
6. Afficher tous les comptes
7. Quitter
Votre choix: 1

Entrez le nom du titulaire: Jean Dupont
Entrez le solde initial: 1000.0
Compte créé avec succès!
Numéro de compte: COMPTE001

Votre choix: 3
Entrez le numéro de compte: COMPTE001
Entrez le montant à déposer: 500.0
Dépôt effectué avec succès!
Nouveau solde: 1500.0

Votre choix: 4
Entrez le numéro de compte: COMPTE001
Entrez le montant à retirer: 200.0
Retrait effectué avec succès!
Nouveau solde: 1300.0
```

## 🧪 Tests à Valider

- [ ] Création de compte avec validation
- [ ] Dépôt avec mise à jour du solde
- [ ] Retrait avec vérification du solde
- [ ] Virement entre comptes existants
- [ ] Gestion des erreurs (solde insuffisant)
- [ ] Consultation des informations de compte
- [ ] Limite de 50 comptes maximum

## 💡 Conseils

- Commencez par créer la classe CompteBancaire
- Utilisez des attributs privés avec des getters/setters
- Implémentez la validation dans les méthodes
- Créez des identifiants uniques pour les comptes
- Gérez les cas d'erreur avec des messages clairs

## 🎯 Fichiers à Créer

- `solutions/CompteBancaire.java`
- `solutions/GestionnaireComptes.java`

**Bon courage !** 🚀
