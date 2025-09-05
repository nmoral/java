# 🎯 Défi 29 : Système de Monitoring et Alertes Avancées

## 📝 Description du Problème

Vous devez créer un système de monitoring et d'alertes pour une application Java en production. Le système doit collecter des métriques, générer des logs structurés, détecter les anomalies et envoyer des alertes automatiques.

## 🎯 Objectifs d'Apprentissage

- Implémenter le monitoring d'applications
- Gérer les logs structurés
- Créer des systèmes d'alertes
- Analyser les métriques de performance
- Comprendre l'observabilité

## 📋 Spécifications

### Classes à Créer

1. **Classe `Metrique`** :
   - Attributs : nom, valeur, timestamp, tags, type
   - Méthodes : enregistrer(), obtenirValeur(), formater()

2. **Classe `CollecteurMetriques`** :
   - Collecte des métriques système
   - Méthodes : collecterCPU(), collecterMemoire(), collecterReseau()
   - Gestion des métriques personnalisées

3. **Classe `LoggerStructured`** :
   - Logs structurés en JSON
   - Méthodes : info(), warn(), error(), debug()
   - Gestion des niveaux de log

4. **Classe `DetecteurAnomalies`** :
   - Détection des anomalies
   - Méthodes : detecterAnomalie(), analyserTendance(), evaluerSeuil()
   - Algorithmes de détection

5. **Classe `SystemeAlertes`** :
   - Gestion des alertes
   - Méthodes : envoyerAlerte(), evaluerCondition(), notifier()
   - Intégration avec différents canaux

