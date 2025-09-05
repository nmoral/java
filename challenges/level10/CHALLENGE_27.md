# 🎯 Défi 22 : Application Web Complète avec Spring Boot

## 📝 Description du Problème

Créez une plateforme complète de gestion de projets d'équipe avec Spring Boot, incluant une API REST, une base de données, l'authentification, et une interface web. Le système doit gérer les utilisateurs, les projets, les tâches, et les communications d'équipe.

## 🎯 Objectifs d'Apprentissage

- Maîtriser Spring Boot et l'écosystème Spring
- Créer des APIs REST complètes et sécurisées
- Implémenter l'authentification et l'autorisation
- Gérer la persistance avec JPA/Hibernate
- Développer une architecture web moderne

## 📋 Spécifications

### Classes à Créer

1. **Entités JPA** :
   - `User` (utilisateurs avec rôles)
   - `Project` (projets d'équipe)
   - `Task` (tâches assignées)
   - `Team` (équipes de travail)
   - `Message` (communications)

2. **Repositories** :
   - `UserRepository`, `ProjectRepository`
   - `TaskRepository`, `TeamRepository`
   - `MessageRepository`

3. **Services** :
   - `UserService` (gestion des utilisateurs)
   - `ProjectService` (gestion des projets)
   - `TaskService` (gestion des tâches)
   - `AuthService` (authentification)

4. **Controllers REST** :
   - `AuthController` (login/logout)
   - `ProjectController` (CRUD projets)
   - `TaskController` (CRUD tâches)
   - `UserController` (gestion utilisateurs)

5. **Configuration** :
   - `SecurityConfig` (sécurité Spring)
   - `DatabaseConfig` (configuration BDD)
   - `WebConfig` (configuration web)

### Fonctionnalités Requises

1. **API REST** :
   ```
   POST /api/auth/login
   POST /api/auth/register
   GET /api/projects
   POST /api/projects
   GET /api/projects/{id}
   PUT /api/projects/{id}
   DELETE /api/projects/{id}
   GET /api/tasks
   POST /api/tasks
   GET /api/users
   ```

2. **Fonctionnalités avancées** :
   - Authentification JWT
   - Gestion des rôles (ADMIN, USER, MANAGER)
   - Validation des données
   - Gestion des erreurs
   - Documentation API (Swagger)

## 🔧 Contraintes Techniques

- Utiliser Spring Boot 3.x
- Implémenter la sécurité avec Spring Security
- Utiliser JPA/Hibernate pour la persistance
- Créer des APIs RESTful complètes
- Gérer les exceptions et les validations
- Tests unitaires et d'intégration

## 📝 Exemple d'Exécution

```
=== DÉMARRAGE DE L'APPLICATION ===
Spring Boot Application Starting...
Database connection: OK
Security configuration: OK
API endpoints: OK

Server running on: http://localhost:8080
Swagger UI: http://localhost:8080/swagger-ui.html

=== TEST DE L'API ===

1. Inscription d'un utilisateur:
POST /api/auth/register
{
  "username": "jean.dupont",
  "email": "jean.dupont@email.com",
  "password": "motdepasse123",
  "role": "USER"
}

Response: 201 Created
{
  "id": 1,
  "username": "jean.dupont",
  "email": "jean.dupont@email.com",
  "role": "USER",
  "createdAt": "2024-01-15T10:30:00Z"
}

2. Connexion:
POST /api/auth/login
{
  "username": "jean.dupont",
  "password": "motdepasse123"
}

Response: 200 OK
{
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "type": "Bearer",
  "expiresIn": 3600
}

3. Création d'un projet:
POST /api/projects
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
{
  "name": "Application Mobile",
  "description": "Développement d'une app mobile",
  "startDate": "2024-01-15",
  "endDate": "2024-06-15",
  "status": "PLANNING"
}

Response: 201 Created
{
  "id": 1,
  "name": "Application Mobile",
  "description": "Développement d'une app mobile",
  "startDate": "2024-01-15",
  "endDate": "2024-06-15",
  "status": "PLANNING",
  "createdBy": "jean.dupont",
  "createdAt": "2024-01-15T10:35:00Z"
}

4. Ajout d'une tâche:
POST /api/tasks
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
{
  "title": "Conception de l'interface",
  "description": "Créer les maquettes de l'interface utilisateur",
  "projectId": 1,
  "assignedTo": "marie.martin",
  "priority": "HIGH",
  "status": "TODO",
  "dueDate": "2024-02-01"
}

Response: 201 Created
{
  "id": 1,
  "title": "Conception de l'interface",
  "description": "Créer les maquettes de l'interface utilisateur",
  "projectId": 1,
  "assignedTo": "marie.martin",
  "priority": "HIGH",
  "status": "TODO",
  "dueDate": "2024-02-01",
  "createdAt": "2024-01-15T10:40:00Z"
}

5. Récupération des projets:
GET /api/projects
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...

Response: 200 OK
{
  "content": [
    {
      "id": 1,
      "name": "Application Mobile",
      "description": "Développement d'une app mobile",
      "status": "PLANNING",
      "taskCount": 5,
      "completedTasks": 0,
      "progress": 0.0
    }
  ],
  "totalElements": 1,
  "totalPages": 1,
  "size": 10,
  "number": 0
}

=== STATISTIQUES DE L'APPLICATION ===
Utilisateurs enregistrés: 25
Projets actifs: 8
Tâches totales: 147
Tâches terminées: 89 (60.5%)

Performance:
- Temps de réponse moyen: 45ms
- Requêtes par seconde: 150
- Taux d'erreur: 0.2%

Base de données:
- Connexions actives: 5/20
- Requêtes exécutées: 2,847
- Temps de requête moyen: 12ms
```

## 🧪 Tests à Valider

- [ ] Démarrage de l'application Spring Boot
- [ ] Connexion à la base de données
- [ ] Authentification et autorisation
- [ ] CRUD complet des entités
- [ ] Validation des données
- [ ] Gestion des erreurs
- [ ] Tests unitaires des services
- [ ] Tests d'intégration des controllers

## 💡 Conseils

- Commencez par configurer Spring Boot et la base de données
- Implémentez d'abord les entités et repositories
- Ajoutez la sécurité après avoir testé les APIs
- Utilisez Postman pour tester les endpoints
- Écrivez les tests au fur et à mesure

## 🎯 Fichiers à Créer

- `solutions/entity/User.java`
- `solutions/entity/Project.java`
- `solutions/entity/Task.java`
- `solutions/entity/Team.java`
- `solutions/entity/Message.java`
- `solutions/repository/UserRepository.java`
- `solutions/repository/ProjectRepository.java`
- `solutions/repository/TaskRepository.java`
- `solutions/service/UserService.java`
- `solutions/service/ProjectService.java`
- `solutions/service/TaskService.java`
- `solutions/service/AuthService.java`
- `solutions/controller/AuthController.java`
- `solutions/controller/ProjectController.java`
- `solutions/controller/TaskController.java`
- `solutions/controller/UserController.java`
- `solutions/config/SecurityConfig.java`
- `solutions/config/DatabaseConfig.java`
- `solutions/Application.java`

## 🔍 Concepts Spring Boot

### Architecture MVC
- Modèle: Entités JPA et Repositories
- Vue: APIs REST (JSON)
- Contrôleur: Controllers Spring

### Sécurité
- Spring Security pour l'authentification
- JWT pour les tokens
- Rôles et autorisations
- Protection CSRF

### Persistance
- JPA/Hibernate pour l'ORM
- Repositories Spring Data
- Transactions automatiques
- Migrations de base de données

### API REST
- Controllers avec annotations
- Validation des données
- Gestion des erreurs
- Documentation Swagger

### Applications
- Applications web d'entreprise
- APIs microservices
- Systèmes de gestion
- Plateformes collaboratives

**Bon courage !** 🚀
