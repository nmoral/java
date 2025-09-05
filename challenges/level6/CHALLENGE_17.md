# 🎯 Défi 17 : Système de Gestion de Fichiers avec Gestion d'Erreurs

## 📝 Description du Problème

Vous devez créer un système de gestion de fichiers avec une gestion d'erreurs robuste. Le système doit gérer les opérations de lecture/écriture, les erreurs d'I/O et les exceptions de sécurité.

## 🎯 Objectifs d'Apprentissage

- Gérer les exceptions d'I/O (IOException, FileNotFoundException)
- Utiliser try-with-resources
- Implémenter des exceptions personnalisées
- Gérer les erreurs de sécurité et d'accès
- Comprendre la gestion des ressources

## 📋 Spécifications

### Exceptions Personnalisées à Créer

1. **Classe `FichierException` (extends Exception)** :
   - Attributs : nomFichier, operation, cause
   - Constructeurs : avec et sans cause
   - Méthodes : obtenirNomFichier(), obtenirOperation()

2. **Classe `FichierNonTrouveException` (extends FichierException)** :
   - Gestion des fichiers inexistants
   - Suggestions de fichiers similaires

3. **Classe `AccesRefuseException` (extends FichierException)** :
   - Gestion des erreurs d'accès
   - Vérification des permissions

4. **Classe `TailleFichierException` (extends FichierException)** :
   - Gestion des limites de taille
   - Validation des quotas

### Classes à Créer

1. **Classe `GestionnaireFichiers`** :
   - Méthodes : lireFichier(), ecrireFichier(), copierFichier()
   - Gestion des exceptions d'I/O
   - Utilisation de try-with-resources

2. **Classe `ValidateurFichiers`** :
   - Méthodes : validerFichier(), verifierPermissions(), calculerTaille()
   - Validation des fichiers

3. **Classe `SauvegardeFichiers`** :
   - Méthodes : sauvegarder(), restaurer(), listerSauvegardes()
   - Gestion des sauvegardes

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE GESTION DE FICHIERS ===
   1. Lire un fichier
   2. Écrire dans un fichier
   3. Copier un fichier
   4. Créer une sauvegarde
   5. Restaurer une sauvegarde
   6. Lister les fichiers
   7. Statistiques des fichiers
   8. Gestion des erreurs
   9. Quitter
   ```

2. **Gestion des erreurs** :
   - Fichiers inexistants
   - Permissions insuffisantes
   - Espace disque insuffisant
   - Erreurs de lecture/écriture

## 🔧 Contraintes Techniques

- Utiliser try-with-resources pour la gestion des ressources
- Gérer les exceptions d'I/O appropriées
- Implémenter des exceptions personnalisées
- Gérer les erreurs de sécurité
- Code modulaire avec gestion d'erreurs

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE GESTION DE FICHIERS ===
1. Lire un fichier
2. Écrire dans un fichier
3. Copier un fichier
4. Créer une sauvegarde
5. Restaurer une sauvegarde
6. Lister les fichiers
7. Statistiques des fichiers
8. Gestion des erreurs
9. Quitter
Votre choix: 1

Entrez le chemin du fichier: /home/user/document.txt

=== LECTURE DU FICHIER ===
Fichier lu avec succès!
Taille: 1,245 octets
Lignes: 25
Dernière modification: 2024-01-15 14:30:25

Contenu:
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

Votre choix: 2
Entrez le chemin du fichier: /home/user/nouveau.txt
Entrez le contenu à écrire:
Bonjour, ceci est un nouveau fichier.
Appuyez sur Entrée pour terminer.

=== ÉCRITURE DU FICHIER ===
Fichier créé avec succès!
Taille: 45 octets
Permissions: rw-r--r--

Votre choix: 1
Entrez le chemin du fichier: /fichier/inexistant.txt

=== ERREUR DE LECTURE ===
❌ FichierNonTrouveException: Le fichier '/fichier/inexistant.txt' n'existe pas
Suggestions de fichiers similaires:
- /home/user/document.txt
- /home/user/nouveau.txt

Votre choix: 8

=== GESTION DES ERREURS ===
Erreurs récentes:
1. FichierNonTrouveException: /fichier/inexistant.txt
2. AccesRefuseException: /root/secret.txt
3. TailleFichierException: Fichier trop volumineux (100MB)

Statistiques des erreurs:
- FichierNonTrouveException: 5 occurrences
- AccesRefuseException: 2 occurrences
- TailleFichierException: 1 occurrence
- IOException: 3 occurrences

Taux de succès: 85.2%
```

## 🧪 Tests à Valider

- [ ] Gestion des exceptions d'I/O
- [ ] Utilisation de try-with-resources
- [ ] Exceptions personnalisées
- [ ] Gestion des erreurs de sécurité
- [ ] Validation des fichiers
- [ ] Gestion des sauvegardes
- [ ] Statistiques des erreurs

## 💡 Conseils

- Utilisez try-with-resources pour la gestion automatique des ressources
- Créez des exceptions spécifiques pour chaque type d'erreur
- Gérez les erreurs de sécurité et d'accès
- Implémentez des validations robustes
- Testez avec des fichiers existants et inexistants

## 🎯 Fichiers à Créer

- `solutions/FichierException.java`
- `solutions/FichierNonTrouveException.java`
- `solutions/AccesRefuseException.java`
- `solutions/TailleFichierException.java`
- `solutions/GestionnaireFichiers.java`
- `solutions/ValidateurFichiers.java`
- `solutions/SauvegardeFichiers.java`

**Bon courage !** 🚀
