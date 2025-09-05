# 🎯 Défi 11 : Système de Notifications avec Interfaces

## 📝 Description du Problème

Vous devez créer un système de notifications utilisant des interfaces pour gérer différents types de notifications (email, SMS, push, webhook). Le système doit être flexible et permettre d'ajouter facilement de nouveaux canaux de notification.

## 🎯 Objectifs d'Apprentissage

- Maîtriser les interfaces fonctionnelles
- Comprendre les interfaces avec méthodes par défaut
- Implémenter des patterns de design
- Gérer des systèmes de notification
- Utiliser le polymorphisme avancé

## 📋 Spécifications

### Interfaces à Créer

1. **Interface `Notification`** :
   - Méthodes : envoyer(), verifierStatut(), obtenirPrix()
   - Méthode par défaut : formaterMessage()

2. **Interface `Priorisable`** :
   - Méthodes : definirPriorite(), obtenirPriorite()
   - Constantes : URGENT, NORMAL, BASSE

3. **Interface `Traçable`** :
   - Méthodes : enregistrerLog(), obtenirHistorique()

4. **Interface fonctionnelle `FiltreNotification`** :
   - Méthode : filtrer(String message, String destinataire)

### Classes à Créer

1. **Classe `EmailNotification` (implémente Notification, Priorisable, Traçable)** :
   - Attributs : destinataire, sujet, contenu, serveurSMTP
   - Implémentation des méthodes d'interface
   - Méthodes spécifiques : verifierEmail(), joindreFichier()

2. **Classe `SMSNotification` (implémente Notification, Priorisable)** :
   - Attributs : numero, message, operateur
   - Implémentation des méthodes d'interface
   - Méthodes spécifiques : verifierNumero(), calculerCout()

3. **Classe `PushNotification` (implémente Notification, Traçable)** :
   - Attributs : deviceToken, titre, corps, icone
   - Implémentation des méthodes d'interface
   - Méthodes spécifiques : verifierToken(), personnaliser()

4. **Classe `WebhookNotification` (implémente Notification, Traçable)** :
   - Attributs : url, payload, headers, timeout
   - Implémentation des méthodes d'interface
   - Méthodes spécifiques : verifierURL(), configurerTimeout()

5. **Classe `GestionnaireNotifications`** :
   - Gérer la collection de notifications
   - Menu interactif pour les opérations
   - Utilisation des interfaces fonctionnelles

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE NOTIFICATIONS ===
   1. Envoyer un email
   2. Envoyer un SMS
   3. Envoyer une notification push
   4. Envoyer un webhook
   5. Afficher l'historique
   6. Filtrer les notifications
   7. Statistiques par type
   8. Gestion des priorités
   9. Quitter
   ```

2. **Gestion des notifications** :
   - Envoi avec vérification de statut
   - Gestion des priorités
   - Traçabilité des envois
   - Filtrage des messages

## 🔧 Contraintes Techniques

- Utiliser des interfaces fonctionnelles
- Implémenter des méthodes par défaut
- Gérer des constantes dans les interfaces
- Utiliser le polymorphisme avec les interfaces
- Code modulaire et extensible

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE NOTIFICATIONS ===
1. Envoyer un email
2. Envoyer un SMS
3. Envoyer une notification push
4. Envoyer un webhook
5. Afficher l'historique
6. Filtrer les notifications
7. Statistiques par type
8. Gestion des priorités
9. Quitter
Votre choix: 1

Entrez le destinataire: user@example.com
Entrez le sujet: Notification importante
Entrez le contenu: Votre commande a été expédiée
Entrez la priorité (1=URGENT, 2=NORMAL, 3=BASSE): 1

=== ENVOI D'EMAIL ===
Vérification de l'email...
Chiffrement du message...
Email envoyé avec succès!
Prix: 0.02€
Statut: LIVRÉ
Priorité: URGENT

Votre choix: 2
Entrez le numéro: +33123456789
Entrez le message: Votre code de vérification: 123456
Entrez la priorité (1=URGENT, 2=NORMAL, 3=BASSE): 2

=== ENVOI DE SMS ===
Vérification du numéro...
SMS envoyé avec succès!
Prix: 0.05€
Statut: LIVRÉ
Priorité: NORMAL

Votre choix: 6
Entrez le message à filtrer: Commande expédiée
Entrez le destinataire: user@example.com

=== FILTRAGE DES NOTIFICATIONS ===
Message filtré: "Commande expédiée"
Destinataire: user@example.com
Filtre appliqué: Message autorisé
Raison: Contenu approprié

Votre choix: 7

=== STATISTIQUES PAR TYPE ===
Emails: 15 envoyés - Coût total: 0.30€
SMS: 8 envoyés - Coût total: 0.40€
Push: 25 envoyés - Coût total: 0.00€
Webhooks: 3 envoyés - Coût total: 0.00€

Total: 51 notifications - Coût total: 0.70€

Répartition par priorité:
- URGENT: 12 (23.5%)
- NORMAL: 35 (68.6%)
- BASSE: 4 (7.9%)
```

## 🧪 Tests à Valider

- [ ] Implémentation des interfaces fonctionnelles
- [ ] Utilisation des méthodes par défaut
- [ ] Gestion des constantes dans les interfaces
- [ ] Implémentation de plusieurs interfaces
- [ ] Envoi de notifications avec statut
- [ ] Gestion des priorités
- [ ] Traçabilité et historique

## 💡 Conseils

- Utilisez des interfaces fonctionnelles pour les filtres
- Implémentez des méthodes par défaut pour les fonctionnalités communes
- Gérer les constantes dans les interfaces
- Utilisez le polymorphisme pour traiter tous les types uniformément
- Testez chaque type de notification séparément

## 🎯 Fichiers à Créer

- `solutions/Notification.java`
- `solutions/Priorisable.java`
- `solutions/Traçable.java`
- `solutions/FiltreNotification.java`
- `solutions/EmailNotification.java`
- `solutions/SMSNotification.java`
- `solutions/PushNotification.java`
- `solutions/WebhookNotification.java`
- `solutions/GestionnaireNotifications.java`

**Bon courage !** 🚀
