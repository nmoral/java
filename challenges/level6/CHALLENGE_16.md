# 🎯 Défi 16 : Système de Validation avec Exceptions Personnalisées

## 📝 Description du Problème

Vous devez créer un système de validation utilisant des exceptions personnalisées. Le système doit valider des données utilisateur, gérer des erreurs métier et fournir des messages d'erreur clairs et informatifs.

## 🎯 Objectifs d'Apprentissage

- Créer des exceptions personnalisées
- Comprendre la hiérarchie des exceptions
- Utiliser try-catch-finally
- Implémenter des validations robustes
- Gérer les erreurs métier

## 📋 Spécifications

### Exceptions Personnalisées à Créer

1. **Classe `ValidationException` (extends Exception)** :
   - Attributs : champ, valeur, message
   - Constructeurs : avec et sans message
   - Méthodes : obtenirChamp(), obtenirValeur()

2. **Classe `EmailInvalideException` (extends ValidationException)** :
   - Validation spécifique des emails
   - Messages d'erreur personnalisés

3. **Classe `AgeInvalideException` (extends ValidationException)** :
   - Validation des âges
   - Gestion des limites d'âge

4. **Classe `DonneesManquantesException` (extends ValidationException)** :
   - Validation des champs obligatoires
   - Liste des champs manquants

### Classes à Créer

1. **Classe `Utilisateur`** :
   - Attributs : nom, prenom, email, age, telephone
   - Méthodes : valider(), afficherInfo()

2. **Classe `ValidateurUtilisateur`** :
   - Méthodes : validerEmail(), validerAge(), validerTelephone()
   - Gestion des exceptions de validation

3. **Classe `GestionnaireUtilisateurs`** :
   - Gérer la collection d'utilisateurs
   - Menu interactif pour les opérations
   - Gestion des erreurs de validation

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE VALIDATION D'UTILISATEURS ===
   1. Ajouter un utilisateur
   2. Valider un utilisateur
   3. Afficher tous les utilisateurs
   4. Rechercher un utilisateur
   5. Statistiques de validation
   6. Gestion des erreurs
   7. Quitter
   ```

2. **Validations** :
   - Email : format valide, domaine existant
   - Âge : entre 0 et 150 ans
   - Téléphone : format français valide
   - Champs obligatoires : nom, prénom, email

## 🔧 Contraintes Techniques

- Créer des exceptions personnalisées
- Utiliser try-catch-finally appropriément
- Implémenter des validations robustes
- Gérer les erreurs métier
- Code modulaire avec gestion d'erreurs

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE VALIDATION D'UTILISATEURS ===
1. Ajouter un utilisateur
2. Valider un utilisateur
3. Afficher tous les utilisateurs
4. Rechercher un utilisateur
5. Statistiques de validation
6. Gestion des erreurs
7. Quitter
Votre choix: 1

Entrez le nom: Dupont
Entrez le prénom: Jean
Entrez l'email: jean.dupont@email.com
Entrez l'âge: 25
Entrez le téléphone: 0123456789

=== VALIDATION EN COURS ===
Vérification de l'email...
Vérification de l'âge...
Vérification du téléphone...
Utilisateur ajouté avec succès!

Votre choix: 1
Entrez le nom: 
Entrez le prénom: Marie
Entrez l'email: email-invalide
Entrez l'âge: -5
Entrez le téléphone: 123

=== ERREURS DE VALIDATION ===
❌ DonneesManquantesException: Le champ 'nom' est obligatoire
❌ EmailInvalideException: Format d'email invalide: 'email-invalide'
❌ AgeInvalideException: L'âge doit être entre 0 et 150 ans, reçu: -5
❌ ValidationException: Format de téléphone invalide: '123'

Votre choix: 5

=== STATISTIQUES DE VALIDATION ===
Utilisateurs valides: 1
Utilisateurs invalides: 1
Erreurs par type:
- EmailInvalideException: 1
- AgeInvalideException: 1
- DonneesManquantesException: 1
- ValidationException: 1

Taux de succès: 50.0%
```

## 🧪 Tests à Valider

- [ ] Création d'exceptions personnalisées
- [ ] Validation des emails
- [ ] Validation des âges
- [ ] Validation des téléphones
- [ ] Gestion des champs obligatoires
- [ ] Gestion des erreurs multiples
- [ ] Statistiques de validation

## 💡 Conseils

- Créez des exceptions spécifiques pour chaque type d'erreur
- Utilisez des messages d'erreur clairs et informatifs
- Implémentez des validations robustes
- Gérez les erreurs multiples
- Testez avec des données valides et invalides

## 🎯 Fichiers à Créer

- `solutions/ValidationException.java`
- `solutions/EmailInvalideException.java`
- `solutions/AgeInvalideException.java`
- `solutions/DonneesManquantesException.java`
- `solutions/Utilisateur.java`
- `solutions/ValidateurUtilisateur.java`
- `solutions/GestionnaireUtilisateurs.java`

**Bon courage !** 🚀
