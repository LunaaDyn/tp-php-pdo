-- =====================================================================
--  TP 5 – GROUP BY : CALCULER PAR GROUPE
--  ---------------------------------------------------------------------
--  Tables utilisées : jeu, membre, emprunt
--
--  Au TP 4, COUNT / AVG / MAX donnaient UN résultat pour toute la table.
--  GROUP BY découpe la table en GROUPES (ex. un groupe par genre) et
--  calcule l'agrégat pour CHAQUE groupe : une ligne de résultat par groupe.
--
--      SELECT genre, COUNT(*)      ← la colonne de regroupement + l'agrégat
--      FROM   jeu
--      WHERE  ...                  ← filtre les LIGNES avant le regroupement
--      GROUP BY genre              ← un groupe par valeur de genre
--      HAVING ...                  ← filtre les GROUPES après le calcul
--      ORDER BY ...
--
--  RÈGLE D'OR : dans le SELECT, on ne met que
--    - les colonnes du GROUP BY,
--    - des fonctions d'agrégat (COUNT, AVG, ...).
-- =====================================================================

USE ludotheque_sql;

-- 1. Le nombre de jeux par genre.
--    Résultat attendu : 5 lignes, dont Aventure 4



-- 2. La note moyenne par genre (arrondie à 1 décimale),
--    du genre le mieux noté au moins bien noté.
--    Résultat attendu : Aventure 18.5 en premier, Sport 14.5 en dernier



-- 3. La meilleure note de chaque genre.
--    Résultat attendu : 5 lignes, dont Aventure 20 et Réflexion 19



-- 4. Le nombre de jeux par année de sortie, de la plus récente à la plus ancienne.
--    Résultat attendu : 8 lignes, 2022 : 3 en premier



-- 5. Les genres qui ont au moins 3 jeux.
--    Résultat attendu : 1 ligne (Aventure 4)
--    Essayez d'abord avec WHERE : que se passe-t-il ?



-- 6. Les genres dont la note moyenne est d'au moins 16.
--    Résultat attendu : 3 lignes



-- 7. Le nombre de jeux sortis depuis 2015 (inclus), par genre.
--    Résultat attendu : 5 lignes, dont Aventure 3



-- 8. Le nombre de membres par ville, de la plus grande à la plus petite.
--    Résultat attendu : Paris 2, Lyon 2, puis Marseille 1, Bordeaux 1



-- 9. Table emprunt : le nombre d'emprunts par membre (membre_id).
--    Résultat attendu : 5 lignes, membre 1 : 4



-- 10. Table emprunt : les jeux (jeu_id) empruntés au moins 2 fois,
--     du plus emprunté au moins emprunté.
--     Résultat attendu : jeu 3 : 4, jeu 7 : 3, jeu 1 : 2



-- QUESTION : quelle est la différence entre WHERE et HAVING ?
-- RÉPONSE  :
