# 🎯 Défis Java pour Développeurs PHP

## 📋 Système de Défis Progressifs

Ce programme vous propose **40 défis progressifs** répartis sur **20 niveaux** conçus spécialement pour les développeurs PHP qui souhaitent apprendre Java. Chaque défi est un **problème concret** que vous devez résoudre, pas un exercice tout fait.

## 🎯 Objectif

Résoudre des problèmes réels de développeur en Java, en partant de vos connaissances PHP pour progresser naturellement vers les concepts avancés.

## 📚 Structure des Défis

### **Niveau 1 - Problèmes de Base** (3 défis)
- **Défi 1** : Calculatrice Simple
- **Défi 2** : Gestionnaire de Notes d'Étudiants  
- **Défi 3** : Jeu de Devinette

### **Niveau 2 - POO Basique** (3 défis)
- **Défi 4** : Gestionnaire de Comptes Bancaires
- **Défi 5** : Système de Gestion de Bibliothèque
- **Défi 6** : Système de Gestion d'Inventaire

### **Niveau 3 - Héritage et Polymorphisme** (3 défis)
- **Défi 7** : Système de Véhicules avec Héritage
- **Défi 8** : Système de Formes Géométriques
- **Défi 9** : Système de Gestion d'Animaux

### **Niveau 4 - Interfaces et Abstractions** (3 défis)
- **Défi 10** : Système de Paiement avec Interfaces
- **Défi 11** : Système de Notifications avec Interfaces
- **Défi 12** : Système de Plugins avec Interfaces

### **Niveau 5 - Collections et Génériques** (3 défis)
- **Défi 13** : Système de Gestion de Contacts avec Collections
- **Défi 14** : Système de Gestion de Commandes avec Génériques
- **Défi 15** : Système de Cache avec Collections Avancées

### **Niveau 6 - Exceptions et Gestion d'Erreurs** (3 défis)
- **Défi 16** : Système de Validation avec Exceptions Personnalisées
- **Défi 17** : Système de Gestion de Fichiers avec Gestion d'Erreurs
- **Défi 18** : Système de Gestion de Base de Données avec Exceptions

### **Niveau 7 - Streams et Lambdas** (3 défis)
- **Défi 19** : Système d'Analyse de Données avec Streams
- **Défi 20** : Système de Filtrage et Transformation avec Lambdas
- **Défi 21** : Système de Traitement de Fichiers avec Streams

### **Niveau 8 - Algorithmes Complexes** (2 défis)
- **Défi 23** : Système de Gestion de Graphes avec Algorithmes
- **Défi 24** : Système de Compression et Cryptographie

### **Niveau 9 - Programmation Avancée** (3 défis)
- **Défi 25** : Système de Chat en Temps Réel avec Multithreading
- **Défi 26** : API REST avec Authentification et Sécurité
- **Défi 27** : Système de Cache Distribué avec Persistance

### **Niveau 10 - Architecture et Production** (3 défis)
- **Défi 28** : Microservices avec Communication et Load Balancing
- **Défi 29** : Système de Monitoring et Alertes Avancées
- **Défi 30** : Pipeline CI/CD avec Tests Automatisés

### **Niveau 11 - Algorithmes de Tri et Recherche Avancés** (2 défis)
- **Défi 29** : Algorithmes de Tri Avancés (Radix Sort & Timsort)
- **Défi 30** : Algorithmes de Recherche Avancés

### **Niveau 12 - Algorithmes de Graphes Avancés** (2 défis)
- **Défi 31** : Algorithmes de Plus Courts Chemins Avancés
- **Défi 32** : Composantes Fortement Connexes (Tarjan & Kosaraju)

### **Niveau 13 - Algorithmes de Flot et Réseaux** (1 défi)
- **Défi 33** : Algorithmes de Flot Maximum (Ford-Fulkerson & Edmonds-Karp)

### **Niveau 14 - Algorithmes Géométriques** (1 défi)
- **Défi 34** : Algorithmes Géométriques (Enveloppe Convexe & Sweep Line)

### **Niveau 15 - Algorithmes de Chaînes de Caractères** (1 défi)
- **Défi 35** : Algorithmes de Recherche de Motifs (KMP, Boyer-Moore, Rabin-Karp)

### **Niveau 16 - Algorithmes de Compression Avancés** (1 défi)
- **Défi 36** : Algorithmes de Compression Avancés (BWT, LZ77, PPM, Arithmetic Coding)

### **Niveau 17 - Algorithmes de Machine Learning** (1 défi)
- **Défi 37** : Algorithmes de Machine Learning (K-Means, DBSCAN, Apriori, PageRank)

### **Niveau 18 - Algorithmes de Cryptographie Avancés** (1 défi)
- **Défi 38** : Algorithmes de Cryptographie Avancés

### **Niveau 19 - Algorithmes de Simulation et Monte Carlo** (1 défi)
- **Défi 39** : Algorithmes de Simulation et Monte Carlo

### **Niveau 20 - Algorithmes de Traitement d'Images** (1 défi)
- **Défi 40** : Algorithmes de Traitement d'Images

