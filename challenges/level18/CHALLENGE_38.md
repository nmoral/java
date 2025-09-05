# 🎯 Défi 38 : Algorithmes de Cryptographie Avancés

## 📝 Description du Problème

Vous devez implémenter des algorithmes de cryptographie avancés : Diffie-Hellman (échange de clés), ElGamal (chiffrement asymétrique), ECC (courbes elliptiques), et SHA-3 (fonction de hachage sécurisée). Ces algorithmes sont essentiels pour la sécurité informatique moderne.

## 🎯 Objectifs d'Apprentissage

- Comprendre les algorithmes de cryptographie asymétrique
- Implémenter l'échange de clés Diffie-Hellman
- Maîtriser le chiffrement ElGamal
- Comprendre les courbes elliptiques
- Implémenter SHA-3

## 📋 Spécifications

### Classes à Créer

1. **Interface `AlgorithmeCryptographie`** :
   - Méthodes : genererCles(), chiffrer(), dechiffrer()
   - Méthodes : obtenirNom(), obtenirSecurite()

2. **Classe `DiffieHellman`** :
   - Échange de clés sécurisé
   - Génération de clés partagées
   - Protection contre les attaques

3. **Classe `ElGamal`** :
   - Chiffrement asymétrique
   - Signature numérique
   - Gestion des clés

4. **Classe `ECC`** :
   - Cryptographie à courbes elliptiques
   - Opérations sur les courbes
   - Sécurité renforcée

5. **Classe `SHA3`** :
   - Fonction de hachage sécurisée
   - Résistance aux collisions
   - Performance optimisée

6. **Classe `GestionnaireSecurite`** :
   - Menu interactif pour tester les algorithmes
   - Génération de clés
   - Tests de sécurité

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE CRYPTOGRAPHIE AVANCÉ ===
   1. Test Diffie-Hellman
   2. Test ElGamal
   3. Test ECC
   4. Test SHA-3
   5. Comparer les algorithmes
   6. Tests de sécurité
   7. Quitter
   ```

## 🔧 Contraintes Techniques

- Implémenter les quatre algorithmes complets
- Gérer la sécurité des clés
- Mesurer les performances
- Tests de résistance aux attaques
- Code modulaire avec interfaces

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE CRYPTOGRAPHIE AVANCÉ ===
1. Test Diffie-Hellman
2. Test ElGamal
3. Test ECC
4. Test SHA-3
5. Comparer les algorithmes
6. Tests de sécurité
7. Quitter
Votre choix: 1

=== TEST DIFFIE-HELLMAN ===
Génération des clés...
Clé publique partagée: 23
Clé privée Alice: 6
Clé privée Bob: 15

Calcul de la clé partagée...
Clé partagée Alice: 18
Clé partagée Bob: 18

✅ Échange de clés réussi!

Performance:
- Temps de génération: 45ms
- Taille de clé: 1024 bits
- Sécurité: Élevée
```

## 🧪 Tests à Valider

- [ ] Implémentation de Diffie-Hellman
- [ ] Implémentation d'ElGamal
- [ ] Implémentation d'ECC
- [ ] Implémentation de SHA-3
- [ ] Tests de sécurité
- [ ] Comparaison des performances

## 💡 Conseils

- Diffie-Hellman pour l'échange de clés
- ElGamal pour le chiffrement asymétrique
- ECC pour la sécurité renforcée
- SHA-3 pour le hachage sécurisé
- Testez la résistance aux attaques

## 🎯 Fichiers à Créer

- `solutions/AlgorithmeCryptographie.java`
- `solutions/DiffieHellman.java`
- `solutions/ElGamal.java`
- `solutions/ECC.java`
- `solutions/SHA3.java`
- `solutions/GestionnaireSecurite.java`

**Bon courage !** 🚀
