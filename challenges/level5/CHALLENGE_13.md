# 🎯 Défi 13 : Système de Gestion de Contacts avec Collections

## 📝 Description du Problème

Vous devez créer un système de gestion de contacts utilisant les collections Java (List, Set, Map). Le système doit gérer des contacts avec des informations personnelles, des groupes et des recherches avancées.

## 🎯 Objectifs d'Apprentissage

- Maîtriser les collections Java (List, Set, Map)
- Comprendre les génériques (Generics)
- Utiliser les interfaces Collection et Map
- Implémenter des recherches et tris
- Gérer des relations entre objets

## 📋 Spécifications

### Classes à Créer

1. **Classe `Contact`** :
   - Attributs : id, nom, prenom, email, telephone, dateNaissance
   - Implémentation de `Comparable<Contact>`
   - Méthodes : equals(), hashCode(), toString()

2. **Classe `Groupe`** :
   - Attributs : nom, description, contacts (Set<Contact>)
   - Méthodes : ajouterContact(), supprimerContact(), obtenirContacts()

3. **Classe `GestionnaireContacts`** :
   - Attributs : contacts (Map<String, Contact>), groupes (Map<String, Groupe>)
   - Méthodes : ajouterContact(), rechercherContact(), grouperContacts()

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE GESTION DE CONTACTS ===
   1. Ajouter un contact
   2. Supprimer un contact
   3. Rechercher un contact
   4. Afficher tous les contacts
   5. Créer un groupe
   6. Ajouter un contact à un groupe
   7. Afficher les contacts d'un groupe
   8. Rechercher par critères
   9. Statistiques des contacts
   10. Quitter
   ```

2. **Gestion des collections** :
   - Utilisation de Map pour l'indexation rapide
   - Utilisation de Set pour éviter les doublons
   - Utilisation de List pour les tris
   - Recherches par nom, email, téléphone

## 🔧 Contraintes Techniques

- Utiliser les génériques pour la sécurité des types
- Implémenter Comparable pour les tris
- Utiliser les collections appropriées selon le cas d'usage
- Gérer les relations entre contacts et groupes
- Code modulaire avec validation des données

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE GESTION DE CONTACTS ===
1. Ajouter un contact
2. Supprimer un contact
3. Rechercher un contact
4. Afficher tous les contacts
5. Créer un groupe
6. Ajouter un contact à un groupe
7. Afficher les contacts d'un groupe
8. Rechercher par critères
9. Statistiques des contacts
10. Quitter
Votre choix: 1

Entrez le nom: Dupont
Entrez le prénom: Jean
Entrez l'email: jean.dupont@email.com
Entrez le téléphone: 0123456789
Entrez la date de naissance (YYYY-MM-DD): 1990-05-15
Contact ajouté avec succès!
ID: CONTACT001

Votre choix: 5
Entrez le nom du groupe: Amis
Entrez la description: Mes amis proches
Groupe créé avec succès!

Votre choix: 6
Entrez l'ID du contact: CONTACT001
Entrez le nom du groupe: Amis
Contact ajouté au groupe avec succès!

Votre choix: 8
Sélectionnez le critère de recherche:
1. Par nom
2. Par email
3. Par téléphone
4. Par groupe
Votre choix: 1
Entrez le nom à rechercher: Dupont

=== RÉSULTATS DE LA RECHERCHE ===
1. Jean Dupont (jean.dupont@email.com) - 0123456789
   Groupes: Amis

Votre choix: 9

=== STATISTIQUES DES CONTACTS ===
Nombre total de contacts: 1
Nombre de groupes: 1
Contacts par groupe:
- Amis: 1 contact(s)

Répartition par domaine email:
- email.com: 1 contact(s)

Contacts récents (derniers 7 jours): 1
```

## 🧪 Tests à Valider

- [ ] Ajout et suppression de contacts
- [ ] Recherche par différents critères
- [ ] Gestion des groupes avec Set
- [ ] Indexation rapide avec Map
- [ ] Tri des contacts par nom
- [ ] Gestion des doublons
- [ ] Statistiques et rapports

## 💡 Conseils

- Utilisez Map<String, Contact> pour l'indexation par ID
- Utilisez Set<Contact> dans les groupes pour éviter les doublons
- Implémentez Comparable pour permettre le tri
- Utilisez les méthodes des collections pour les recherches
- Gérez les relations entre contacts et groupes

## 🎯 Fichiers à Créer

- `solutions/Contact.java`
- `solutions/Groupe.java`
- `solutions/GestionnaireContacts.java`

**Bon courage !** 🚀