## 🚀 Comment Commencer

### 1. **Lire le Défi**
```bash
# Consultez le fichier de description
cat challenges/level1/CHALLENGE_01.md
```

### 2. **Créer Votre Solution**
```bash
# Créez votre solution dans le dossier solutions/
touch solutions/Calculatrice.java
```

### 3. **Tester Votre Solution**
```bash
# Utilisez le script de test
./run-tests.sh 1 1
```

### 4. **Valider et Passer au Suivant**
Une fois votre solution fonctionnelle, passez au défi suivant !

## 🛠️ Installation

### Prérequis
- Java 17 ou supérieur
- Maven 3.6 ou supérieur

### Installation Rapide
```bash
# Compiler le projet
mvn compile

# Tester un défi
./run-tests.sh
```

## 📁 Structure du Projet

```
java/
├── 📄 README.md                    # Ce fichier
├── 📄 CHALLENGES.md               # Vue d'ensemble des défis
├── 📄 pom.xml                     # Configuration Maven
├── 🔧 run-tests.sh                # Script de test
│
├── 📁 challenges/                 # Descriptions des défis
│   ├── 📁 level1/                 # Défis de base (3 défis)
│   ├── 📁 level2/                 # POO basique (3 défis)
│   ├── 📁 level3/                 # Héritage et polymorphisme (3 défis)
│   ├── 📁 level4/                 # Interfaces et abstractions (3 défis)
│   ├── 📁 level5/                 # Collections et génériques (3 défis)
│   ├── 📁 level6/                 # Exceptions et gestion d'erreurs (3 défis)
│   ├── 📁 level7/                 # Streams et lambdas (3 défis)
│   ├── 📁 level8/                 # Algorithmes complexes (2 défis)
│   ├── 📁 level9/                 # Programmation avancée (3 défis)
│   ├── 📁 level10/                # Architecture et production (3 défis)
│   ├── 📁 level11/                # Algorithmes de tri et recherche (2 défis)
│   ├── 📁 level12/                # Algorithmes de graphes (2 défis)
│   ├── 📁 level13/                # Algorithmes de flot et réseaux (1 défi)
│   ├── 📁 level14/                # Algorithmes géométriques (1 défi)
│   ├── 📁 level15/                # Algorithmes de chaînes (1 défi)
│   ├── 📁 level16/                # Algorithmes de compression (1 défi)
│   ├── 📁 level17/                # Algorithmes de ML (1 défi)
│   ├── 📁 level18/                # Algorithmes de cryptographie (1 défi)
│   ├── 📁 level19/                # Algorithmes de simulation (1 défi)
│   └── 📁 level20/                # Algorithmes de traitement d'images (1 défi)
│
└── 📁 solutions/                  # Vos solutions
    ├── 📄 Calculatrice.java       # Votre solution du défi 1
    ├── 📄 GestionnaireNotes.java  # Votre solution du défi 2
    └── ...                        # Autres solutions
```

## 🎯 Progression Recommandée

### **Semaines 1-2 : Niveau 1 - Bases du Langage**
- Défi 1 : Calculatrice (variables, conditions, boucles)
- Défi 2 : Gestionnaire de Notes (tableaux, méthodes)
- Défi 3 : Jeu de Devinette (algorithmes simples)

### **Semaines 3-4 : Niveau 2 - POO Basique**
- Défi 4 : Comptes Bancaires (classes, encapsulation)
- Défi 5 : Bibliothèque (relations entre objets)
- Défi 6 : Inventaire (méthodes statiques)

### **Semaines 5-6 : Niveau 3 - Héritage et Polymorphisme**
- Défi 7 : Véhicules (extends, super)
- Défi 8 : Formes Géométriques (classes abstraites)
- Défi 9 : Animaux (héritage multi-niveaux)

### **Semaines 7-8 : Niveau 4 - Interfaces et Abstractions**
- Défi 10 : Paiement (implements, contrats)
- Défi 11 : Notifications (interfaces fonctionnelles)
- Défi 12 : Plugins (extensibilité)

### **Semaines 9-10 : Niveau 5 - Collections et Génériques**
- Défi 13 : Contacts (List, Set, Map)
- Défi 14 : Commandes (Generics)
- Défi 15 : Cache (LinkedHashMap, TreeMap)

### **Semaines 11-12 : Niveau 6 - Exceptions et Gestion d'Erreurs**
- Défi 16 : Validation (try-catch)
- Défi 17 : Fichiers (try-with-resources)
- Défi 18 : Base de Données (gestion des ressources)

### **Semaines 13-14 : Niveau 7 - Streams et Lambdas**
- Défi 19 : Analyse de Données (opérations de stream)
- Défi 20 : Filtrage (interfaces fonctionnelles)
- Défi 21 : Traitement de Fichiers (streams sur fichiers)

### **Semaines 15-16 : Niveau 8 - Algorithmes Complexes**
- Défi 23 : Graphes (DFS, BFS, Dijkstra)
- Défi 24 : Compression et Cryptographie (Huffman, AES, RSA)

