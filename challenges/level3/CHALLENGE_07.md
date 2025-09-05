# 🎯 Défi 7 : Système de Véhicules avec Héritage

## 📝 Description du Problème

Vous devez créer un système de gestion de véhicules utilisant l'héritage. Le système doit gérer différents types de véhicules (voitures, motos, camions) avec des caractéristiques communes et spécifiques.

## 🎯 Objectifs d'Apprentissage

- Comprendre et implémenter l'héritage en Java
- Utiliser les mots-clés `extends` et `super`
- Implémenter l'override de méthodes
- Comprendre le polymorphisme
- Gérer les constructeurs dans l'héritage

## 📋 Spécifications

### Classes à Créer

1. **Classe `Vehicule` (classe parente)** :
   - Attributs : marque, modèle, année, prix
   - Méthodes : démarrer(), arrêter(), afficherInfo()
   - Méthode abstraite : calculerConsommation()

2. **Classe `Voiture` (hérite de Vehicule)** :
   - Attributs spécifiques : nombre de portes, type de carburant
   - Override des méthodes parentes
   - Méthodes spécifiques : ouvrirCoffre()

3. **Classe `Moto` (hérite de Vehicule)** :
   - Attributs spécifiques : cylindrée, type de permis
   - Override des méthodes parentes
   - Méthodes spécifiques : faireWheelie()

4. **Classe `Camion` (hérite de Vehicule)** :
   - Attributs spécifiques : charge maximale, nombre d'essieux
   - Override des méthodes parentes
   - Méthodes spécifiques : chargerMarchandise()

5. **Classe `GestionnaireVehicules`** :
   - Gérer la collection de véhicules
   - Menu interactif pour les opérations
   - Utilisation du polymorphisme

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE GESTION DE VÉHICULES ===
   1. Ajouter une voiture
   2. Ajouter une moto
   3. Ajouter un camion
   4. Afficher tous les véhicules
   5. Démarrer un véhicule
   6. Calculer la consommation
   7. Rechercher par marque
   8. Statistiques par type
   9. Quitter
   ```

2. **Utilisation du polymorphisme** :
   - Traiter tous les véhicules de manière uniforme
   - Appeler les méthodes spécifiques selon le type
   - Calculer des statistiques globales

## 🔧 Contraintes Techniques

- Utiliser l'héritage avec `extends`
- Implémenter l'override de méthodes
- Utiliser `super()` dans les constructeurs
- Gérer le polymorphisme avec des collections
- Code modulaire avec séparation des responsabilités

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE GESTION DE VÉHICULES ===
1. Ajouter une voiture
2. Ajouter une moto
3. Ajouter un camion
4. Afficher tous les véhicules
5. Démarrer un véhicule
6. Calculer la consommation
7. Rechercher par marque
8. Statistiques par type
9. Quitter
Votre choix: 1

Entrez la marque: Toyota
Entrez le modèle: Corolla
Entrez l'année: 2023
Entrez le prix: 25000.0
Entrez le nombre de portes: 4
Entrez le type de carburant: Essence
Voiture ajoutée avec succès!

Votre choix: 2
Entrez la marque: Honda
Entrez le modèle: CBR600
Entrez l'année: 2022
Entrez le prix: 12000.0
Entrez la cylindrée: 600
Entrez le type de permis: A2
Moto ajoutée avec succès!

Votre choix: 4

=== TOUS LES VÉHICULES ===
1. Toyota Corolla (2023) - 25000.0€ - 4 portes, Essence
2. Honda CBR600 (2022) - 12000.0€ - 600cc, Permis A2

Votre choix: 5
Entrez l'index du véhicule: 1
Le Toyota Corolla démarre avec le contact...

Votre choix: 6
Entrez l'index du véhicule: 2
Consommation de la Honda CBR600: 5.2 L/100km

Votre choix: 8

=== STATISTIQUES PAR TYPE ===
Voitures: 1 véhicule(s) - Valeur totale: 25000.0€
Motos: 1 véhicule(s) - Valeur totale: 12000.0€
Camions: 0 véhicule(s) - Valeur totale: 0.0€
Total: 2 véhicule(s) - Valeur totale: 37000.0€
```

## 🧪 Tests à Valider

- [ ] Création de véhicules avec héritage
- [ ] Override correct des méthodes parentes
- [ ] Utilisation du polymorphisme
- [ ] Appel des constructeurs avec super()
- [ ] Méthodes spécifiques par type de véhicule
- [ ] Calculs de consommation spécifiques
- [ ] Statistiques globales et par type

## 💡 Conseils

- Commencez par créer la classe parente Vehicule
- Utilisez des méthodes abstraites pour forcer l'implémentation
- Implémentez l'override dans chaque classe enfant
- Utilisez le polymorphisme dans les collections
- Testez chaque type de véhicule séparément

## 🎯 Fichiers à Créer

- `solutions/Vehicule.java`
- `solutions/Voiture.java`
- `solutions/Moto.java`
- `solutions/Camion.java`
- `solutions/GestionnaireVehicules.java`

**Bon courage !** 🚀
