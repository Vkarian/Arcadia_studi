DROP SCHEMA IF EXISTS arcadia;
CREATE DATABASE arcadia;

CREATE TABLE arcadia.role
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(50) NOT NULL
)

CREATE TABLE arcadia.utilisateur
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    email VARCHAR(250) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id) 
        REFERENCES role(id)
)

CREATE TABLE arcadia.rapport_veterinaire
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date DATE NOT NULL,
    etat VARCHAR(50) NOT NULL,
    alimentation VARCHAR(50) NOT NULL,
    utilisateur_id INT NOT NULL,
    FOREIGN KEY (utilisateur_id) 
        REFERENCES utilisateur(id)
)

CREATE TABLE arcadia.animal
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    prenom VARCHAR(50) NOT NULL,
    rapport_veterinaire_id INT NULL,
    race_id INT NOT NULL,
    image_id INT NULL,
    habitat_id INT NOT NULL,
    FOREIGN KEY (rapport_veterinaire_id) 
        REFERENCES rapport_veterinaire(id),
    FOREIGN KEY (race_id)
        REFERENCES race(id),
    FOREIGN KEY (image_id)
        REFERENCES image(id),
    FOREIGN KEY (habitat_id)
        REFERENCES habitat(id)
)

CREATE TABLE arcadia.race
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(50) NOT NULL
)

CREATE TABLE arcadia.habitat
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    description VARCHAR(250) NOT NULL,
    image_id INT NULL,
    FOREIGN KEY (image_id)
        REFERENCES image(id)
)

CREATE TABLE arcadia.image
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    image_data BLOB NOT NULL
)

CREATE TABLE arcadia.service
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    description VARCHAR(250) NOT NULL
)

CREATE TABLE arcadia.avis
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pseudo VARCHAR(50) NOT NULL,
    commentaire VARCHAR(250) NOT NULL,
    isVisible BOOL
)