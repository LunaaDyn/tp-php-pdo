-- =====================================================================
--  TP 7 – JOINTURES SUR PLUSIEURS TABLES
--  ---------------------------------------------------------------------
--  Tables utilisées : emprunt, jeu, membre, editeur
--
--  La table emprunt ne contient que des numéros :
--      emprunt.jeu_id     → jeu.id
--      emprunt.membre_id  → membre.id
--  et chaque jeu pointe vers son éditeur :
--      jeu.editeur_id     → editeur.id
--
--  On peut enchaîner autant de JOIN que nécessaire, un par table ajoutée :
--
--      SELECT ...
--      FROM emprunt em
--      JOIN jeu j    ON em.jeu_id = j.id
--      JOIN membre m ON em.membre_id = m.id
--
--  (Alias em pour emprunt, car e sert déjà pour editeur.)
-- =====================================================================

USE ludotheque_sql;

-- 1. Pour chaque emprunt : la date d'emprunt, le prénom et le nom du membre.
--    Résultat attendu : 13 lignes



-- 2. Pour chaque emprunt : la date d'emprunt, le titre du jeu et le prénom
--    du membre, du plus ancien emprunt au plus récent.
--    Résultat attendu : 13 lignes, 2026-09-02 Mario Kart 8 - Léa en premier



-- 3. Les emprunts en cours (pas encore rendus) : titre du jeu, prénom du
--    membre et date d'emprunt.
--    Résultat attendu : 5 lignes



-- 4. Les titres des jeux empruntés par Léa, sans doublons.
--    Résultat attendu : 3 lignes



-- 5. Le nombre d'emprunts par membre, avec son prénom, du plus grand au plus petit.
--    Résultat attendu : 5 lignes, Léa 4 en premier



-- 6. Le nombre d'emprunts par jeu (titre), du plus emprunté au moins emprunté.
--    Résultat attendu : 7 lignes, Mario Kart 8 4 en premier



-- 7. Les membres de Lyon et les jeux qu'ils ont empruntés
--    (prénom, titre, date d'emprunt), triés par prénom puis par date.
--    Résultat attendu : 5 lignes



-- 8. Quatre tables : pour chaque emprunt, le titre du jeu, le nom de son
--    éditeur et le prénom du membre.
--    Résultat attendu : 13 lignes



-- 9. Le nombre d'emprunts par éditeur, du plus grand au plus petit.
--    Résultat attendu : 5 lignes, Nintendo 8 en premier



-- 10. BONUS : la durée (en jours) de chaque emprunt rendu, avec le titre
--     et le prénom, du plus long au plus court.
--     Aide : DATEDIFF(date1, date2) donne le nombre de jours entre deux dates.
--     Résultat attendu : 8 lignes, les plus longs durent 14 jours



-- QUESTION : la requête 6 affiche 7 jeux, alors qu'il y en a 12 dans la table.
--   Où sont passés les 5 autres ?
-- RÉPONSE  :
