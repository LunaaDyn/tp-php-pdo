-- =====================================================================
--  TP 3 – ORDER BY : TRIER LES RÉSULTATS
--  ---------------------------------------------------------------------
--  Tables utilisées : jeu, membre
--
--      SELECT colonnes
--      FROM   table
--      WHERE  condition
--      ORDER BY colonne [ASC | DESC]
--      LIMIT  n
--
--  ASC  = croissant (A → Z, 1 → 9, ancien → récent) : c'est la valeur par défaut
--  DESC = décroissant (Z → A, 9 → 1, récent → ancien)
--
--  L'ORDRE DES MOTS-CLÉS EST IMPOSÉ : SELECT, FROM, WHERE, ORDER BY, LIMIT.
-- =====================================================================

USE ludotheque_sql;

-- 1. Le titre de tous les jeux, par ordre alphabétique.
--    Résultat attendu : Among Us en premier, Zelda Breath of the Wild en dernier



-- 2. Le titre et la note de tous les jeux, du mieux noté au moins bien noté.
--    Résultat attendu : Zelda (20) en premier, FIFA 23 (13) en dernier



-- 3. Le titre et l'année de tous les jeux, du plus récent au plus ancien.
--    Résultat attendu : les jeux de 2022 en premier, Tetris (1984) en dernier



-- 4. Le titre, le genre et la note, triés par genre (A → Z),
--    puis par note décroissante à l'intérieur de chaque genre.
--    Résultat attendu : Splatoon 3 (Action, 16), Fortnite (Action, 14),
--                       Zelda (Aventure, 20) ...



-- 5. Le top 3 des jeux les mieux notés (titre et note).
--    Résultat attendu : 3 lignes, Zelda Breath of the Wild en premier



-- 6. Le jeu le plus ancien (une seule ligne : titre et année).
--    Résultat attendu : Tetris (1984)



-- 7. Le titre et la note des jeux d'Aventure, du mieux noté au moins bien noté.
--    Résultat attendu : Zelda (20), Super Mario Odyssey (19), Minecraft (18),
--                       Stardew Valley (17)



-- 8. Les 2 jeux les plus récents parmi ceux notés 16 ou plus
--    (titre, année, note).
--    Résultat attendu : Splatoon 3 (2022), puis un jeu de 2017



-- 9. La ville, le nom et le prénom des membres, triés par ville, puis par nom.
--    Résultat attendu : Bordeaux - Laurent en premier, Paris - Martin en dernier



-- QUESTION : dans la requête 5, remplacez LIMIT 3 par LIMIT 2. Tetris et
--   Super Mario Odyssey ont tous les deux 19/20 : lequel des deux s'affiche ?
--   Comment rendre le résultat toujours identique ?
-- RÉPONSE  :
