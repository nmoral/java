# 🎯 Défi 5 : Système de Gestion de Bibliothèque

## 📝 Description du Problème

Vous devez créer un système de gestion de bibliothèque qui permet de gérer des livres, des membres et des emprunts. Le système doit suivre les emprunts, gérer les retours et calculer les pénalités de retard.

## 🎯 Objectifs d'Apprentissage

- Créer plusieurs classes avec des relations
- Implémenter des constructeurs avec paramètres
- Utiliser des méthodes avec retour de valeurs
- Gérer les dates et calculs temporels
- Comprendre les relations entre objets

## 📋 Spécifications

### Classes à Créer

1. **Classe `Livre`** :
   - Attributs : ISBN, titre, auteur, année, disponible
   - Méthodes : emprunter, retourner, afficher informations

2. **Classe `Membre`** :
   - Attributs : ID, nom, email, livres empruntés
   - Méthodes : emprunter livre, retourner livre, afficher profil

3. **Classe `Emprunt`** :
   - Attributs : livre, membre, date emprunt, date retour prévue
   - Méthodes : calculer pénalité, vérifier retard

4. **Classe `Bibliotheque`** :
   - Gérer la collection de livres et membres
   - Menu interactif pour les opérations
   - Suivi des emprunts

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE GESTION DE BIBLIOTHÈQUE ===
   1. Ajouter un livre
   2. Ajouter un membre
   3. Emprunter un livre
   4. Retourner un livre
   5. Consulter les livres disponibles
   6. Consulter les emprunts d'un membre
   7. Calculer les pénalités
   8. Statistiques de la bibliothèque
   9. Quitter
   ```

2. **Gestion des emprunts** :
   - Durée d'emprunt : 14 jours
   - Pénalité : 0.50€ par jour de retard
   - Limite : 3 livres par membre
   - Vérification de disponibilité

## 🔧 Contraintes Techniques

- Utiliser la classe `LocalDate` pour les dates
- Gérer les relations entre les objets
- Valider les données d'entrée
- Calculer automatiquement les pénalités
- Code modulaire avec séparation des responsabilités

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE GESTION DE BIBLIOTHÈQUE ===
1. Ajouter un livre
2. Ajouter un membre
3. Emprunter un livre
4. Retourner un livre
5. Consulter les livres disponibles
6. Consulter les emprunts d'un membre
7. Calculer les pénalités
8. Statistiques de la bibliothèque
9. Quitter
Votre choix: 1

Entrez l'ISBN: 978-2-123456-78-9
Entrez le titre: "Java pour les Nuls"
Entrez l'auteur: John Doe
Entrez l'année: 2023
Livre ajouté avec succès!

Votre choix: 2
Entrez le nom du membre: Marie Martin
Entrez l'email: marie.martin@email.com
Membre ajouté avec succès!
ID membre: MEM001

Votre choix: 3
Entrez l'ID du membre: MEM001
Entrez l'ISBN du livre: 978-2-123456-78-9
Emprunt effectué avec succès!
Date de retour prévue: 2024-01-15

Votre choix: 7
Entrez l'ID du membre: MEM001

=== PÉNALITÉS POUR MEM001 ===
Livre: "Java pour les Nuls"
Date de retour prévue: 2024-01-15
Date actuelle: 2024-01-18
Jours de retard: 3
Pénalité: 1.50€
```

## 🧪 Tests à Valider

- [ ] Ajout de livres et membres
- [ ] Emprunt avec vérification de disponibilité
- [ ] Retour de livre avec mise à jour du statut
- [ ] Calcul correct des pénalités de retard
- [ ] Limite de 3 livres par membre
- [ ] Gestion des livres non disponibles
- [ ] Consultation des emprunts par membre

## 💡 Conseils

- Utilisez des listes pour stocker les livres et membres
- Implémentez des méthodes de recherche efficaces
- Gérez les cas où un livre n'est pas disponible
- Calculez les pénalités en temps réel
- Créez des identifiants uniques pour les membres

## 🎯 Fichiers à Créer

- `solutions/Livre.java`
- `solutions/Membre.java`
- `solutions/Emprunt.java`
- `solutions/Bibliotheque.java`

**Bon courage !** 🚀
