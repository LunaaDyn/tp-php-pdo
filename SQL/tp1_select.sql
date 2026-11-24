-- =====================================================================
--  TP 1 – SELECT : LIRE LES DONNÉES D'UNE TABLE
--  ---------------------------------------------------------------------
--  Tables utilisées : jeu, membre
--
--  STRUCTURE D'UNE REQUÊTE DE LECTURE :
--      SELECT colonnes      → QUOI afficher
--      FROM   table         → OÙ chercher
--
--  MOTS-CLÉS À UTILISER :
--    *            → toutes les colonnes
--    AS           → renommer une colonne dans le résultat
--    DISTINCT     → supprimer les doublons
--    LIMIT n      → ne garder que les n premières lignes
--
--  Écrivez chaque requête sous sa question, terminée par un point-virgule ;
--  Vérifiez votre résultat avec le "Résultat attendu".
-- =====================================================================

USE ludotheque_sql;

-- 1. Afficher tout le contenu de la table jeu.
--    Résultat attendu : 12 lignes, 6 colonnes

SELECT * FROM jeu;

-- 2. Afficher uniquement le titre et la note de chaque jeu.
--    Résultat attendu : 12 lignes, 2 colonnes

SELECT titre, note FROM jeu;

-- 3. Afficher le titre et l'année, en renommant les colonnes
--    "Jeu" et "Année de sortie".
--    Résultat attendu : 12 lignes, en-têtes Jeu | Année de sortie

SELECT titre AS 'Jeu', annee AS 'Année de sortie' FROM jeu;

-- 4. Afficher la liste des genres, sans doublons.
--    Résultat attendu : 5 lignes

SELECT DISTINCT genre FROM jeu;

-- 5. Afficher les 3 premières lignes de la table jeu.
--    Résultat attendu : Minecraft, Rocket League, Mario Kart 8

SELECT titre FROM jeu LIMIT 3;

-- 6. Afficher le titre et la note sur 100 (note × 5),
--    dans une colonne nommée note_sur_100.
--    Résultat attendu : Minecraft 90, ..., Zelda Breath of the Wild 100

SELECT titre, note*5 AS 'note_sur_100' FROM jeu;

-- 7. Afficher le prénom, le nom et la ville de tous les membres.
--    Résultat attendu : 6 lignes

SELECT prenom, nom, ville FROM membre;

-- 8. Afficher la liste des villes des membres, sans doublons.
--    Résultat attendu : 4 lignes

SELECT DISTINCT ville FROM membre;

-- QUESTION : pourquoi vaut-il mieux éviter SELECT * dans une application ?
-- RÉPONSE  : pour éviter d'obtenir des infos que les gens ne sont pas cénsés savoir.
