-- Script d'initialisation MySQL pour le programme d'entraînement Java
-- Ce script crée les tables nécessaires pour tous les défis

USE training_db;

-- Table pour le défi 3.5 (Gestionnaire de Contacts)
CREATE TABLE IF NOT EXISTS contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    telephone VARCHAR(20),
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table pour le défi 4 (Comptes Bancaires)
CREATE TABLE IF NOT EXISTS comptes_bancaires (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero_compte VARCHAR(20) UNIQUE NOT NULL,
    nom_titulaire VARCHAR(100) NOT NULL,
    solde DECIMAL(15,2) DEFAULT 0.00,
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table pour les transactions bancaires
CREATE TABLE IF NOT EXISTS transactions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    compte_id INT NOT NULL,
    type_transaction ENUM('DEPOT', 'RETRAIT', 'VIREMENT') NOT NULL,
    montant DECIMAL(15,2) NOT NULL,
    description TEXT,
    date_transaction TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (compte_id) REFERENCES comptes_bancaires(id)
);

-- Table pour le défi 5 (Bibliothèque)
CREATE TABLE IF NOT EXISTS livres (
    id INT PRIMARY KEY AUTO_INCREMENT,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    titre VARCHAR(200) NOT NULL,
    auteur VARCHAR(100) NOT NULL,
    categorie VARCHAR(50),
    annee_publication INT,
    disponible BOOLEAN DEFAULT TRUE,
    date_ajout TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS membres (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero_membre VARCHAR(20) UNIQUE NOT NULL,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    telephone VARCHAR(20),
    date_inscription TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS emprunts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    livre_id INT NOT NULL,
    membre_id INT NOT NULL,
    date_emprunt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_retour_prevue TIMESTAMP,
    date_retour TIMESTAMP NULL,
    statut ENUM('EN_COURS', 'RETOURNE', 'EN_RETARD') DEFAULT 'EN_COURS',
    FOREIGN KEY (livre_id) REFERENCES livres(id),
    FOREIGN KEY (membre_id) REFERENCES membres(id)
);

-- Données d'exemple
INSERT INTO contacts (nom, prenom, email, telephone) VALUES
('Dupont', 'Jean', 'jean.dupont@email.com', '0123456789'),
('Martin', 'Marie', 'marie.martin@email.com', '0987654321');

INSERT INTO comptes_bancaires (numero_compte, nom_titulaire, solde) VALUES
('CB001', 'Jean Dupont', 1500.00),
('CB002', 'Marie Martin', 2500.00);

INSERT INTO livres (isbn, titre, auteur, categorie, annee_publication) VALUES
('978-0134685991', 'Effective Java', 'Joshua Bloch', 'Programming', 2018),
('978-0596009205', 'Head First Java', 'Kathy Sierra', 'Programming', 2005),
('978-0132350884', 'Clean Code', 'Robert Martin', 'Programming', 2008);

INSERT INTO membres (numero_membre, nom, prenom, email, telephone) VALUES
('M001', 'Dupont', 'Jean', 'jean.dupont@email.com', '0123456789'),
('M002', 'Martin', 'Marie', 'marie.martin@email.com', '0987654321');
