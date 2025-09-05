# 🎯 Défi 14 : Système de Gestion de Commandes avec Génériques

## 📝 Description du Problème

Vous devez créer un système de gestion de commandes utilisant les génériques Java. Le système doit gérer des produits, des commandes et des clients avec une approche générique et type-safe.

## 🎯 Objectifs d'Apprentissage

- Maîtriser les génériques (Generics) en Java
- Comprendre les wildcards (? extends, ? super)
- Utiliser les génériques avec les collections
- Implémenter des classes génériques
- Gérer la sécurité des types à la compilation

## 📋 Spécifications

### Classes à Créer

1. **Classe générique `Repository<T>`** :
   - Attributs : items (Map<String, T>)
   - Méthodes : ajouter(), supprimer(), rechercher(), lister()

2. **Classe générique `Service<T>`** :
   - Attributs : repository (Repository<T>)
   - Méthodes : creer(), modifier(), supprimer(), lister()

3. **Classe `Produit`** :
   - Attributs : id, nom, prix, stock, categorie
   - Implémentation de `Comparable<Produit>`

4. **Classe `Client`** :
   - Attributs : id, nom, email, adresse, commandes
   - Méthodes : ajouterCommande(), obtenirCommandes()

5. **Classe générique `Commande<T>`** :
   - Attributs : id, client, items (List<T>), date, total
   - Méthodes : ajouterItem(), calculerTotal(), valider()

6. **Classe `GestionnaireCommandes`** :
   - Utiliser les services génériques
   - Menu interactif pour les opérations
   - Gestion des relations entre entités

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE GESTION DE COMMANDES ===
   1. Gérer les produits
   2. Gérer les clients
   3. Créer une commande
   4. Afficher les commandes
   5. Rechercher des commandes
   6. Statistiques des ventes
   7. Gestion des stocks
   8. Rapports génériques
   9. Quitter
   ```

2. **Gestion générique** :
   - Utilisation des génériques pour la réutilisabilité
   - Wildcards pour la flexibilité
   - Type safety à la compilation
   - Gestion des relations entre entités

## 🔧 Contraintes Techniques

- Utiliser les génériques pour toutes les collections
- Implémenter des classes génériques réutilisables
- Utiliser les wildcards appropriés
- Gérer la sécurité des types
- Code modulaire avec séparation des responsabilités

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE GESTION DE COMMANDES ===
1. Gérer les produits
2. Gérer les clients
3. Créer une commande
4. Afficher les commandes
5. Rechercher des commandes
6. Statistiques des ventes
7. Gestion des stocks
8. Rapports génériques
9. Quitter
Votre choix: 1

=== GESTION DES PRODUITS ===
1. Ajouter un produit
2. Modifier un produit
3. Supprimer un produit
4. Lister les produits
Votre choix: 1

Entrez l'ID: PROD001
Entrez le nom: Ordinateur Portable
Entrez le prix: 899.99
Entrez le stock: 10
Entrez la catégorie: Informatique
Produit ajouté avec succès!

Votre choix: 2
Entrez l'ID du client: CLIENT001
Entrez le nom: Marie Martin
Entrez l'email: marie.martin@email.com
Entrez l'adresse: 123 Rue de la Paix, Paris
Client ajouté avec succès!

Votre choix: 3
Entrez l'ID du client: CLIENT001
Entrez l'ID du produit: PROD001
Entrez la quantité: 1

=== CRÉATION DE COMMANDE ===
Commande créée avec succès!
ID: CMD001
Client: Marie Martin
Produits: 1x Ordinateur Portable (899.99€)
Total: 899.99€

Votre choix: 6

=== STATISTIQUES DES VENTES ===
Nombre total de commandes: 1
Chiffre d'affaires total: 899.99€
Produits vendus: 1
Clients actifs: 1

Top produits:
1. Ordinateur Portable - 1 vente(s) - 899.99€

Votre choix: 8

=== RAPPORTS GÉNÉRIQUES ===
Rapport des produits:
- Total: 1 produit(s)
- Valeur totale: 8,999.90€
- Stock total: 10 unités

Rapport des clients:
- Total: 1 client(s)
- Clients avec commandes: 1
- Clients sans commandes: 0

Rapport des commandes:
- Total: 1 commande(s)
- Valeur moyenne: 899.99€
- Commande la plus récente: CMD001
```

## 🧪 Tests à Valider

- [ ] Utilisation des génériques avec les collections
- [ ] Implémentation de classes génériques
- [ ] Utilisation des wildcards
- [ ] Type safety à la compilation
- [ ] Gestion des relations entre entités
- [ ] Rapports génériques
- [ ] Gestion des stocks et commandes

## 💡 Conseils

- Utilisez les génériques pour la réutilisabilité
- Implémentez des classes génériques pour les services communs
- Utilisez les wildcards pour la flexibilité
- Gérez la sécurité des types à la compilation
- Testez avec différents types d'entités

## 🎯 Fichiers à Créer

- `solutions/Repository.java`
- `solutions/Service.java`
- `solutions/Produit.java`
- `solutions/Client.java`
- `solutions/Commande.java`
- `solutions/GestionnaireCommandes.java`

**Bon courage !** 🚀
