# 🎯 Défi 26 : API REST avec Authentification et Sécurité

## 📝 Description du Problème

Vous devez créer une API REST sécurisée pour un système de gestion d'utilisateurs. L'API doit inclure l'authentification JWT, la validation des données, la gestion des rôles et la protection contre les attaques courantes.

## 🎯 Objectifs d'Apprentissage

- Créer des APIs REST avec Java
- Implémenter l'authentification JWT
- Gérer la sécurité et la validation des données
- Utiliser les annotations et la sérialisation JSON
- Comprendre les bonnes pratiques de sécurité

## 📋 Spécifications

### Classes à Créer

1. **Classe `Utilisateur`** :
   - Attributs : id, nom, email, motDePasse, role, dateCreation
   - Méthodes : validerMotDePasse(), obtenirRole(), estActif()

2. **Classe `JwtUtil`** :
   - Génération et validation des tokens JWT
   - Gestion des clés secrètes
   - Extraction des claims

3. **Classe `AuthentificationService`** :
   - Login et logout des utilisateurs
   - Validation des credentials
   - Gestion des sessions

4. **Classe `AutorisationService`** :
   - Vérification des permissions
   - Gestion des rôles (ADMIN, USER, MODERATOR)
   - Protection des endpoints

5. **Classe `ApiController`** :
   - Endpoints REST pour les utilisateurs
   - Gestion des requêtes HTTP
   - Validation des données d'entrée

6. **Classe `ServeurApi`** :
   - Configuration du serveur HTTP
   - Gestion des routes
   - Middleware de sécurité

### Fonctionnalités Requises

1. **Endpoints API** :
   ```
   POST /api/auth/login     - Authentification
   POST /api/auth/logout    - Déconnexion
   GET  /api/users          - Lister les utilisateurs
   POST /api/users          - Créer un utilisateur
   GET  /api/users/{id}     - Obtenir un utilisateur
   PUT  /api/users/{id}     - Modifier un utilisateur
   DELETE /api/users/{id}   - Supprimer un utilisateur
   ```

2. **Sécurité** :
   - Authentification JWT obligatoire
   - Validation des données d'entrée
   - Protection contre les injections
   - Gestion des erreurs sécurisée
   - Logs de sécurité

## 🔧 Contraintes Techniques

- Utiliser des annotations pour les endpoints
- Implémenter la validation des données
- Gérer la sérialisation JSON
- Implémenter la sécurité JWT
- Code modulaire avec séparation des responsabilités

## 📝 Exemple d'Exécution

```
=== API REST SÉCURISÉE ===
1. Démarrer le serveur API
2. Tester l'authentification
3. Tester les endpoints
4. Gérer les utilisateurs
5. Monitoring de sécurité
6. Statistiques de l'API
7. Quitter
Votre choix: 1

Entrez le port du serveur: 8080
Entrez la clé secrète JWT: maCleSecreteSuperSecurisee123

=== DÉMARRAGE DU SERVEUR API ===
Serveur démarré sur le port 8080
JWT configuré avec succès
Endpoints disponibles:
- POST /api/auth/login
- POST /api/auth/logout
- GET  /api/users
- POST /api/users
- GET  /api/users/{id}
- PUT  /api/users/{id}
- DELETE /api/users/{id}

Serveur prêt à recevoir les requêtes!

Votre choix: 2
Entrez l'email: admin@example.com
Entrez le mot de passe: ********

=== TEST D'AUTHENTIFICATION ===
Authentification en cours...

✅ Authentification réussie!
Token JWT généré: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
Expiration: 2024-01-16 14:30:25
Rôle: ADMIN
Permissions: [READ, WRITE, DELETE, ADMIN]

Votre choix: 4

=== GESTION DES UTILISATEURS ===
1. Créer un utilisateur
2. Lister les utilisateurs
3. Modifier un utilisateur
4. Supprimer un utilisateur
Votre choix: 1

Entrez le nom: Jean Dupont
Entrez l'email: jean.dupont@email.com
Entrez le mot de passe: ********
Entrez le rôle (USER/ADMIN/MODERATOR): USER

=== CRÉATION D'UTILISATEUR ===
Validation des données...
Vérification de l'unicité de l'email...
Hachage du mot de passe...
Utilisateur créé avec succès!

ID: USER001
Nom: Jean Dupont
Email: jean.dupont@email.com
Rôle: USER
Date de création: 2024-01-15 14:25:30

Votre choix: 2

=== LISTE DES UTILISATEURS ===
Utilisateurs trouvés: 3

1. admin@example.com
   - Nom: Administrateur
   - Rôle: ADMIN
   - Créé le: 2024-01-01 10:00:00
   - Dernière connexion: 2024-01-15 14:20:15

2. jean.dupont@email.com
   - Nom: Jean Dupont
   - Rôle: USER
   - Créé le: 2024-01-15 14:25:30
   - Dernière connexion: Jamais

3. marie.martin@email.com
   - Nom: Marie Martin
   - Rôle: MODERATOR
   - Créé le: 2024-01-10 09:15:45
   - Dernière connexion: 2024-01-15 13:45:20

Votre choix: 5

=== MONITORING DE SÉCURITÉ ===
Sécurité:
- Tentatives de connexion: 47
- Connexions réussies: 42
- Connexions échouées: 5
- Taux de succès: 89.4%

Tentatives suspectes:
- IP 192.168.1.100: 3 tentatives échouées
- IP 10.0.0.50: 2 tentatives échouées

Tokens JWT:
- Tokens actifs: 8
- Tokens expirés: 23
- Tokens révoqués: 2

Permissions:
- Requêtes autorisées: 1,247
- Requêtes refusées: 15
- Taux d'autorisation: 98.8%

Votre choix: 6

=== STATISTIQUES DE L'API ===
Performance:
- Requêtes totales: 1,262
- Temps de réponse moyen: 45ms
- Requêtes par seconde: 12.5
- Taux d'erreur: 1.2%

Endpoints les plus utilisés:
1. GET /api/users: 456 requêtes
2. POST /api/auth/login: 234 requêtes
3. GET /api/users/{id}: 189 requêtes
4. POST /api/users: 123 requêtes
5. PUT /api/users/{id}: 98 requêtes

Codes de statut:
- 200 OK: 1,156 (91.6%)
- 201 Created: 123 (9.7%)
- 400 Bad Request: 8 (0.6%)
- 401 Unauthorized: 5 (0.4%)
- 403 Forbidden: 2 (0.2%)
- 404 Not Found: 3 (0.2%)
- 500 Internal Server Error: 1 (0.1%)
```

## 🧪 Tests à Valider

- [ ] Authentification JWT fonctionnelle
- [ ] Validation des données d'entrée
- [ ] Gestion des rôles et permissions
- [ ] Endpoints REST corrects
- [ ] Sérialisation JSON
- [ ] Gestion des erreurs
- [ ] Monitoring de sécurité

## 💡 Conseils

- Utilisez des annotations pour simplifier le code
- Implémentez une validation robuste des données
- Gérez proprement les tokens JWT
- Testez tous les endpoints avec différents rôles
- Surveillez les tentatives d'intrusion

## 🎯 Fichiers à Créer

- `solutions/Utilisateur.java`
- `solutions/JwtUtil.java`
- `solutions/AuthentificationService.java`
- `solutions/AutorisationService.java`
- `solutions/ApiController.java`
- `solutions/ServeurApi.java`

**Bon courage !** 🚀