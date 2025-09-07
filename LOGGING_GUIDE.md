# 📚 Guide d'utilisation du Logger en Java

## 🎯 Ce qui a été ajouté

### 1. **Dépendances Maven** (dans `pom.xml`)
```xml
<!-- SLF4J API (interface de logging) -->
<dependency>
    <groupId>org.slf4j</groupId>
    <artifactId>slf4j-api</artifactId>
    <version>2.0.9</version>
</dependency>

<!-- Logback Classic (implémentation de SLF4J) -->
<dependency>
    <groupId>ch.qos.logback</groupId>
    <artifactId>logback-classic</artifactId>
    <version>1.4.11</version>
</dependency>
```

### 2. **Configuration Logback** (dans `src/main/resources/logback.xml`)
- Logs dans la console ET dans des fichiers
- Rotation automatique des fichiers de log
- Configuration spécifique pour votre classe `Calculatrice`

### 3. **Logger dans votre classe Calculatrice**
```java
// Imports ajoutés
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// Logger déclaré
private static final Logger logger = LoggerFactory.getLogger(Calculatrice.class);
```

## 🚀 Comment utiliser le logger dans votre code

### **Niveaux de log disponibles :**
```java
logger.trace("Message très détaillé");  // Niveau le plus bas
logger.debug("Message de débogage");    // Pour le développement
logger.info("Message d'information");   // Fonctionnement normal
logger.warn("Message d'avertissement"); // Attention requise
logger.error("Message d'erreur");       // Problème grave
```

### **Exemples d'utilisation dans vos méthodes :**

#### **1. Dans le constructeur :**
```java
public Calculatrice() {
    logger.info("Initialisation de la calculatrice");
    scanner = new Scanner(System.in, StandardCharsets.UTF_8);
    logger.debug("Scanner initialisé avec l'encodage UTF-8");
}
```

#### **2. Dans vos méthodes d'opération :**
```java
public void add() {
    logger.info("Début de l'opération d'addition");
    final double firstNumber = getFirstNumber();
    final double secondNumber = getSecondNumber();
    final double result = firstNumber + secondNumber;
    logger.info("Addition: {} + {} = {}", firstNumber, secondNumber, result);
    printResult(result);
}
```

#### **3. Dans vos méthodes privées :**
```java
private double getFirstNumber() {
    printMessage(PROMPT_FIRST_NUMBER);
    final double number = getNumber();
    logger.debug("Premier nombre saisi: {}", number);
    return number;
}
```

#### **4. Gestion d'erreurs :**
```java
public void div() {
    final double firstNumber = getFirstNumber();
    final double secondNumber = getSecondNumber();
    
    if (secondNumber == 0) {
        logger.error("Tentative de division par zéro: {} / {}", firstNumber, secondNumber);
        System.out.println("Erreur: Division par zéro impossible!");
        return;
    }
    
    final double result = firstNumber / secondNumber;
    logger.info("Division: {} / {} = {}", firstNumber, secondNumber, result);
    printResult(result);
}
```

## 🎨 Bonnes pratiques

### **1. Utilisez des placeholders `{}` :**
```java
// ✅ BON
logger.info("Utilisateur {} a {} ans", nom, age);

// ❌ MAUVAIS
logger.info("Utilisateur " + nom + " a " + age + " ans");
```

### **2. Logs conditionnels pour les performances :**
```java
if (logger.isDebugEnabled()) {
    logger.debug("Calcul complexe: {}", calculComplexe());
}
```

### **3. Gestion des exceptions :**
```java
try {
    // code qui peut lever une exception
} catch (Exception e) {
    logger.error("Erreur lors de l'opération", e);  // Stack trace automatique
}
```

## 📁 Où trouver les logs

### **Console :**
Les logs s'affichent directement dans votre terminal avec le format :
```
23:49:19.475 [main] INFO com.java.training.solutions.Calculatrice -- Message
```

### **Fichiers :**
- **Dossier :** `logs/`
- **Fichier principal :** `logs/calculatrice.log`
- **Rotation :** Nouveau fichier chaque jour
- **Taille max :** 10MB par fichier
- **Rétention :** 30 jours

## 🔧 Configuration avancée

### **Changer le niveau de log :**
Dans `src/main/resources/logback.xml`, modifiez :
```xml
<logger name="com.java.training.solutions.Calculatrice" level="DEBUG" additivity="false">
```
- `TRACE` : Tous les logs
- `DEBUG` : Debug et plus
- `INFO` : Info et plus (recommandé pour la production)
- `WARN` : Warnings et erreurs seulement
- `ERROR` : Erreurs seulement

### **Désactiver les logs de fichiers :**
Commentez cette ligne dans `logback.xml` :
```xml
<!-- <appender-ref ref="FILE"/> -->
```

## 🎯 Prochaines étapes

1. **Ajoutez des logs dans vos méthodes existantes** progressivement
2. **Testez différents niveaux** de log
3. **Consultez les fichiers de log** dans le dossier `logs/`
4. **Personnalisez la configuration** selon vos besoins

Le logger est maintenant prêt à être utilisé ! 🎉
