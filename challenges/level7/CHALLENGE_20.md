# 🎯 Défi 20 : Système de Filtrage et Transformation avec Lambdas

## 📝 Description du Problème

Vous devez créer un système de filtrage et transformation de données utilisant les lambdas et les Streams Java. Le système doit traiter des données complexes avec des opérations de filtrage, mapping et réduction.

## 🎯 Objectifs d'Apprentissage

- Maîtriser les lambdas et les expressions lambda
- Utiliser les interfaces fonctionnelles (Predicate, Function, Consumer)
- Implémenter des opérations de filtrage complexes
- Utiliser les opérations de transformation avec map
- Comprendre les opérations de réduction avec reduce

## 📋 Spécifications

### Classes à Créer

1. **Classe `Personne`** :
   - Attributs : id, nom, prenom, age, salaire, departement, ville
   - Méthodes : calculerAge(), afficherInfo()

2. **Classe `FiltreurDonnees`** :
   - Méthodes : filtrerParAge(), filtrerParSalaire(), filtrerParDepartement()
   - Utilisation des Predicates et lambdas

3. **Classe `TransformateurDonnees`** :
   - Méthodes : transformerSalaire(), transformerNom(), calculerStatistiques()
   - Utilisation des Functions et lambdas

4. **Classe `GestionnaireDonnees`** :
   - Gérer la collection de personnes
   - Menu interactif pour les opérations
   - Utilisation des lambdas et Streams

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE FILTRAGE ET TRANSFORMATION ===
   1. Ajouter une personne
   2. Filtrer par âge
   3. Filtrer par salaire
   4. Filtrer par département
   5. Transformer les salaires
   6. Transformer les noms
   7. Calculer des statistiques
   8. Recherches complexes
   9. Quitter
   ```

2. **Opérations avec lambdas** :
   - Filtrage avec Predicate
   - Transformation avec Function
   - Action avec Consumer
   - Réduction avec reduce
   - Collecte avec collect

## 🔧 Contraintes Techniques

- Utiliser les lambdas pour toutes les opérations
- Implémenter des interfaces fonctionnelles
- Utiliser les Streams avec les lambdas
- Gérer des opérations complexes
- Code modulaire avec séparation des responsabilités

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE FILTRAGE ET TRANSFORMATION ===
1. Ajouter une personne
2. Filtrer par âge
3. Filtrer par salaire
4. Filtrer par département
5. Transformer les salaires
6. Transformer les noms
7. Calculer des statistiques
8. Recherches complexes
9. Quitter
Votre choix: 1

Entrez l'ID: PERS001
Entrez le nom: Dupont
Entrez le prénom: Jean
Entrez l'âge: 30
Entrez le salaire: 45000.0
Entrez le département: Informatique
Entrez la ville: Paris
Personne ajoutée avec succès!

Votre choix: 2
Entrez l'âge minimum: 25
Entrez l'âge maximum: 35

=== FILTRAGE PAR ÂGE ===
Filtrage en cours avec lambdas...

Personnes entre 25 et 35 ans:
1. Jean Dupont (30 ans) - 45,000.00€ - Informatique - Paris
2. Marie Martin (28 ans) - 42,000.00€ - Marketing - Lyon
3. Pierre Durand (32 ans) - 48,000.00€ - Informatique - Paris

Total: 3 personnes trouvées

Votre choix: 5
Entrez le pourcentage d'augmentation: 10

=== TRANSFORMATION DES SALAIRES ===
Transformation en cours avec lambdas...

Salaires avant transformation:
- Jean Dupont: 45,000.00€
- Marie Martin: 42,000.00€
- Pierre Durand: 48,000.00€

Salaires après transformation (+10%):
- Jean Dupont: 49,500.00€
- Marie Martin: 46,200.00€
- Pierre Durand: 52,800.00€

Votre choix: 7

=== CALCUL DES STATISTIQUES ===
Calcul en cours avec lambdas...

Statistiques des salaires:
- Salaire minimum: 35,000.00€
- Salaire maximum: 55,000.00€
- Salaire moyen: 44,500.00€
- Salaire médian: 45,000.00€
- Écart-type: 6,250.00€

Statistiques par département:
- Informatique: 3 personnes, salaire moyen: 47,500.00€
- Marketing: 2 personnes, salaire moyen: 41,000.00€
- Ventes: 1 personne, salaire moyen: 38,000.00€

Votre choix: 8

=== RECHERCHES COMPLEXES ===
Recherche en cours avec lambdas...

Personnes avec salaire > 40,000€ et âge < 35 ans:
1. Jean Dupont (30 ans) - 45,000.00€ - Informatique
2. Marie Martin (28 ans) - 42,000.00€ - Marketing
3. Pierre Durand (32 ans) - 48,000.00€ - Informatique

Personnes par ville (groupées):
- Paris: 2 personnes
- Lyon: 1 personne
- Marseille: 1 personne

Top 3 des salaires:
1. Pierre Durand: 48,000.00€
2. Jean Dupont: 45,000.00€
3. Marie Martin: 42,000.00€
```

## 🧪 Tests à Valider

- [ ] Utilisation des lambdas pour le filtrage
- [ ] Utilisation des lambdas pour la transformation
- [ ] Interfaces fonctionnelles (Predicate, Function, Consumer)
- [ ] Opérations de réduction avec reduce
- [ ] Collecte avec collect
- [ ] Recherches complexes
- [ ] Calcul de statistiques

## 💡 Conseils

- Utilisez les lambdas pour toutes les opérations
- Implémentez des interfaces fonctionnelles
- Utilisez les Streams avec les lambdas
- Créez des opérations complexes
- Testez avec des données variées

## 🎯 Fichiers à Créer

- `solutions/Personne.java`
- `solutions/FiltreurDonnees.java`
- `solutions/TransformateurDonnees.java`
- `solutions/GestionnaireDonnees.java`

**Bon courage !** 🚀
