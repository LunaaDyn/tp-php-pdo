-- =====================================================================
--  TP 2 – WHERE : FILTRER LES LIGNES
--  ---------------------------------------------------------------------
--  Tables utilisées : jeu, emprunt
--
--      SELECT colonnes
--      FROM   table
--      WHERE  condition     → ne garde que les lignes où la condition est vraie
--
--  OPÉRATEURS :
--    =  <>  <  >  <=  >=     comparaison ( <> veut dire "différent de" )
--    AND / OR                combiner deux conditions
--    BETWEEN a AND b         entre a et b (bornes incluses)
--    IN ('a', 'b')           égal à une des valeurs de la liste
--    LIKE 'S%'               ressemble à un modèle : % = "n'importe quoi"
--    IS NULL / IS NOT NULL   la case est vide / n'est pas vide
--
--  Les textes et les dates s'écrivent entre apostrophes : 'Sport', '2026-10-01'
--  Les nombres s'écrivent sans apostrophes : 2015
-- =====================================================================

USE ludotheque_sql;

-- 1. Les jeux du genre Aventure (toutes les colonnes).
--    Résultat attendu : 4 lignes

SELECT * FROM jeu WHERE genre = 'aventure';

-- 2. Le titre et la note des jeux notés 17 ou plus.
--    Résultat attendu : 6 lignes

SELECT titre, note FROM jeu WHERE note >= 17;

-- 3. Le titre et l'année des jeux sortis avant 2015.
--    Résultat attendu : 3 lignes

SELECT titre, annee FROM jeu WHERE annee < 2015;

-- 4. Le titre et le genre des jeux qui ne sont PAS du genre Aventure.
--    Résultat attendu : 8 lignes

SELECT titre, genre FROM jeu WHERE NOT genre = 'Aventure';

-- 5. Le titre et le genre des jeux de Course OU de Sport.
--    Résultat attendu : 4 lignes

SELECT titre, genre FROM jeu WHERE genre = 'Course' OR genre = 'Sport';

-- 6. Le titre et la note des jeux d'Aventure notés plus de 18.
--    Résultat attendu : 2 lignes (Zelda Breath of the Wild, Super Mario Odyssey)

SELECT titre, note FROM jeu WHERE genre = 'Aventure' AND note > 18;

-- 7. Le titre et l'année des jeux sortis entre 2015 et 2018 inclus (avec BETWEEN).
--    Résultat attendu : 6 lignes

SELECT titre, annee FROM jeu WHERE annee BETWEEN 2015 AND 2018;

-- 8. Le titre et le genre des jeux d'Action ou de Réflexion (avec IN).
--    Résultat attendu : 4 lignes

SELECT titre, genre FROM jeu WHERE genre IN("Action", "Réflexion");

-- 9. Les jeux dont le titre commence par S.
--    Résultat attendu : 3 lignes

SELECT titre FROM jeu WHERE titre LIKE 's%';

-- 10. Les jeux dont le titre contient "Mario".
--     Résultat attendu : 2 lignes

SELECT titre FROM jeu WHERE titre LIKE '%Mario%';

-- 11. Table emprunt : les emprunts qui n'ont pas encore été rendus
--     (date_retour est vide).
--     Résultat attendu : 5 lignes
--     Essayez d'abord avec  = NULL  : que se passe-t-il ?

SELECT * FROM emprunt WHERE date_retour IS NULL;

-- 12. Table emprunt : les emprunts faits en octobre 2026.
--     Résultat attendu : 6 lignes

SELECT * FROM emprunt WHERE date_emprunt LIKE "2026-10-%";

-- QUESTION : que renvoie  WHERE genre = 'Sport' AND genre = 'Course'  ? Pourquoi ?
-- RÉPONSE  : rien car une colonne ne peut pas avoir 2 valeures
