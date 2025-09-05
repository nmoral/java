# 🗄️ Guide des Bases de Données

## 📋 Vue d'Ensemble

Ce guide vous explique comment utiliser les bases de données dans le programme d'entraînement Java. Vous apprendrez JDBC, les DAOs, et les bonnes pratiques de persistance.

## 🚀 Démarrage Rapide

### 1. Démarrer les Bases de Données
```bash
# Démarrer MySQL et PostgreSQL
./start-databases.sh
```

### 2. Vérifier la Connexion
```bash
# Tester un défi avec base de données
./run-tests.sh 6 18
```

## 🗄️ Bases de Données Disponibles

### MySQL
- **Port** : 3306
- **Database** : training_db
- **User** : training_user
- **Password** : training_password
- **Interface** : phpMyAdmin (http://localhost:8081)

### PostgreSQL
- **Port** : 5432
- **Database** : training_db
- **User** : training_user
- **Password** : training_password
- **Interface** : pgAdmin (http://localhost:8082)

## 📚 Concepts à Apprendre

### 1. JDBC (Java Database Connectivity)
- Connexion à la base de données
- Requêtes préparées (PreparedStatement)
- Gestion des résultats (ResultSet)
- Gestion des transactions

### 2. DAO Pattern (Data Access Object)
- Séparation de la logique métier et de l'accès aux données
- Interface DAO
- Implémentation JDBC
- Gestion des exceptions

### 3. Pool de Connexions
- HikariCP pour la performance
- Gestion des connexions
- Configuration optimale

## 🎯 Progression par Niveau

### Niveau 6 - Exceptions et Gestion d'Erreurs avec Base de Données
- **Défi 18** : Système de Gestion de Base de Données avec Exceptions
  - Connexion JDBC avec gestion d'erreurs
  - CRUD avec exceptions personnalisées
  - Gestion des ressources et transactions

### Niveau 9 - Programmation Avancée avec Persistance
- **Défi 27** : Système de Cache Distribué avec Persistance
  - Cache distribué (Redis)
  - Persistance avec JPA
  - Gestion des sessions et transactions

### Niveau 10 - Architecture et Production
- **Défi 28** : Microservices avec Communication et Load Balancing
  - Bases de données distribuées
  - Réplication et sharding
  - Monitoring des performances

- **Défi 29** : Système de Monitoring et Alertes Avancées
  - Métriques de base de données
  - Logs et alertes
  - Optimisation des requêtes

- **Défi 30** : Pipeline CI/CD avec Tests Automatisés
  - Tests de base de données automatisés
  - Migrations et déploiement
  - Backup et restauration

## 💡 Bonnes Pratiques

### 1. Gestion des Connexions
```java
// Utiliser try-with-resources
try (Connection conn = DriverManager.getConnection(url, user, password);
     PreparedStatement stmt = conn.prepareStatement(sql)) {
    // Code ici
} catch (SQLException e) {
    // Gestion des erreurs
}
```

### 2. Requêtes Préparées
```java
// Toujours utiliser PreparedStatement
String sql = "SELECT * FROM users WHERE id = ?";
PreparedStatement stmt = conn.prepareStatement(sql);
stmt.setInt(1, userId);
ResultSet rs = stmt.executeQuery();
```

### 3. Gestion des Transactions
```java
// Désactiver l'auto-commit
conn.setAutoCommit(false);
try {
    // Opérations de base de données
    conn.commit();
} catch (SQLException e) {
    conn.rollback();
    throw e;
}
```

## 🧪 Tests et Validation

### Tests Unitaires avec H2
```java
// Utiliser H2 en mémoire pour les tests
@BeforeEach
void setUp() {
    // Configuration H2
    // Création des tables
    // Insertion des données de test
}
```

### Validation de Qualité
```bash
# Vérifier la qualité du code
./quality-check.sh 6 18

# Analyser avec SonarQube
./quality-check.sh analyze
```

## 🔧 Configuration

### Fichier application.properties
```properties
# Configuration MySQL
mysql.url=jdbc:mysql://localhost:3306/training_db
mysql.username=training_user
mysql.password=training_password

# Configuration PostgreSQL
postgres.url=jdbc:postgresql://localhost:5432/training_db
postgres.username=training_user
postgres.password=training_password
```

### Pool de Connexions
```java
// Configuration HikariCP
HikariConfig config = new HikariConfig();
config.setJdbcUrl(url);
config.setUsername(username);
config.setPassword(password);
config.setMaximumPoolSize(10);
HikariDataSource dataSource = new HikariDataSource(config);
```

## 🎯 Objectifs d'Apprentissage

### Niveau 6
- [ ] Comprendre JDBC avec gestion d'erreurs
- [ ] Créer des connexions robustes
- [ ] Exécuter des requêtes avec exceptions personnalisées
- [ ] Gérer les ressources et transactions

### Niveau 9
- [ ] Implémenter le cache distribué
- [ ] Utiliser JPA pour la persistance
- [ ] Gérer les sessions et transactions avancées
- [ ] Optimiser les performances avec cache

### Niveau 10
- [ ] Gérer les bases de données distribuées
- [ ] Implémenter la réplication et le sharding
- [ ] Monitorer les performances
- [ ] Automatiser les tests et déploiements

## 🆘 Dépannage

### Problèmes Courants

1. **Connexion refusée**
   - Vérifiez que les bases de données sont démarrées
   - Vérifiez les ports (3306 pour MySQL, 5432 pour PostgreSQL)

2. **Erreur de driver**
   - Vérifiez que les dépendances sont dans le pom.xml
   - Vérifiez le classpath

3. **Erreur de requête**
   - Vérifiez la syntaxe SQL
   - Vérifiez les paramètres des requêtes préparées

### Commandes Utiles
```bash
# Voir les logs des bases de données
docker-compose -f docker-compose-databases.yml logs -f

# Redémarrer les bases de données
docker-compose -f docker-compose-databases.yml restart

# Accéder à MySQL
docker exec -it mysql-training mysql -u training_user -p training_db

# Accéder à PostgreSQL
docker exec -it postgres-training psql -U training_user -d training_db
```

**Bon apprentissage !** 🚀
