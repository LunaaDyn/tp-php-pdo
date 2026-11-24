-- =====================================================================
--  TP 8 – LEFT JOIN : GARDER LES LIGNES SANS CORRESPONDANCE
--  ---------------------------------------------------------------------
--  Tables utilisées : editeur, jeu, membre, emprunt
--
--  INNER JOIN : ne garde que les lignes qui ont une correspondance des
--               DEUX côtés (un éditeur sans jeu disparaît).
--  LEFT JOIN  : garde TOUTES les lignes de la table de GAUCHE (celle du FROM),
--               même sans correspondance. Les colonnes de la table de droite
--               sont alors remplies avec NULL.
--
--      SELECT e.nom, j.titre
--      FROM editeur e                         ← table de gauche : tout est gardé
--      LEFT JOIN jeu j ON j.editeur_id = e.id ← table de droite : NULL si rien
--
--  L'ordre des tables compte : c'est la table du FROM qui est entièrement gardée.
-- =====================================================================

USE ludotheque_sql;

-- 1. Tous les éditeurs avec le titre de leurs jeux, y compris les éditeurs
--    qui n'ont aucun jeu, triés par nom d'éditeur.
--    Résultat attendu : 13 lignes, dont une avec un titre NULL



-- 2. La même requête avec INNER JOIN. Quelle ligne a disparu ?
--    Résultat attendu : 12 lignes



-- 3. Les éditeurs qui n'ont AUCUN jeu.
--    Aide : LEFT JOIN, puis ne gardez que les lignes où le côté droit est vide.
--    Résultat attendu : 1 ligne



-- 4. Le nombre de jeux par éditeur, y compris ceux qui en ont 0.
--    Résultat attendu : 9 lignes, dont une à 0
--    Attention : essayez COUNT(*) puis COUNT(j.id). Lequel est juste ? Pourquoi ?



-- 5. Les jeux qui n'ont JAMAIS été empruntés.
--    Résultat attendu : 5 lignes



-- 6. Les membres qui n'ont jamais emprunté de jeu (prénom et nom).
--    Résultat attendu : 1 ligne



-- 7. Le nombre d'emprunts de chaque membre, y compris ceux qui n'ont
--    jamais emprunté, du plus grand au plus petit.
--    Résultat attendu : 6 lignes, Lucas 0 en dernier



-- 8. Le nombre d'emprunts de chaque jeu, y compris 0, du plus grand au plus petit.
--    Résultat attendu : 12 lignes, dont 5 jeux à 0



-- QUESTION : on écrit  FROM jeu j LEFT JOIN editeur e ON j.editeur_id = e.id.
--   Ubisoft apparaît-il ? Pourquoi ?
-- RÉPONSE  :
