# 🎯 Défi 12 : Système de Plugins avec Interfaces

## 📝 Description du Problème

Vous devez créer un système de plugins utilisant des interfaces pour gérer différents types de plugins (calculatrice, traducteur, crypteur). Le système doit être modulaire et permettre d'ajouter facilement de nouveaux plugins sans modifier le code existant.

## 🎯 Objectifs d'Apprentissage

- Maîtriser les interfaces et l'extensibilité
- Comprendre les patterns de design (Strategy, Plugin)
- Implémenter des systèmes modulaires
- Gérer la découverte dynamique de plugins
- Utiliser les interfaces pour l'inversion de dépendance

## 📋 Spécifications

### Interfaces à Créer

1. **Interface `Plugin`** :
   - Méthodes : initialiser(), executer(), obtenirNom(), obtenirVersion()
   - Méthode par défaut : obtenirDescription()

2. **Interface `Calculable`** :
   - Méthodes : calculer(double a, double b), obtenirOperateur()

3. **Interface `Traductible`** :
   - Méthodes : traduire(String texte, String langueSource, String langueCible)

4. **Interface `Cryptable`** :
   - Méthodes : chiffrer(String texte), dechiffrer(String texteChiffre)

5. **Interface `Configurable`** :
   - Méthodes : configurer(String cle, String valeur), obtenirConfiguration()

### Classes à Créer

1. **Classe `PluginCalculatrice` (implémente Plugin, Calculable, Configurable)** :
   - Attributs : operateur, precision, format
   - Implémentation des méthodes d'interface
   - Méthodes spécifiques : definirPrecision(), changerFormat()

2. **Classe `PluginTraducteur` (implémente Plugin, Traductible, Configurable)** :
   - Attributs : languesSupportees, apiKey, cache
   - Implémentation des méthodes d'interface
   - Méthodes spécifiques : ajouterLangue(), viderCache()

3. **Classe `PluginCrypteur` (implémente Plugin, Cryptable, Configurable)** :
   - Attributs : algorithme, cle, mode
   - Implémentation des méthodes d'interface
   - Méthodes spécifiques : genererCle(), changerAlgorithme()

4. **Classe `GestionnairePlugins`** :
   - Gérer la collection de plugins
   - Menu interactif pour les opérations
   - Découverte et chargement de plugins
   - Utilisation du polymorphisme avec les interfaces

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE PLUGINS ===
   1. Charger un plugin
   2. Lister les plugins disponibles
   3. Exécuter un plugin
   4. Configurer un plugin
   5. Tester un plugin
   6. Statistiques des plugins
   7. Gestion des dépendances
   8. Quitter
   ```

2. **Gestion des plugins** :
   - Chargement dynamique de plugins
   - Configuration des plugins
   - Exécution avec gestion d'erreurs
   - Découverte automatique des fonctionnalités

## 🔧 Contraintes Techniques

- Utiliser des interfaces pour l'extensibilité
- Implémenter des patterns de design
- Gérer la découverte dynamique
- Utiliser l'inversion de dépendance
- Code modulaire et extensible

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE PLUGINS ===
1. Charger un plugin
2. Lister les plugins disponibles
3. Exécuter un plugin
4. Configurer un plugin
5. Tester un plugin
6. Statistiques des plugins
7. Gestion des dépendances
8. Quitter
Votre choix: 1

Sélectionnez le type de plugin:
1. Calculatrice
2. Traducteur
3. Crypteur
Votre choix: 1

=== CHARGEMENT DU PLUGIN CALCULATRICE ===
Plugin chargé avec succès!
Nom: Calculatrice Avancée
Version: 1.2.0
Description: Plugin de calcul avec support des opérations avancées

Votre choix: 3
Sélectionnez le plugin à exécuter:
1. Calculatrice Avancée (v1.2.0)
Votre choix: 1

=== EXÉCUTION DU PLUGIN CALCULATRICE ===
Entrez le premier nombre: 15.5
Entrez le deuxième nombre: 3.2
Sélectionnez l'opération:
1. Addition (+)
2. Soustraction (-)
3. Multiplication (*)
4. Division (/)
Votre choix: 1

Résultat: 15.5 + 3.2 = 18.7
Précision: 2 décimales
Format: Décimal

Votre choix: 4
Sélectionnez le plugin à configurer:
1. Calculatrice Avancée (v1.2.0)
Votre choix: 1

=== CONFIGURATION DU PLUGIN ===
Configuration actuelle:
- Précision: 2
- Format: Décimal
- Opérateur: +

Nouvelle configuration:
Entrez la clé: precision
Entrez la valeur: 4
Configuration mise à jour!

Votre choix: 6

=== STATISTIQUES DES PLUGINS ===
Plugins chargés: 1
- Calculatrice Avancée: 3 exécutions, 1 configuration

Plugins disponibles: 3
- Calculatrice: 1 instance
- Traducteur: 0 instance
- Crypteur: 0 instance

Performance:
- Temps de chargement moyen: 45ms
- Temps d'exécution moyen: 12ms
- Taux de succès: 100%
```

## 🧪 Tests à Valider

- [ ] Implémentation des interfaces de plugin
- [ ] Chargement dynamique de plugins
- [ ] Configuration des plugins
- [ ] Exécution avec gestion d'erreurs
- [ ] Découverte automatique des fonctionnalités
- [ ] Gestion des dépendances
- [ ] Statistiques et monitoring

## 💡 Conseils

- Utilisez des interfaces pour définir les contrats
- Implémentez des patterns de design appropriés
- Gérer la découverte dynamique des plugins
- Utilisez l'inversion de dépendance
- Testez chaque plugin séparément

## 🎯 Fichiers à Créer

- `solutions/Plugin.java`
- `solutions/Calculable.java`
- `solutions/Traductible.java`
- `solutions/Cryptable.java`
- `solutions/Configurable.java`
- `solutions/PluginCalculatrice.java`
- `solutions/PluginTraducteur.java`
- `solutions/PluginCrypteur.java`
- `solutions/GestionnairePlugins.java`

**Bon courage !** 🚀
