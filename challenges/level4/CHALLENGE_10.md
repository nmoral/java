# 🎯 Défi 10 : Système de Paiement avec Interfaces

## 📝 Description du Problème

Vous devez créer un système de paiement utilisant des interfaces pour gérer différents modes de paiement (carte bancaire, PayPal, Bitcoin). Le système doit être extensible et permettre d'ajouter facilement de nouveaux modes de paiement.

## 🎯 Objectifs d'Apprentissage

- Comprendre et implémenter des interfaces en Java
- Utiliser le mot-clé `interface` et `implements`
- Comprendre le polymorphisme avec les interfaces
- Créer des systèmes extensibles
- Gérer les contrats d'interface

## 📋 Spécifications

### Interfaces à Créer

1. **Interface `ModePaiement`** :
   - Méthodes : processerPaiement(), verifierSolde(), obtenirFrais()
   - Méthode par défaut : afficherInfo()

2. **Interface `Securise`** :
   - Méthodes : chiffrer(), dechiffrer(), verifierSecurite()

3. **Interface `Remboursable`** :
   - Méthodes : demanderRemboursement(), calculerRemboursement()

### Classes à Créer

1. **Classe `CarteBancaire` (implémente ModePaiement, Securise)** :
   - Attributs : numero, cvv, dateExpiration, solde
   - Implémentation des méthodes d'interface
   - Méthodes spécifiques : verifierCarte()

2. **Classe `PayPal` (implémente ModePaiement, Remboursable)** :
   - Attributs : email, motDePasse, solde
   - Implémentation des méthodes d'interface
   - Méthodes spécifiques : connecterPayPal()

3. **Classe `Bitcoin` (implémente ModePaiement, Securise)** :
   - Attributs : adresse, clePrivee, montant
   - Implémentation des méthodes d'interface
   - Méthodes spécifiques : minerBitcoin()

4. **Classe `GestionnairePaiement`** :
   - Gérer la collection de modes de paiement
   - Menu interactif pour les opérations
   - Utilisation du polymorphisme avec les interfaces

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE PAIEMENT ===
   1. Ajouter une carte bancaire
   2. Ajouter un compte PayPal
   3. Ajouter un portefeuille Bitcoin
   4. Effectuer un paiement
   5. Vérifier le solde
   6. Demander un remboursement
   7. Afficher tous les modes de paiement
   8. Statistiques de sécurité
   9. Quitter
   ```

2. **Gestion des paiements** :
   - Processus de paiement uniforme
   - Calcul des frais par mode
   - Vérification de sécurité
   - Gestion des remboursements

## 🔧 Contraintes Techniques

- Utiliser des interfaces pour définir les contrats
- Implémenter plusieurs interfaces par classe
- Utiliser des méthodes par défaut dans les interfaces
- Gérer le polymorphisme avec les interfaces
- Code modulaire et extensible

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE PAIEMENT ===
1. Ajouter une carte bancaire
2. Ajouter un compte PayPal
3. Ajouter un portefeuille Bitcoin
4. Effectuer un paiement
5. Vérifier le solde
6. Demander un remboursement
7. Afficher tous les modes de paiement
8. Statistiques de sécurité
9. Quitter
Votre choix: 1

Entrez le numéro de carte: 1234-5678-9012-3456
Entrez le CVV: 123
Entrez la date d'expiration: 12/25
Entrez le solde: 1000.0
Carte bancaire ajoutée avec succès!

Votre choix: 2
Entrez l'email: user@paypal.com
Entrez le mot de passe: ********
Entrez le solde: 500.0
Compte PayPal ajouté avec succès!

Votre choix: 4
Sélectionnez le mode de paiement:
1. Carte bancaire (1234-****-****-3456)
2. PayPal (user@paypal.com)
Votre choix: 1
Entrez le montant: 150.0

=== PROCESSUS DE PAIEMENT ===
Vérification de la carte...
Chiffrement des données...
Paiement de 150.0€ effectué avec succès!
Frais: 2.25€
Nouveau solde: 847.75€

Votre choix: 6
Sélectionnez le mode de paiement:
1. Carte bancaire (1234-****-****-3456)
2. PayPal (user@paypal.com)
Votre choix: 2
Entrez le montant à rembourser: 50.0

=== DEMANDE DE REMBOURSEMENT ===
Remboursement de 50.0€ demandé via PayPal
Traitement en cours...
Remboursement effectué avec succès!
Nouveau solde: 550.0€
```

## 🧪 Tests à Valider

- [ ] Implémentation correcte des interfaces
- [ ] Utilisation du polymorphisme avec les interfaces
- [ ] Méthodes par défaut dans les interfaces
- [ ] Implémentation de plusieurs interfaces
- [ ] Processus de paiement uniforme
- [ ] Gestion des frais et remboursements
- [ ] Vérification de sécurité

## 💡 Conseils

- Commencez par définir les interfaces
- Utilisez des méthodes par défaut pour les fonctionnalités communes
- Implémentez les interfaces dans les classes
- Utilisez le polymorphisme pour traiter tous les modes uniformément
- Testez chaque mode de paiement séparément

## 🎯 Fichiers à Créer

- `solutions/ModePaiement.java`
- `solutions/Securise.java`
- `solutions/Remboursable.java`
- `solutions/CarteBancaire.java`
- `solutions/PayPal.java`
- `solutions/Bitcoin.java`
- `solutions/GestionnairePaiement.java`

**Bon courage !** 🚀
