# 🎯 Défi 6 : Système de Gestion d'Inventaire

## 📝 Description du Problème

Vous devez créer un système de gestion d'inventaire pour un magasin. Le système doit gérer les produits, les stocks, les commandes et générer des rapports de vente et d'inventaire.

## 🎯 Objectifs d'Apprentissage

- Créer des classes avec des méthodes complexes
- Implémenter des calculs et statistiques
- Gérer des collections d'objets
- Utiliser des méthodes statiques
- Comprendre la gestion d'état des objets

## 📋 Spécifications

### Classes à Créer

1. **Classe `Produit`** :
   - Attributs : code, nom, prix, stock, catégorie
   - Méthodes : vendre, réapprovisionner, calculer valeur stock

2. **Classe `Commande`** :
   - Attributs : numéro, date, produits, quantités, total
   - Méthodes : ajouter produit, calculer total, finaliser

3. **Classe `Inventaire`** :
   - Gérer la collection de produits
   - Menu interactif pour les opérations
   - Génération de rapports

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE GESTION D'INVENTAIRE ===
   1. Ajouter un produit
   2. Consulter un produit
   3. Vendre un produit
   4. Réapprovisionner un produit
   5. Créer une commande
   6. Afficher l'inventaire complet
   7. Produits en rupture de stock
   8. Rapport de vente
   9. Statistiques financières
   10. Quitter
   ```

2. **Gestion des stocks** :
   - Seuil de réapprovisionnement : 5 unités
   - Alertes de rupture de stock
   - Calcul de la valeur totale de l'inventaire
   - Historique des ventes

## 🔧 Contraintes Techniques

- Utiliser des méthodes statiques pour les calculs
- Gérer les erreurs (stock insuffisant)
- Calculer automatiquement les totaux
- Générer des rapports formatés
- Code modulaire avec validation des données

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE GESTION D'INVENTAIRE ===
1. Ajouter un produit
2. Consulter un produit
3. Vendre un produit
4. Réapprovisionner un produit
5. Créer une commande
6. Afficher l'inventaire complet
7. Produits en rupture de stock
8. Rapport de vente
9. Statistiques financières
10. Quitter
Votre choix: 1

Entrez le code produit: PROD001
Entrez le nom: "Ordinateur Portable"
Entrez le prix: 899.99
Entrez le stock initial: 10
Entrez la catégorie: "Informatique"
Produit ajouté avec succès!

Votre choix: 3
Entrez le code produit: PROD001
Entrez la quantité à vendre: 2
Vente effectuée avec succès!
Stock restant: 8
Montant de la vente: 1799.98€

Votre choix: 7

=== PRODUITS EN RUPTURE DE STOCK ===
Aucun produit en rupture de stock.

=== PRODUITS À RÉAPPROVISIONNER ===
PROD002 - "Souris Sans Fil" - Stock: 3 (seuil: 5)
PROD003 - "Clavier Mécanique" - Stock: 2 (seuil: 5)

Votre choix: 9

=== STATISTIQUES FINANCIÈRES ===
Valeur totale de l'inventaire: 15,450.50€
Nombre total de produits: 25
Produits en stock: 23
Produits en rupture: 0
Produits à réapprovisionner: 2
Chiffre d'affaires du jour: 2,350.75€
```

## 🧪 Tests à Valider

- [ ] Ajout de produits avec validation
- [ ] Vente avec vérification du stock
- [ ] Réapprovisionnement avec mise à jour
- [ ] Création de commandes multiples
- [ ] Calcul correct des totaux et statistiques
- [ ] Gestion des ruptures de stock
- [ ] Génération de rapports formatés

## 💡 Conseils

- Utilisez des méthodes statiques pour les calculs communs
- Implémentez des validations robustes
- Gérez les cas d'erreur avec des messages clairs
- Créez des méthodes de formatage pour les rapports
- Organisez le code en modules logiques

## 🎯 Fichiers à Créer

- `solutions/Produit.java`
- `solutions/Commande.java`
- `solutions/Inventaire.java`

**Bon courage !** 🚀
