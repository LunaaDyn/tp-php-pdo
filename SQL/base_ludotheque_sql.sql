-- =====================================================
--  TP SQL : base "ludotheque_sql"
--  A importer dans phpMyAdmin (onglet Importer)
--  ou à copier-coller dans l'onglet SQL.
--
--  4 tables :
--    editeur  : les éditeurs de jeux vidéo
--    jeu      : les jeux (chaque jeu a un éditeur → editeur_id)
--    membre   : les membres de la ludothèque
--    emprunt  : qui a emprunté quel jeu, et quand
--               (date_retour vide = NULL → jeu pas encore rendu)
-- =====================================================

CREATE DATABASE IF NOT EXISTS ludotheque_sql CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE ludotheque_sql;
SET NAMES utf8mb4;

DROP TABLE IF EXISTS emprunt;
DROP TABLE IF EXISTS jeu;
DROP TABLE IF EXISTS membre;
DROP TABLE IF EXISTS editeur;

CREATE TABLE editeur (
  id    INT AUTO_INCREMENT PRIMARY KEY,
  nom   VARCHAR(50) NOT NULL,
  pays  VARCHAR(30) NOT NULL
);

CREATE TABLE jeu (
  id          INT AUTO_INCREMENT PRIMARY KEY,
  titre       VARCHAR(50) NOT NULL,
  genre       VARCHAR(20) NOT NULL,
  annee       INT NOT NULL,
  note        INT NOT NULL,            -- note sur 20
  editeur_id  INT NOT NULL,
  FOREIGN KEY (editeur_id) REFERENCES editeur(id)
);

CREATE TABLE membre (
  id      INT AUTO_INCREMENT PRIMARY KEY,
  prenom  VARCHAR(30) NOT NULL,
  nom     VARCHAR(30) NOT NULL,
  ville   VARCHAR(30) NOT NULL
);

CREATE TABLE emprunt (
  id            INT AUTO_INCREMENT PRIMARY KEY,
  jeu_id        INT NOT NULL,
  membre_id     INT NOT NULL,
  date_emprunt  DATE NOT NULL,
  date_retour   DATE NULL,             -- NULL = pas encore rendu
  FOREIGN KEY (jeu_id)    REFERENCES jeu(id),
  FOREIGN KEY (membre_id) REFERENCES membre(id)
);

INSERT INTO editeur (id, nom, pays) VALUES
(1, 'Nintendo',           'Japon'),
(2, 'Microsoft',          'États-Unis'),
(3, 'Epic Games',         'États-Unis'),
(4, 'Electronic Arts',    'États-Unis'),
(5, 'Sony',               'Japon'),
(6, 'Innersloth',         'États-Unis'),
(7, 'ConcernedApe',       'États-Unis'),
(8, 'The Tetris Company', 'États-Unis'),
(9, 'Ubisoft',            'France'),
(10, 'Sega',              'Japon');

INSERT INTO jeu (id, titre, genre, annee, note, editeur_id) VALUES
(1,  'Minecraft',                'Aventure',  2011, 18, 2),
(2,  'Rocket League',            'Sport',     2015, 16, 3),
(3,  'Mario Kart 8',             'Course',    2014, 17, 1),
(4,  'Fortnite',                 'Action',    2017, 14, 3),
(5,  'Tetris',                   'Réflexion', 1984, 19, 8),
(6,  'FIFA 23',                  'Sport',     2022, 13, 4),
(7,  'Zelda Breath of the Wild', 'Aventure',  2017, 20, 1),
(8,  'Among Us',                 'Réflexion', 2018, 15, 6),
(9,  'Gran Turismo 7',           'Course',    2022, 15, 5),
(10, 'Stardew Valley',           'Aventure',  2016, 17, 7),
(11, 'Super Mario Odyssey',      'Aventure',  2017, 19, 1),
(12, 'Splatoon 3',               'Action',    2022, 16, 1),
(13, 'Sonic Mania',              'Action',    2017, 18, 10);

INSERT INTO membre (id, prenom, nom, ville) VALUES
(1, 'Léa',    'Martin',  'Paris'),
(2, 'Hugo',   'Bernard', 'Lyon'),
(3, 'Chloé',  'Petit',   'Marseille'),
(4, 'Nathan', 'Durand',  'Paris'),
(5, 'Inès',   'Moreau',  'Lyon'),
(6, 'Lucas',  'Laurent', 'Bordeaux');

INSERT INTO emprunt (id, jeu_id, membre_id, date_emprunt, date_retour) VALUES
(1,  3,  1, '2026-09-02', '2026-09-09'),
(2,  7,  1, '2026-09-15', '2026-09-29'),
(3,  1,  2, '2026-09-03', '2026-09-10'),
(4,  3,  2, '2026-09-20', '2026-09-27'),
(5,  2,  3, '2026-09-05', '2026-09-12'),
(6,  7,  4, '2026-10-01', '2026-10-15'),
(7,  11, 4, '2026-10-03', NULL),
(8,  3,  5, '2026-10-05', '2026-10-12'),
(9,  5,  5, '2026-10-10', NULL),
(10, 7,  2, '2026-10-20', NULL),
(11, 8,  3, '2026-10-22', '2026-10-29'),
(12, 1,  1, '2026-11-02', NULL),
(13, 3,  1, '2026-11-10', NULL);