6. **Classe `DashboardMonitoring`** :
   - Interface de monitoring
   - Affichage des métriques
   - Gestion des alertes

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE MONITORING ET ALERTES ===
   1. Démarrer le monitoring
   2. Arrêter le monitoring
   3. Afficher les métriques
   4. Configurer les alertes
   5. Consulter les logs
   6. Analyser les anomalies
   7. Dashboard en temps réel
   8. Statistiques de monitoring
   9. Quitter
   ```

2. **Monitoring** :
   - Métriques système (CPU, mémoire, réseau)
   - Métriques applicatives (requêtes, erreurs, temps de réponse)
   - Logs structurés
   - Détection d'anomalies

## 🔧 Contraintes Techniques

- Utiliser des bibliothèques de monitoring
- Implémenter des logs structurés
- Gérer les métriques en temps réel
- Créer des alertes intelligentes
- Code modulaire avec séparation des responsabilités

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE MONITORING ET ALERTES ===
1. Démarrer le monitoring
2. Arrêter le monitoring
3. Afficher les métriques
4. Configurer les alertes
5. Consulter les logs
6. Analyser les anomalies
7. Dashboard en temps réel
8. Statistiques de monitoring
9. Quitter
Votre choix: 1

=== DÉMARRAGE DU MONITORING ===
Initialisation en cours...

🔧 Configuration des collecteurs...
✅ Collecteur CPU initialisé
✅ Collecteur mémoire initialisé
✅ Collecteur réseau initialisé
✅ Collecteur applicatif initialisé

🔧 Configuration des logs...
✅ Logger structuré initialisé
✅ Niveau de log: INFO
✅ Format: JSON

🔧 Configuration des alertes...
✅ Système d'alertes initialisé
✅ Canaux configurés: Email, Slack, Webhook

🔧 Configuration du dashboard...
✅ Dashboard initialisé
✅ Interface web: http://localhost:3000

Monitoring démarré avec succès!

Votre choix: 3

=== AFFICHAGE DES MÉTRIQUES ===
Métriques en temps réel:

🖥️ SYSTÈME:
- CPU: 23.5% (4 cœurs)
- Mémoire: 2.1GB/8GB (26.3%)
- Disque: 45.2GB/100GB (45.2%)
- Réseau: 1.2MB/s entrant, 0.8MB/s sortant

📊 APPLICATION:
- Requêtes actives: 47
- Requêtes par seconde: 156
- Temps de réponse moyen: 45ms
- Taux d'erreur: 0.8%
- Sessions actives: 234

🔍 BASE DE DONNÉES:
- Connexions actives: 8/20
- Requêtes par seconde: 89
- Temps de réponse moyen: 12ms
- Taille: 2.3GB

Votre choix: 4

=== CONFIGURATION DES ALERTES ===
Alertes configurées:

🚨 ALERTES CRITIQUES:
1. CPU > 90% pendant 5min
   - Statut: ✅ ACTIF
   - Seuil: 90%
   - Durée: 5min
   - Action: Email + Slack

2. Mémoire > 85% pendant 3min
   - Statut: ✅ ACTIF
   - Seuil: 85%
   - Durée: 3min
   - Action: Email + Webhook

3. Taux d'erreur > 5% pendant 2min
   - Statut: ✅ ACTIF
   - Seuil: 5%
   - Durée: 2min
   - Action: Email + Slack + Webhook

⚠️ ALERTES WARNING:
1. CPU > 70% pendant 10min
   - Statut: ✅ ACTIF
   - Seuil: 70%
   - Durée: 10min
   - Action: Email

2. Temps de réponse > 100ms pendant 5min
   - Statut: ✅ ACTIF
   - Seuil: 100ms
   - Durée: 5min
   - Action: Email

Votre choix: 5

=== CONSULTATION DES LOGS ===
Logs récents:

2024-01-15 14:35:20 INFO  {"service":"api","endpoint":"/users","method":"GET","status":200,"duration":45,"user_id":"USER001"}
2024-01-15 14:35:18 INFO  {"service":"api","endpoint":"/products","method":"POST","status":201,"duration":78,"user_id":"USER002"}
2024-01-15 14:35:15 WARN  {"service":"cache","message":"Cache miss for key: user:USER003","duration":2}
2024-01-15 14:35:12 ERROR {"service":"database","message":"Connection timeout","error":"SQLTimeoutException","duration":5000}
2024-01-15 14:35:10 INFO  {"service":"api","endpoint":"/orders","method":"GET","status":200,"duration":32,"user_id":"USER001"}

Filtres disponibles:
- Niveau: INFO, WARN, ERROR
- Service: api, cache, database
- Période: 1h, 24h, 7j

Votre choix: 6

=== ANALYSE DES ANOMALIES ===
Analyse en cours...

🔍 Détection d'anomalies:
- Période analysée: 24h
- Métriques analysées: 12
- Anomalies détectées: 3

📊 ANOMALIES DÉTECTÉES:

1. Pic de CPU à 14:20
   - Valeur: 95.2%
   - Seuil normal: < 70%
   - Durée: 8min
   - Cause probable: Requête intensive

2. Augmentation du temps de réponse à 16:45
   - Valeur: 156ms
   - Seuil normal: < 50ms
   - Durée: 15min
   - Cause probable: Surcharge de la base de données

3. Pic d'erreurs à 18:30
   - Valeur: 12.5%
   - Seuil normal: < 2%
   - Durée: 5min
   - Cause probable: Problème de connectivité

Votre choix: 7

=== DASHBOARD EN TEMPS RÉEL ===
Dashboard mis à jour toutes les 5 secondes...

┌─────────────────────────────────────────────────────────────┐
│                    DASHBOARD MONITORING                     │
├─────────────────────────────────────────────────────────────┤
│ 🖥️  CPU: 23.5%  ████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ │
│ 💾  Mémoire: 26.3%  ████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ │
│ 🌐  Réseau: 1.2MB/s  ████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ │
├─────────────────────────────────────────────────────────────┤
│ 📊  Requêtes: 156/s  ████████████████████████████████████ │
│ ⏱️  Temps réponse: 45ms  ████████████████████████████████ │
│ ❌  Taux erreur: 0.8%  ██████████████████████████████████ │
├─────────────────────────────────────────────────────────────┤
│ 🚨  Alertes actives: 0                                      │
│ ⚠️  Alertes warning: 1                                      │
│ ✅  Services: 4/4 OK                                        │
└─────────────────────────────────────────────────────────────┘

Votre choix: 8

=== STATISTIQUES DE MONITORING ===
Statistiques sur 24h:

📊 MÉTRIQUES:
- Métriques collectées: 1,247,856
- Logs générés: 45,678
- Alertes déclenchées: 12
- Anomalies détectées: 3

⏱️ PERFORMANCE:
- Temps de collecte moyen: 2ms
- Temps de traitement moyen: 5ms
- Latence des alertes: 15ms
- Disponibilité: 99.9%

💾 STOCKAGE:
- Taille des métriques: 2.3GB
- Taille des logs: 1.8GB
- Rétention: 30 jours
- Compression: 65%

🔍 ANALYSE:
- Anomalies détectées: 3
- Faux positifs: 1
- Précision: 66.7%
- Rappel: 100%
```

## 🧪 Tests à Valider

- [ ] Collecte des métriques fonctionnelle
- [ ] Logs structurés corrects
- [ ] Détection d'anomalies
- [ ] Système d'alertes opérationnel
- [ ] Dashboard en temps réel
- [ ] Gestion des seuils
- [ ] Performance du monitoring

## 💡 Conseils

- Utilisez des bibliothèques de monitoring éprouvées
- Implémentez des logs structurés
- Configurez des alertes intelligentes
- Testez la détection d'anomalies
- Surveillez les performances du monitoring

## 🎯 Fichiers à Créer

- `solutions/Metrique.java`
- `solutions/CollecteurMetriques.java`
- `solutions/LoggerStructured.java`
- `solutions/DetecteurAnomalies.java`
- `solutions/SystemeAlertes.java`
- `solutions/DashboardMonitoring.java`

**Bon courage !** 🚀
