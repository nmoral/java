# 🎯 Défi 21 : Système de Traitement de Fichiers avec Streams

## 📝 Description du Problème

Vous devez créer un système de traitement de fichiers utilisant les Streams Java. Le système doit lire, traiter et analyser des fichiers de données en utilisant les opérations de stream et les lambdas.

## 🎯 Objectifs d'Apprentissage

- Utiliser les Streams pour le traitement de fichiers
- Implémenter des opérations de lecture/écriture avec Streams
- Utiliser les lambdas pour le traitement de données
- Gérer des fichiers de grande taille
- Comprendre les opérations de stream sur les fichiers

## 📋 Spécifications

### Classes à Créer

1. **Classe `FichierDonnees`** :
   - Attributs : nom, chemin, taille, dateModification
   - Méthodes : lireLignes(), ecrireLignes(), analyserContenu()

2. **Classe `TraitementFichiers`** :
   - Méthodes : lireFichier(), traiterLignes(), filtrerDonnees()
   - Utilisation des Streams pour le traitement

3. **Classe `AnalyseurFichiers`** :
   - Méthodes : analyserMots(), analyserLignes(), genererRapport()
   - Utilisation des lambdas pour l'analyse

4. **Classe `GestionnaireFichiers`** :
   - Gérer les opérations sur les fichiers
   - Menu interactif pour les opérations
   - Utilisation des Streams et lambdas

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE TRAITEMENT DE FICHIERS ===
   1. Lire un fichier
   2. Traiter les lignes
   3. Filtrer les données
   4. Analyser le contenu
   5. Générer un rapport
   6. Traitement par lots
   7. Statistiques des fichiers
   8. Quitter
   ```

2. **Traitement avec Streams** :
   - Lecture de fichiers avec Streams
   - Traitement des lignes avec map
   - Filtrage avec filter
   - Analyse avec reduce et collect
   - Écriture avec forEach

## 🔧 Contraintes Techniques

- Utiliser les Streams pour le traitement de fichiers
- Implémenter des lambdas pour les opérations
- Gérer des fichiers de grande taille
- Utiliser les opérations de stream appropriées
- Code modulaire avec séparation des responsabilités

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE TRAITEMENT DE FICHIERS ===
1. Lire un fichier
2. Traiter les lignes
3. Filtrer les données
4. Analyser le contenu
5. Générer un rapport
6. Traitement par lots
7. Statistiques des fichiers
8. Quitter
Votre choix: 1

Entrez le chemin du fichier: /home/user/donnees.txt

=== LECTURE DU FICHIER ===
Lecture en cours avec Streams...

Fichier lu avec succès!
- Nom: donnees.txt
- Taille: 15,245 octets
- Lignes: 250
- Date de modification: 2024-01-15 14:30:25

Votre choix: 2

=== TRAITEMENT DES LIGNES ===
Traitement en cours avec Streams...

Lignes traitées: 250
Lignes vides supprimées: 15
Lignes commentées supprimées: 8
Lignes valides: 227

Exemple de traitement:
- Ligne originale: "  Jean,Dupont,30,Paris  "
- Ligne traitée: "Jean,Dupont,30,Paris"

Votre choix: 3
Entrez le critère de filtrage:
1. Par longueur de ligne
2. Par contenu
3. Par format
Votre choix: 1
Entrez la longueur minimum: 10
Entrez la longueur maximum: 50

=== FILTRAGE DES DONNÉES ===
Filtrage en cours avec Streams...

Lignes filtrées: 180
Lignes rejetées: 47
Critère: Longueur entre 10 et 50 caractères

Votre choix: 4

=== ANALYSE DU CONTENU ===
Analyse en cours avec Streams...

Statistiques du fichier:
- Nombre total de lignes: 250
- Lignes non vides: 235
- Lignes commentées: 8
- Lignes valides: 227

Analyse des mots:
- Nombre total de mots: 1,245
- Mots uniques: 456
- Mot le plus fréquent: "données" (23 occurrences)
- Longueur moyenne des mots: 6.2 caractères

Analyse des lignes:
- Longueur moyenne: 28.5 caractères
- Ligne la plus longue: 78 caractères
- Ligne la plus courte: 5 caractères

Votre choix: 5

=== GÉNÉRATION DU RAPPORT ===
Génération en cours avec Streams...

Rapport généré avec succès!
- Fichier: /home/user/rapport.txt
- Taille: 2,145 octets
- Sections: 5

Contenu du rapport:
1. Résumé du fichier
2. Statistiques des lignes
3. Analyse des mots
4. Recommandations
5. Métadonnées

Votre choix: 6

=== TRAITEMENT PAR LOTS ===
Traitement en cours avec Streams...

Fichiers traités: 5
- donnees1.txt: 250 lignes, 1,245 mots
- donnees2.txt: 180 lignes, 890 mots
- donnees3.txt: 320 lignes, 1,567 mots
- donnees4.txt: 150 lignes, 678 mots
- donnees5.txt: 200 lignes, 1,023 mots

Total: 1,100 lignes, 5,403 mots
Temps de traitement: 2.3 secondes
```

## 🧪 Tests à Valider

- [ ] Lecture de fichiers avec Streams
- [ ] Traitement des lignes avec map
- [ ] Filtrage avec filter
- [ ] Analyse avec reduce et collect
- [ ] Écriture avec forEach
- [ ] Traitement par lots
- [ ] Génération de rapports

## 💡 Conseils

- Utilisez les Streams pour le traitement de fichiers
- Implémentez des lambdas pour les opérations
- Gérer des fichiers de grande taille efficacement
- Utilisez les opérations de stream appropriées
- Testez avec des fichiers de différentes tailles

## 🎯 Fichiers à Créer

- `solutions/FichierDonnees.java`
- `solutions/TraitementFichiers.java`
- `solutions/AnalyseurFichiers.java`
- `solutions/GestionnaireFichiers.java`

**Bon courage !** 🚀
