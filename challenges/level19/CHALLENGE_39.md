# 🎯 Défi 39 : Algorithmes de Simulation et Monte Carlo

## 📝 Description du Problème

Vous devez implémenter des algorithmes de simulation avancés : Monte Carlo, Metropolis-Hastings (MCMC), Simulated Annealing, et Genetic Algorithm. Ces algorithmes sont essentiels pour l'optimisation, la simulation et l'intelligence artificielle.

## 🎯 Objectifs d'Apprentissage

- Comprendre les méthodes de Monte Carlo
- Implémenter Metropolis-Hastings
- Maîtriser Simulated Annealing
- Implémenter Genetic Algorithm
- Analyser les performances d'optimisation

## 📋 Spécifications

### Classes à Créer

1. **Interface `AlgorithmeSimulation`** :
   - Méthodes : executer(), obtenirNom(), obtenirComplexite()
   - Méthodes : obtenirResultats(), obtenirPerformance()

2. **Classe `MonteCarlo`** :
   - Simulation probabiliste
   - Estimation de π
   - Intégration numérique

3. **Classe `MetropolisHastings`** :
   - Échantillonnage MCMC
   - Distribution de probabilité
   - Convergence

4. **Classe `SimulatedAnnealing`** :
   - Optimisation globale
   - Fonction de coût
   - Refroidissement

5. **Classe `GeneticAlgorithm`** :
   - Optimisation évolutionnaire
   - Sélection naturelle
   - Mutation et croisement

6. **Classe `GestionnaireSimulation`** :
   - Menu interactif pour tester les algorithmes
   - Génération de problèmes
   - Comparaison des performances

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE SIMULATION ===
   1. Test Monte Carlo
   2. Test Metropolis-Hastings
   3. Test Simulated Annealing
   4. Test Genetic Algorithm
   5. Comparer les algorithmes
   6. Quitter
   ```

## 🔧 Contraintes Techniques

- Implémenter les quatre algorithmes complets
- Gérer la convergence
- Mesurer les performances
- Tests sur différents problèmes
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE SIMULATION ===
1. Test Monte Carlo
2. Test Metropolis-Hastings
3. Test Simulated Annealing
4. Test Genetic Algorithm
5. Comparer les algorithmes
6. Quitter
Votre choix: 1

=== TEST MONTE CARLO ===
Estimation de π...
Points générés: 1,000,000
Points dans le cercle: 785,398
Estimation de π: 3.141592
Erreur: 0.000001

Performance:
- Temps d'exécution: 125ms
- Précision: 6 décimales
- Convergence: Rapide
```

## 🧪 Tests à Valider

- [ ] Implémentation de Monte Carlo
- [ ] Implémentation de Metropolis-Hastings
- [ ] Implémentation de Simulated Annealing
- [ ] Implémentation de Genetic Algorithm
- [ ] Tests de convergence
- [ ] Comparaison des performances

## 💡 Conseils

- Monte Carlo pour l'estimation probabiliste
- Metropolis-Hastings pour l'échantillonnage
- Simulated Annealing pour l'optimisation globale
- Genetic Algorithm pour l'optimisation évolutionnaire
- Testez la convergence

## 🎯 Fichiers à Créer

- `solutions/AlgorithmeSimulation.java`
- `solutions/MonteCarlo.java`
- `solutions/MetropolisHastings.java`
- `solutions/SimulatedAnnealing.java`
- `solutions/GeneticAlgorithm.java`
- `solutions/GestionnaireSimulation.java`

**Bon courage !** 🚀
