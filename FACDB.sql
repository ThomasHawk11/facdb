CREATE TABLE Personne (
    Identifiant INTEGER PRIMARY KEY AUTOINCREMENT,
    Nom TEXT NOT NULL,
    Prenom TEXT NOT NULL,
    DateNaissance TEXT NOT NULL,
    NumeroTelephone TEXT NOT NULL,
    Taille INTEGER,
    ExamPsycho INTEGER NOT NULL
);

CREATE TABLE Arme (
    Identifiant INTEGER PRIMARY KEY AUTOINCREMENT,
    NumeroSerie TEXT NOT NULL,
    PersonneID INTEGER NOT NULL,
    FOREIGN KEY (PersonneID) REFERENCES Personne(Identifiant)
);

CREATE TABLE Modèle (
    Identifiant INTEGER PRIMARY KEY AUTOINCREMENT,
    Libelle TEXT NOT NULL,
    Calibre REAL,
    CategorieID INTEGER NOT NULL,
    FOREIGN KEY (CategorieID) REFERENCES Catégorie(Identifiant)
);

CREATE TABLE Catégorie (
    Identifiant INTEGER PRIMARY KEY AUTOINCREMENT,
    Categorie TEXT NOT NULL
);

CREATE TABLE Permis (
    Identifiant INTEGER PRIMARY KEY AUTOINCREMENT,
    Type TEXT NOT NULL,
    estAnnule INTEGER NOT NULL,
    estSuspendu INTEGER NOT NULL,
    PersonneID INTEGER NOT NULL,
    FOREIGN KEY (PersonneID) REFERENCES Personne(Identifiant)
);


INSERT INTO Personne (Nom, Prenom, DateNaissance, NumeroTelephone, Taille, ExamPsycho) 
VALUES 
('Doe', 'John', '1990-01-01', '555-0000', 180, 1);
('Némar', 'Jean', '2000-05-10', '555-0000', 185, 1);
('Doe', 'Jane', '1995-08-01', '555-0000', 170, 1);
('Némar', 'Jeanne', '2001-10-10', '555-0000', 165, 0);

INSERT INTO Arme (NumeroSerie, PersonneID)
VALUES
('123456789', 1),
('987654321', 2),
('123456789', 3),

INSERT INTO Modèle (Libelle, Calibre, CategorieID)
VALUES
('Remington', '12',1),
('Sawed-Off', '12',1),
('AA-12', '12',1),
('SAIGA 12', '12',1),
('Canon scié', '12',1),
('MP5', '9',1),
('Thompson', '45',1),
('AK', '7.62',1),
('M4', '5.56',1),
('G36C', '5.56',1),
('AKU', '7.62',1),
('UZI', '9',1),
('TEC-9', '9',1),
('Scorpion', '9',2),
('Berreta', '9',2),
('Glock 17', '9',2),
('Desert Eagle','50',2),
('Pétoire', '45',2),
('Colt M1911', '45',2),
('Pistolet Vintage', '22',2),
('Revolver', '38',2),
('Tazer', '',,2),
('Beanbag', '',2),
('Mousquet', '',3);

INSERT INTO Catégorie (Categorie)
VALUES
('B1'),
('B2'),
('C');

INSERT INTO Permis (Type, PersonneID)
VALUES
('Lourd', 1),
('Léger', 2),
('Chasse', 3);

-- Path: FACBD.sql

