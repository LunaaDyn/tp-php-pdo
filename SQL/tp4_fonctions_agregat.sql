-- =====================================================================
--  TP 4 – FONCTIONS D'AGRÉGAT : COMPTER, MOYENNE, MIN, MAX
--  ---------------------------------------------------------------------
--  Tables utilisées : jeu, emprunt
--
--  Une fonction d'agrégat transforme PLUSIEURS lignes en UNE SEULE valeur.
--
--    COUNT(*)            → nombre de lignes
--    COUNT(DISTINCT col) → nombre de valeurs différentes
--    SUM(col)            → somme
--    AVG(col)            → moyenne
--    MIN(col) / MAX(col) → plus petite / plus grande valeur
--    ROUND(valeur, n)    → arrondi à n décimales
--
--  Donnez un nom à chaque résultat avec AS (ex. AS nb_jeux).
-- =====================================================================

USE ludotheque_sql;

-- 1. Le nombre total de jeux.
--    Résultat attendu : 12



-- 2. La note moyenne de tous les jeux, arrondie à 1 décimale.
--    Résultat attendu : 16.6



-- 3. La meilleure note et la plus mauvaise note, dans la même requête.
--    Résultat attendu : 20 et 13



-- 4. L'année du jeu le plus ancien et celle du plus récent.
--    Résultat attendu : 1984 et 2022



-- 5. Le nombre de jeux d'Aventure.
--    Résultat attendu : 4



-- 6. La note moyenne des jeux de Sport.
--    Résultat attendu : 14.5



-- 7. La somme de toutes les notes.
--    Résultat attendu : 199



-- 8. Le nombre de genres différents.
--    Résultat attendu : 5



-- 9. Table emprunt : le nombre total d'emprunts, puis (2e requête)
--    le nombre d'emprunts pas encore rendus.
--    Résultat attendu : 13, puis 5



-- 10. Table emprunt : le nombre de membres différents qui ont déjà emprunté.
--     Résultat attendu : 5



-- QUESTION : on veut le titre du jeu le mieux noté. Pourquoi
--   SELECT titre, MAX(note) FROM jeu;   ne donne-t-il pas la bonne réponse ?
--   Comment faire ?
-- RÉPONSE  :
