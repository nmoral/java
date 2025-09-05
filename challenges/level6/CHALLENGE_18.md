# 🎯 Défi 18 : Système de Gestion de Base de Données avec Exceptions

## 📝 Description du Problème

Vous devez créer un système de gestion de base de données avec une gestion d'erreurs complète. Le système doit gérer les connexions, les requêtes SQL et les erreurs de base de données.

## 🎯 Objectifs d'Apprentissage

- Gérer les exceptions de base de données
- Utiliser try-with-resources pour les connexions
- Implémenter des exceptions personnalisées
- Gérer les erreurs de transaction
- Comprendre la gestion des ressources de base de données

## 📋 Spécifications

### Exceptions Personnalisées à Créer

1. **Classe `BaseDeDonneesException` (extends Exception)** :
   - Attributs : requete, codeErreur, message
   - Constructeurs : avec et sans code d'erreur
   - Méthodes : obtenirRequete(), obtenirCodeErreur()

2. **Classe `ConnexionException` (extends BaseDeDonneesException)** :
   - Gestion des erreurs de connexion
   - Tentatives de reconnexion

3. **Classe `RequeteException` (extends BaseDeDonneesException)** :
   - Gestion des erreurs de requête SQL
   - Validation de la syntaxe

4. **Classe `TransactionException` (extends BaseDeDonneesException)** :
   - Gestion des erreurs de transaction
   - Rollback automatique

### Classes à Créer

1. **Classe `ConnexionBDD`** :
   - Attributs : url, utilisateur, motDePasse, connexion
   - Méthodes : connecter(), deconnecter(), estConnecte()
   - Gestion des connexions avec try-with-resources

2. **Classe `GestionnaireRequetes`** :
   - Méthodes : executerRequete(), executerRequeteAvecParametres()
   - Gestion des PreparedStatement
   - Gestion des erreurs de requête

3. **Classe `GestionnaireTransactions`** :
   - Méthodes : commencerTransaction(), validerTransaction(), annulerTransaction()
   - Gestion des transactions avec rollback

4. **Classe `GestionnaireBDD`** :
   - Gérer les opérations de base de données
   - Menu interactif pour les opérations
   - Gestion des erreurs de base de données

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE GESTION DE BASE DE DONNÉES ===
   1. Se connecter à la base
   2. Exécuter une requête SELECT
   3. Exécuter une requête INSERT
   4. Exécuter une requête UPDATE
   5. Exécuter une requête DELETE
   6. Gérer les transactions
   7. Statistiques de la base
   8. Gestion des erreurs
   9. Quitter
   ```

2. **Gestion des erreurs** :
   - Erreurs de connexion
   - Erreurs de requête SQL
   - Erreurs de transaction
   - Erreurs de validation

## 🔧 Contraintes Techniques

- Utiliser try-with-resources pour les connexions
- Gérer les exceptions de base de données
- Implémenter des exceptions personnalisées
- Gérer les transactions avec rollback
- Code modulaire avec gestion d'erreurs

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE GESTION DE BASE DE DONNÉES ===
1. Se connecter à la base
2. Exécuter une requête SELECT
3. Exécuter une requête INSERT
4. Exécuter une requête UPDATE
5. Exécuter une requête DELETE
6. Gérer les transactions
7. Statistiques de la base
8. Gestion des erreurs
9. Quitter
Votre choix: 1

Entrez l'URL de la base: jdbc:mysql://localhost:3306/testdb
Entrez l'utilisateur: root
Entrez le mot de passe: ********

=== CONNEXION À LA BASE ===
Tentative de connexion...
Connexion établie avec succès!
Base de données: testdb
Serveur: localhost:3306
Utilisateur: root

Votre choix: 2
Entrez la requête SELECT: SELECT * FROM utilisateurs WHERE age > 18

=== EXÉCUTION DE LA REQUÊTE ===
Requête exécutée avec succès!
Résultats: 5 lignes trouvées

ID | Nom     | Prénom | Âge | Email
---|---------|--------|-----|------------------
1  | Dupont  | Jean   | 25  | jean@email.com
2  | Martin  | Marie  | 30  | marie@email.com
3  | Durand  | Pierre | 22  | pierre@email.com

Votre choix: 3
Entrez la requête INSERT: INSERT INTO utilisateurs (nom, prenom, age, email) VALUES (?, ?, ?, ?)
Entrez le nom: Smith
Entrez le prénom: John
Entrez l'âge: 28
Entrez l'email: john.smith@email.com

=== EXÉCUTION DE LA REQUÊTE ===
Requête exécutée avec succès!
1 ligne insérée
ID généré: 6

Votre choix: 6

=== GESTION DES TRANSACTIONS ===
1. Commencer une transaction
2. Valider la transaction
3. Annuler la transaction
4. Statut de la transaction
Votre choix: 1

Transaction commencée avec succès!
ID de transaction: TXN001

Votre choix: 4
Entrez une requête UPDATE: UPDATE utilisateurs SET age = ? WHERE id = ?
Entrez le nouvel âge: 26
Entrez l'ID: 1

Requête exécutée dans la transaction
Voulez-vous valider? (o/n): o

Transaction validée avec succès!
1 ligne mise à jour

Votre choix: 8

=== GESTION DES ERREURS ===
Erreurs récentes:
1. ConnexionException: Impossible de se connecter à la base
2. RequeteException: Syntaxe SQL invalide
3. TransactionException: Erreur lors du rollback

Statistiques des erreurs:
- ConnexionException: 2 occurrences
- RequeteException: 5 occurrences
- TransactionException: 1 occurrence
- BaseDeDonneesException: 8 occurrences

Taux de succès: 92.3%
```

## 🧪 Tests à Valider

- [ ] Gestion des exceptions de base de données
- [ ] Utilisation de try-with-resources
- [ ] Exceptions personnalisées
- [ ] Gestion des transactions
- [ ] Gestion des erreurs de requête
- [ ] Gestion des connexions
- [ ] Statistiques des erreurs

## 💡 Conseils

- Utilisez try-with-resources pour la gestion automatique des connexions
- Créez des exceptions spécifiques pour chaque type d'erreur
- Gérez les transactions avec rollback automatique
- Implémentez des validations robustes
- Testez avec des requêtes valides et invalides

## 🎯 Fichiers à Créer

- `solutions/BaseDeDonneesException.java`
- `solutions/ConnexionException.java`
- `solutions/RequeteException.java`
- `solutions/TransactionException.java`
- `solutions/ConnexionBDD.java`
- `solutions/GestionnaireRequetes.java`
- `solutions/GestionnaireTransactions.java`
- `solutions/GestionnaireBDD.java`

**Bon courage !** 🚀
