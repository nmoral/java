# 🎯 Défi 15 : Système de Cache avec Collections Avancées

## 📝 Description du Problème

Vous devez créer un système de cache utilisant les collections avancées Java (LinkedHashMap, TreeMap, ConcurrentHashMap). Le système doit gérer différents types de cache avec des stratégies d'éviction et des performances optimisées.

## 🎯 Objectifs d'Apprentissage

- Maîtriser les collections avancées Java
- Comprendre les stratégies de cache (LRU, LFU, FIFO)
- Utiliser les collections thread-safe
- Implémenter des algorithmes de cache
- Gérer les performances et l'optimisation

## 📋 Spécifications

### Classes à Créer

1. **Interface `CacheStrategy<K, V>`** :
   - Méthodes : get(), put(), remove(), size(), clear()
   - Méthode par défaut : getStats()

2. **Classe `LRUCache<K, V>` (implémente CacheStrategy)** :
   - Utilise LinkedHashMap pour l'implémentation LRU
   - Attributs : capacity, accessOrder, stats
   - Méthodes : evict(), updateAccess()

3. **Classe `LFUCache<K, V>` (implémente CacheStrategy)** :
   - Utilise TreeMap et HashMap pour l'implémentation LFU
   - Attributs : capacity, frequencyMap, accessMap
   - Méthodes : evictLFU(), updateFrequency()

4. **Classe `FIFOCache<K, V>` (implémente CacheStrategy)** :
   - Utilise LinkedHashMap pour l'implémentation FIFO
   - Attributs : capacity, insertionOrder
   - Méthodes : evictFIFO(), addToQueue()

5. **Classe `CacheManager`** :
   - Gérer différents types de cache
   - Menu interactif pour les opérations
   - Monitoring et statistiques

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE GESTION DE CACHE ===
   1. Créer un cache LRU
   2. Créer un cache LFU
   3. Créer un cache FIFO
   4. Opérations sur un cache
   5. Comparer les performances
   6. Statistiques des caches
   7. Gestion de la mémoire
   8. Quitter
   ```

2. **Stratégies de cache** :
   - LRU (Least Recently Used)
   - LFU (Least Frequently Used)
   - FIFO (First In, First Out)
   - Monitoring des performances

## 🔧 Contraintes Techniques

- Utiliser les collections appropriées pour chaque stratégie
- Implémenter des algorithmes d'éviction efficaces
- Gérer les collections thread-safe
- Optimiser les performances
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE GESTION DE CACHE ===
1. Créer un cache LRU
2. Créer un cache LFU
3. Créer un cache FIFO
4. Opérations sur un cache
5. Comparer les performances
6. Statistiques des caches
7. Gestion de la mémoire
8. Quitter
Votre choix: 1

Entrez la capacité du cache: 5
Cache LRU créé avec succès!
ID: CACHE001

Votre choix: 4
Sélectionnez le cache:
1. CACHE001 (LRU, capacité: 5)
Votre choix: 1

=== OPÉRATIONS SUR LE CACHE ===
1. Ajouter une entrée
2. Récupérer une entrée
3. Supprimer une entrée
4. Afficher le contenu
5. Vider le cache
6. Statistiques
Votre choix: 1

Entrez la clé: user1
Entrez la valeur: {nom: "Jean", age: 30}
Entrée ajoutée avec succès!

Votre choix: 1
Entrez la clé: user2
Entrez la valeur: {nom: "Marie", age: 25}
Entrée ajoutée avec succès!

Votre choix: 2
Entrez la clé: user1
Valeur récupérée: {nom: "Jean", age: 30}
(user1 est maintenant le plus récemment utilisé)

Votre choix: 6

=== STATISTIQUES DU CACHE ===
Cache: CACHE001 (LRU)
Capacité: 5
Taille actuelle: 2
Taux de hit: 100.0%
Taux de miss: 0.0%
Opérations: 3
- Gets: 1
- Puts: 2
- Evictions: 0

Votre choix: 5

=== COMPARAISON DES PERFORMANCES ===
Test avec 1000 opérations:

Cache LRU:
- Temps moyen: 0.45ms
- Taux de hit: 85.2%
- Évictions: 150

Cache LFU:
- Temps moyen: 0.52ms
- Taux de hit: 82.1%
- Évictions: 180

Cache FIFO:
- Temps moyen: 0.38ms
- Taux de hit: 78.9%
- Évictions: 210

Résultat: LRU offre le meilleur taux de hit, FIFO est le plus rapide
```

## 🧪 Tests à Valider

- [ ] Implémentation des stratégies de cache
- [ ] Utilisation des collections appropriées
- [ ] Algorithmes d'éviction corrects
- [ ] Gestion des collections thread-safe
- [ ] Monitoring des performances
- [ ] Comparaison des stratégies
- [ ] Gestion de la mémoire

## 💡 Conseils

- Utilisez LinkedHashMap pour LRU et FIFO
- Utilisez TreeMap pour LFU
- Implémentez des algorithmes d'éviction efficaces
- Gérez les statistiques en temps réel
- Testez avec différentes tailles de cache

## 🎯 Fichiers à Créer

- `solutions/CacheStrategy.java`
- `solutions/LRUCache.java`
- `solutions/LFUCache.java`
- `solutions/FIFOCache.java`
- `solutions/CacheManager.java`

**Bon courage !** 🚀
