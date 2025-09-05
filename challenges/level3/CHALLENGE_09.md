# 🎯 Défi 9 : Système de Gestion d'Animaux

## 📝 Description du Problème

Vous devez créer un système de gestion d'animaux utilisant l'héritage et le polymorphisme. Le système doit gérer différents types d'animaux (mammifères, oiseaux, poissons) avec des comportements spécifiques et des caractéristiques communes.

## 🎯 Objectifs d'Apprentissage

- Maîtriser l'héritage multi-niveaux
- Implémenter des interfaces et classes abstraites
- Utiliser le polymorphisme avancé
- Gérer des hiérarchies complexes
- Comprendre les relations entre classes

## 📋 Spécifications

### Classes à Créer

1. **Classe abstraite `Animal`** :
   - Attributs : nom, âge, poids, habitat
   - Méthodes concrètes : manger(), dormir(), afficherInfo()
   - Méthodes abstraites : seDeplacer(), faireSon()

2. **Classe abstraite `Mammifere` (hérite de Animal)** :
   - Attribut spécifique : nombre de pattes
   - Méthode concrète : allaiter()
   - Méthode abstraite : typeFourrure()

3. **Classe `Chien` (hérite de Mammifere)** :
   - Attributs spécifiques : race, dressé
   - Implémentation des méthodes abstraites
   - Méthodes spécifiques : aboyer(), dresser()

4. **Classe `Chat` (hérite de Mammifere)** :
   - Attributs spécifiques : race, independant
   - Implémentation des méthodes abstraites
   - Méthodes spécifiques : miauler(), chasser()

5. **Classe abstraite `Oiseau` (hérite de Animal)** :
   - Attribut spécifique : envergure
   - Méthode concrète : voler()
   - Méthode abstraite : typePlumage()

6. **Classe `Aigle` (hérite de Oiseau)** :
   - Attributs spécifiques : vision, territoire
   - Implémentation des méthodes abstraites
   - Méthodes spécifiques : chasser(), planer()

7. **Classe `GestionnaireAnimaux`** :
   - Gérer la collection d'animaux
   - Menu interactif pour les opérations
   - Utilisation du polymorphisme avancé

### Fonctionnalités Requises

1. **Menu principal** :
   ```
   === SYSTÈME DE GESTION D'ANIMAUX ===
   1. Ajouter un chien
   2. Ajouter un chat
   3. Ajouter un aigle
   4. Afficher tous les animaux
   5. Faire bouger un animal
   6. Faire chanter un animal
   7. Statistiques par type
   8. Animaux par habitat
   9. Comportements spécifiques
   10. Quitter
   ```

2. **Comportements spécifiques** :
   - Chien : dressage, aboiement
   - Chat : chasse, miaulement
   - Aigle : chasse aérienne, planage

## 🔧 Contraintes Techniques

- Utiliser l'héritage multi-niveaux
- Implémenter des classes abstraites
- Utiliser le polymorphisme pour les comportements
- Gérer des hiérarchies complexes
- Code modulaire avec séparation des responsabilités

## 📝 Exemple d'Exécution

```
=== SYSTÈME DE GESTION D'ANIMAUX ===
1. Ajouter un chien
2. Ajouter un chat
3. Ajouter un aigle
4. Afficher tous les animaux
5. Faire bouger un animal
6. Faire chanter un animal
7. Statistiques par type
8. Animaux par habitat
9. Comportements spécifiques
10. Quitter
Votre choix: 1

Entrez le nom: Rex
Entrez l'âge: 3
Entrez le poids: 25.5
Entrez l'habitat: Maison
Entrez la race: Labrador
Le chien est-il dressé? (o/n): o
Chien ajouté avec succès!

Votre choix: 2
Entrez le nom: Minou
Entrez l'âge: 2
Entrez le poids: 4.2
Entrez l'habitat: Appartement
Entrez la race: Persan
Le chat est-il indépendant? (o/n): o
Chat ajouté avec succès!

Votre choix: 4

=== TOUS LES ANIMAUX ===
1. Rex (Chien) - 3 ans, 25.5kg, Maison, Labrador, Dressé
2. Minou (Chat) - 2 ans, 4.2kg, Appartement, Persan, Indépendant

Votre choix: 5
Entrez l'index de l'animal: 1
Rex court sur ses 4 pattes!

Votre choix: 6
Entrez l'index de l'animal: 2
Minou fait "Miaou Miaou"!

Votre choix: 9
Entrez l'index de l'animal: 1

=== COMPORTEMENTS SPÉCIFIQUES DE REX ===
Rex aboie: "Wouf Wouf!"
Rex peut être dressé: Oui
Rex a une fourrure: Dense et courte

Votre choix: 7

=== STATISTIQUES PAR TYPE ===
Mammifères: 2 animal(s)
- Chiens: 1 (50.0%)
- Chats: 1 (50.0%)
Oiseaux: 0 animal(s)
- Aigles: 0 (0.0%)

Répartition par habitat:
- Maison: 1 animal(s)
- Appartement: 1 animal(s)
- Forêt: 0 animal(s)
- Mer: 0 animal(s)
```

## 🧪 Tests à Valider

- [ ] Création d'animaux avec héritage multi-niveaux
- [ ] Implémentation des méthodes abstraites
- [ ] Comportements spécifiques par type
- [ ] Utilisation du polymorphisme
- [ ] Méthodes spécifiques par classe
- [ ] Statistiques par type et habitat
- [ ] Gestion des hiérarchies complexes

## 💡 Conseils

- Commencez par créer la classe parente Animal
- Implémentez les classes intermédiaires (Mammifere, Oiseau)
- Utilisez le polymorphisme pour les comportements communs
- Créez des méthodes spécifiques pour chaque type
- Testez chaque niveau de la hiérarchie

## 🎯 Fichiers à Créer

- `solutions/Animal.java`
- `solutions/Mammifere.java`
- `solutions/Chien.java`
- `solutions/Chat.java`
- `solutions/Oiseau.java`
- `solutions/Aigle.java`
- `solutions/GestionnaireAnimaux.java`

**Bon courage !** 🚀