### **Semaines 17-19 : Niveau 9 - Programmation Avancée**
- Défi 25 : Chat Temps Réel (Threads, WebSocket)
- Défi 26 : API REST (JWT, validation)
- Défi 27 : Cache Distribué (Redis, JPA)

### **Semaines 20-22 : Niveau 10 - Architecture et Production**
- Défi 28 : Microservices (architecture distribuée)
- Défi 29 : Monitoring (métriques, logs, alertes)
- Défi 30 : CI/CD (tests, build, déploiement)

### **Semaines 23-40 : Niveaux 11-20 - Algorithmes Spécialisés**
- **Niveaux 11-15** : Algorithmes complexes (tri, graphes, géométrie, chaînes)
- **Niveaux 16-20** : Algorithmes spécialisés (compression, ML, crypto, simulation, images)

## 🔄 Comparaisons PHP vs Java

### Variables
```php
// PHP
$nom = "Jean";
$age = 25;
```

```java
// Java
String nom = "Jean";
int age = 25;
```

### Classes
```php
// PHP
class Person {
    public $nom;
    private $age;
    
    public function __construct($nom, $age) {
        $this->nom = $nom;
        $this->age = $age;
    }
}
```

```java
// Java
public class Person {
    private String nom;
    private int age;
    
    public Person(String nom, int age) {
        this.nom = nom;
        this.age = age;
    }
}
```

### Bases de Données
```php
// PHP avec PDO
$pdo = new PDO($dsn, $username, $password);
$stmt = $pdo->prepare("SELECT * FROM users WHERE id = ?");
$stmt->execute([$id]);
$user = $stmt->fetch();
```

```java
// Java avec JDBC
Connection conn = DriverManager.getConnection(url, username, password);
PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE id = ?");
stmt.setInt(1, id);
ResultSet rs = stmt.executeQuery();
```

## 🧪 Système de Test

### Test d'un Défi Spécifique
```bash
# Tester le défi 1 du niveau 1
./run-tests.sh 1 1

# Tester le défi 4 du niveau 2
./run-tests.sh 2 4

# Tester le défi 10 du niveau 4
./run-tests.sh 4 10

# Tester le défi 40 du niveau 20
./run-tests.sh 20 40
```

### Test Interactif
```bash
# Menu interactif
./run-tests.sh
```

### Démarrage des Bases de Données
```bash
# Démarrer MySQL et PostgreSQL
./start-databases.sh

# Arrêter les bases de données
docker-compose -f docker-compose-databases.yml down
```

## 💡 Conseils d'Apprentissage

1. **Lisez attentivement** chaque défi avant de commencer
2. **Planifiez votre solution** avant de coder
3. **Testez régulièrement** votre code
4. **Comparez avec PHP** pour comprendre les différences
5. **Demandez de l'aide** si vous êtes bloqué

## 🎯 Objectifs d'Apprentissage

### Niveau 1-5 (Bases)
- [ ] Maîtriser la syntaxe Java de base
- [ ] Comprendre les types et variables
- [ ] Créer des classes simples
- [ ] Utiliser les collections de base
- [ ] Maîtriser l'héritage et les interfaces
- [ ] Utiliser des design patterns

### Niveau 6-10 (Intermédiaire)
- [ ] Gérer les exceptions et erreurs
- [ ] Utiliser les streams et lambdas
- [ ] Implémenter des algorithmes complexes
- [ ] Créer des applications multithread
- [ ] Développer des APIs REST
- [ ] Gérer l'architecture et la production

### Niveau 11-20 (Avancé)
- [ ] Maîtriser les algorithmes de tri et recherche avancés
- [ ] Implémenter des algorithmes de graphes complexes
- [ ] Utiliser des algorithmes géométriques
- [ ] Traiter des chaînes de caractères avec des algorithmes spécialisés
- [ ] Implémenter des algorithmes de compression
- [ ] Utiliser des algorithmes de machine learning
- [ ] Maîtriser la cryptographie avancée
- [ ] Implémenter des simulations Monte Carlo
- [ ] Traiter des images avec des algorithmes spécialisés

## 🛠️ Outils Recommandés

### IDE
- **IntelliJ IDEA** (Community Edition gratuite)
- **VS Code** avec extension Java
- **Eclipse** (gratuit)

### Documentation
- [Documentation Java officielle](https://docs.oracle.com/en/java/)
- [Tutoriel Java Oracle](https://docs.oracle.com/javase/tutorial/)

## 🎉 Félicitations !

Une fois que vous aurez terminé tous les 40 défis, vous serez capable de :
- Développer des applications Java complètes et complexes
- Comprendre les différences entre PHP et Java
- Utiliser les outils et frameworks Java modernes
- Appliquer les bonnes pratiques de développement Java
- Implémenter des algorithmes avancés et spécialisés
- Gérer l'architecture et la production d'applications Java
- Maîtriser les concepts de programmation avancés (multithreading, streams, etc.)
- Résoudre des problèmes complexes de développement logiciel

**Bon courage et bon apprentissage !** 🚀
