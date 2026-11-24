-- =====================================================================
--  TP 6 – JOIN / INNER JOIN : RELIER DEUX TABLES
--  ---------------------------------------------------------------------
--  Tables utilisées : jeu, editeur
--
--  La table jeu ne contient pas le NOM de l'éditeur, seulement son numéro :
--  la colonne editeur_id. C'est une CLÉ ÉTRANGÈRE : elle pointe vers la
--  colonne id de la table editeur.
--
--      jeu                                    editeur
--      id | titre        | editeur_id         id | nom      | pays
--      3  | Mario Kart 8 | 1        ───────►  1  | Nintendo | Japon
--
--  Une JOINTURE recolle les deux tables en associant chaque jeu à la ligne
--  de editeur qui a le même numéro :
--
--      SELECT jeu.titre, editeur.nom
--      FROM jeu
--      INNER JOIN editeur ON jeu.editeur_id = editeur.id;
--
--  - ON indique la condition qui relie les deux tables.
--  - table.colonne évite toute ambiguïté (les deux tables ont une colonne id).
--  - ALIAS de tables : FROM jeu j JOIN editeur e ... puis j.titre, e.nom
-- =====================================================================

USE ludotheque_sql;

-- 1. Le titre de chaque jeu et le nom de son éditeur (avec INNER JOIN).
--    Résultat attendu : 12 lignes, Minecraft - Microsoft en premier



-- 2. La même requête en écrivant JOIN au lieu de INNER JOIN.
--    Comparez les deux résultats : que constatez-vous ?



-- 3. Le titre, le genre, le nom et le pays de l'éditeur, en utilisant des
--    alias de tables (j et e), triés par nom d'éditeur puis par titre.
--    Renommez la colonne du nom de l'éditeur en "editeur".
--    Résultat attendu : 12 lignes, Stardew Valley - ConcernedApe en premier



-- 4. Le titre et la note des jeux édités par Nintendo.
--    Résultat attendu : 4 lignes



-- 5. Le titre, l'éditeur et la note des jeux dont l'éditeur est japonais,
--    du mieux noté au moins bien noté.
--    Résultat attendu : 5 lignes, Zelda (20) en premier, Gran Turismo 7 (15) en dernier



-- 6. Le nom et le pays de l'éditeur du jeu "Tetris".
--    Résultat attendu : The Tetris Company, États-Unis



-- 7. Le nombre de jeux par éditeur, du plus grand au plus petit.
--    Résultat attendu : 8 lignes, Nintendo 4 en premier, puis Epic Games 2



-- 8. La note moyenne des jeux par pays d'éditeur (arrondie à 1 décimale).
--    Résultat attendu : Japon 17.4, États-Unis 16.0



-- QUESTION : la table editeur contient 9 éditeurs, mais la requête 7 n'en
--   affiche que 8, et le pays France n'apparaît pas à la requête 8. Pourquoi ?
--   (Regardez le contenu de la table editeur.)
-- RÉPONSE  :
