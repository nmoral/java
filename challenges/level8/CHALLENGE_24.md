# 🎯 Défi 24 : Système de Compression et Cryptographie

## 📝 Description du Problème

Vous devez créer un système de compression et cryptographie utilisant des algorithmes avancés. Le système doit implémenter des algorithmes de compression (Huffman, LZW) et de cryptographie (AES, RSA) avec des analyses de sécurité.

## 🎯 Objectifs d'Apprentissage

- Comprendre les algorithmes de compression
- Implémenter des algorithmes de cryptographie
- Gérer la sécurité des données
- Analyser les performances des algorithmes
- Comprendre les concepts de cryptographie

## 📋 Spécifications

### Classes à Créer

1. **Classe `NoeudHuffman`** :
   - Attributs : caractere, frequence, gauche, droite
   - Méthodes : estFeuille(), obtenirCode()

2. **Classe `CompressionHuffman`** :
   - Méthodes : compresser(), decompresser(), construireArbre()
   - Implémentation de l'algorithme de Huffman

3. **Classe `CompressionLZW`** :
   - Méthodes : compresser(), decompresser(), initialiserDictionnaire()
   - Implémentation de l'algorithme LZW

4. **Classe `CrypteurAES`** :
   - Méthodes : chiffrer(), dechiffrer(), genererCle()
   - Implémentation du chiffrement AES

5. **Classe `CrypteurRSA`** :
   - Méthodes : genererPaires(), chiffrer(), dechiffrer()
   - Implémentation du chiffrement RSA

6. **Classe `GestionnaireSecurite`** :
   - Gérer les opérations de compression et cryptographie
   - Menu interactif pour les opérations
   - Analyse de sécurité

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE COMPRESSION ET CRYPTOGRAPHIE ===
   1. Compresser avec Huffman
   2. Décompresser avec Huffman
   3. Compresser avec LZW
   4. Décompresser avec LZW
   5. Chiffrer avec AES
   6. Déchiffrer avec AES
   7. Chiffrer avec RSA
   8. Déchiffrer avec RSA
   9. Analyser la sécurité
   10. Quitter
   ```

2. **Algorithmes** :
   - Compression : Huffman, LZW
   - Cryptographie : AES, RSA
   - Analyse : Taux de compression, sécurité

## 🔧 Contraintes Techniques

- Implémenter des algorithmes de compression efficaces
- Utiliser des algorithmes de cryptographie sécurisés
- Gérer la sécurité des données
- Analyser les performances
- Code modulaire avec séparation des responsabilités

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE COMPRESSION ET CRYPTOGRAPHIE ===
1. Compresser avec Huffman
2. Décompresser avec Huffman
3. Compresser avec LZW
4. Décompresser avec LZW
5. Chiffrer avec AES
6. Déchiffrer avec AES
7. Chiffrer avec RSA
8. Déchiffrer avec RSA
9. Analyser la sécurité
10. Quitter
Votre choix: 1

Entrez le texte à compresser: "Hello, World! This is a test message for compression."

=== COMPRESSION HUFFMAN ===
Compression en cours...

Analyse des fréquences:
- ' ': 8 occurrences
- 'o': 4 occurrences
- 'e': 4 occurrences
- 's': 4 occurrences
- 'l': 3 occurrences
- 't': 3 occurrences
- 'r': 3 occurrences
- 'i': 3 occurrences
- 'a': 2 occurrences
- 'H': 1 occurrence
- 'W': 1 occurrence
- 'T': 1 occurrence
- 'h': 1 occurrence
- 'm': 1 occurrence
- 'p': 1 occurrence
- 'c': 1 occurrence
- 'n': 1 occurrence
- 'f': 1 occurrence
- 'g': 1 occurrence
- ',': 1 occurrence
- '!': 1 occurrence
- '.': 1 occurrence

Construction de l'arbre de Huffman...
Génération des codes...

Compression terminée!
- Taille originale: 65 octets
- Taille compressée: 32 octets
- Taux de compression: 50.8%
- Temps de compression: 15ms

Votre choix: 5
Entrez le texte à chiffrer: "Message secret à chiffrer"
Entrez la clé AES (16 caractères): MySecretKey12345

=== CHIFFREMENT AES ===
Chiffrement en cours...

Génération de la clé...
Chiffrement du texte...
Encodage en Base64...

Chiffrement terminé!
- Texte original: "Message secret à chiffrer"
- Texte chiffré: "U2FsdGVkX1+vupppZksvRf5pq5g5XjFRlipRkwB0K1Y="
- Taille: 44 caractères
- Temps de chiffrement: 8ms
- Algorithme: AES-256-CBC

Votre choix: 7
Entrez le texte à chiffrer: "Message RSA"
Entrez la taille de la clé (1024, 2048, 4096): 2048

=== CHIFFREMENT RSA ===
Génération des clés en cours...

Génération des nombres premiers...
Calcul de la clé publique...
Calcul de la clé privée...

Chiffrement terminé!
- Texte original: "Message RSA"
- Texte chiffré: "a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0u1v2w3x4y5z6"
- Taille de la clé: 2048 bits
- Temps de génération: 2.5s
- Temps de chiffrement: 12ms
- Algorithme: RSA-2048

Votre choix: 9

=== ANALYSE DE SÉCURITÉ ===
Analyse en cours...

Algorithmes de compression:
- Huffman: Taux moyen: 45.2%, Temps: 15ms
- LZW: Taux moyen: 38.7%, Temps: 22ms

Algorithmes de cryptographie:
- AES-256: Temps de chiffrement: 8ms, Sécurité: Très élevée
- RSA-2048: Temps de chiffrement: 12ms, Sécurité: Élevée

Recommandations de sécurité:
- Pour la compression: Huffman (plus rapide)
- Pour le chiffrement symétrique: AES-256
- Pour le chiffrement asymétrique: RSA-4096
- Pour les données sensibles: AES + RSA

Niveaux de sécurité:
- Faible: Compression seule
- Moyen: Chiffrement AES
- Élevé: Chiffrement RSA
- Très élevé: AES + RSA + Compression
```

## 🧪 Tests à Valider

- [ ] Implémentation de la compression Huffman
- [ ] Implémentation de la compression LZW
- [ ] Implémentation du chiffrement AES
- [ ] Implémentation du chiffrement RSA
- [ ] Gestion de la sécurité des données
- [ ] Analyse des performances
- [ ] Tests de sécurité

## 💡 Conseils

- Implémentez les algorithmes étape par étape
- Testez avec des données variées
- Analysez les performances et la sécurité
- Utilisez des bibliothèques cryptographiques appropriées
- Gérez la sécurité des clés

## 🎯 Fichiers à Créer

- `solutions/NoeudHuffman.java`
- `solutions/CompressionHuffman.java`
- `solutions/CompressionLZW.java`
- `solutions/CrypteurAES.java`
- `solutions/CrypteurRSA.java`
- `solutions/GestionnaireSecurite.java`

**Bon courage !** 🚀
