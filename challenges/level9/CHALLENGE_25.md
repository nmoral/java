# 🎯 Défi 25 : Système de Chat en Temps Réel avec Multithreading

## 📝 Description du Problème

Vous devez créer un système de chat en temps réel utilisant la programmation concurrente et les WebSockets. Le système doit gérer plusieurs utilisateurs simultanément, avec des salles de chat, des messages privés et une gestion des connexions robuste.

## 🎯 Objectifs d'Apprentissage

- Maîtriser la programmation concurrente en Java
- Utiliser les Threads et ExecutorService
- Implémenter la synchronisation avec synchronized et locks
- Gérer les WebSockets pour la communication temps réel
- Comprendre les patterns de concurrence

## 📋 Spécifications

### Classes à Créer

1. **Classe `UtilisateurChat`** :
   - Attributs : id, nom, socket, salleActuelle, statut
   - Méthodes : envoyerMessage(), recevoirMessage(), changerSalle()

2. **Classe `SalleChat`** :
   - Attributs : nom, utilisateurs, messages, capacite
   - Méthodes : ajouterUtilisateur(), supprimerUtilisateur(), diffuserMessage()

3. **Classe `ServeurChat`** :
   - Gestion des connexions WebSocket
   - Thread pool pour les connexions
   - Synchronisation des accès aux données

4. **Classe `GestionnaireConnexions`** :
   - Gestion des connexions entrantes
   - Nettoyage des connexions fermées
   - Monitoring des performances

5. **Classe `MessageChat`** :
   - Attributs : expediteur, contenu, timestamp, type, salle
   - Méthodes : serialiser(), deserialiser(), valider()

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SERVEUR DE CHAT TEMPS RÉEL ===
   1. Démarrer le serveur
   2. Arrêter le serveur
   3. Créer une salle
   4. Lister les salles
   5. Lister les utilisateurs connectés
   6. Envoyer un message global
   7. Statistiques du serveur
   8. Monitoring des performances
   9. Quitter
   ```

2. **Fonctionnalités de chat** :
   - Connexion/déconnexion d'utilisateurs
   - Messages dans les salles publiques
   - Messages privés entre utilisateurs
   - Gestion des salles de chat
   - Statuts des utilisateurs (en ligne, occupé, absent)

## 🔧 Contraintes Techniques

- Utiliser ExecutorService pour la gestion des threads
- Implémenter la synchronisation avec synchronized
- Gérer les WebSockets pour la communication temps réel
- Gérer les exceptions de concurrence
- Code thread-safe avec gestion des race conditions

## 📝 Exemple d'Exécution

```
=== SERVEUR DE CHAT TEMPS RÉEL ===
1. Démarrer le serveur
2. Arrêter le serveur
3. Créer une salle
4. Lister les salles
5. Lister les utilisateurs connectés
6. Envoyer un message global
7. Statistiques du serveur
8. Monitoring des performances
9. Quitter
Votre choix: 1

Entrez le port du serveur: 8080
Entrez le nombre max de threads: 50

=== DÉMARRAGE DU SERVEUR ===
Serveur démarré sur le port 8080
Thread pool initialisé: 50 threads
WebSocket endpoint: /chat
Serveur prêt à accepter les connexions!

Votre choix: 3
Entrez le nom de la salle: Général
Entrez la capacité: 100
Salle "Général" créée avec succès!

Votre choix: 5

=== UTILISATEURS CONNECTÉS ===
Salle: Général
- Jean Dupont (ID: USER001) - En ligne
- Marie Martin (ID: USER002) - En ligne
- Pierre Durand (ID: USER003) - Occupé

Salle: Développement
- Sophie Leroy (ID: USER004) - En ligne
- Thomas Moreau (ID: USER005) - En ligne

Total: 5 utilisateurs connectés

Votre choix: 6
Entrez le message global: Bienvenue sur le serveur de chat!

=== MESSAGE GLOBAL ENVOYÉ ===
Message diffusé à tous les utilisateurs connectés
Destinataires: 5 utilisateurs
Salles concernées: Général, Développement
Temps de diffusion: 12ms

Votre choix: 7

=== STATISTIQUES DU SERVEUR ===
Serveur actif depuis: 2h 15min
Connexions totales: 47
Connexions actives: 5
Messages envoyés: 1,247
Salles créées: 3
Threads actifs: 8/50

Performance:
- Temps de réponse moyen: 15ms
- Messages par seconde: 12.3
- Utilisation CPU: 23%
- Utilisation mémoire: 145MB

Votre choix: 8

=== MONITORING DES PERFORMANCES ===
Threads:
- Threads actifs: 8
- Threads en attente: 2
- Threads terminés: 1,234
- Taille de la queue: 0

Connexions:
- Connexions ouvertes: 5
- Connexions fermées: 42
- Taux de reconnexion: 15%
- Temps de connexion moyen: 45min

Messages:
- Messages traités: 1,247
- Messages en erreur: 3
- Taux de succès: 99.8%
- Latence moyenne: 15ms
```

## 🧪 Tests à Valider

- [ ] Gestion des threads avec ExecutorService
- [ ] Synchronisation des accès aux données
- [ ] Gestion des WebSockets
- [ ] Gestion des connexions multiples
- [ ] Messages en temps réel
- [ ] Gestion des salles de chat
- [ ] Monitoring des performances

## 💡 Conseils

- Utilisez ExecutorService pour gérer les threads efficacement
- Implémentez la synchronisation pour éviter les race conditions
- Gérez proprement les connexions WebSocket
- Testez avec plusieurs clients simultanés
- Surveillez les performances et la mémoire

## 🎯 Fichiers à Créer

- `solutions/UtilisateurChat.java`
- `solutions/SalleChat.java`
- `solutions/ServeurChat.java`
- `solutions/GestionnaireConnexions.java`
- `solutions/MessageChat.java`

**Bon courage !** 🚀