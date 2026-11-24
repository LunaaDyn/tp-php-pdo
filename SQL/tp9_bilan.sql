-- =====================================================================
--  TP 9 – BILAN : TOUT RÉUTILISER
--  ---------------------------------------------------------------------
--  Tables utilisées : toutes
--
--  Ordre d'écriture d'une requête complète (il est imposé) :
--      SELECT    ...  quoi afficher
--      FROM      ...  table de départ
--      JOIN      ...  ON ...   tables reliées
--      WHERE     ...  filtre les lignes
--      GROUP BY  ...  regroupe
--      HAVING    ...  filtre les groupes
--      ORDER BY  ...  trie
--      LIMIT     ...  limite le nombre de lignes
--
--  Méthode : commencez par le FROM et les JOIN, vérifiez le résultat avec
--  SELECT *, puis ajoutez WHERE, GROUP BY, ORDER BY... un par un.
-- =====================================================================

USE ludotheque_sql;

-- 1. Le titre, l'année et le nom de l'éditeur des jeux sortis après 2016,
--    triés par année puis par titre.
--    Résultat attendu : 7 lignes, Fortnite en premier



-- 2. Pour chaque genre : le nombre de jeux et la note moyenne (1 décimale),
--    seulement pour les genres dont la moyenne dépasse 15,
--    de la meilleure moyenne à la moins bonne.
--    Résultat attendu : 3 lignes



-- 3. Le membre qui a fait le plus d'emprunts (prénom, nom et nombre).
--    Résultat attendu : 1 ligne



-- 4. Le nombre d'emprunts par ville des membres, du plus grand au plus petit.
--    Résultat attendu : 3 lignes, Paris 6 en premier



-- 5. Les éditeurs dont les jeux ont été empruntés au moins 2 fois au total.
--    Résultat attendu : 2 lignes



-- 6. La note moyenne des jeux empruntés par chaque membre (1 décimale),
--    de la plus haute à la plus basse.
--    Résultat attendu : 5 lignes, Nathan 19.5 en premier



-- 7. Les jeux d'Aventure qui n'ont jamais été empruntés.
--    Résultat attendu : 1 ligne



-- 8. Pour chaque pays d'éditeur : le nombre d'emprunts, y compris les pays
--    dont aucun jeu n'a été emprunté.
--    Résultat attendu : 3 lignes, dont France 0



-- 9. Les emprunts en cours de jeux Nintendo : titre, prénom du membre et
--    date d'emprunt, du plus ancien au plus récent.
--    Résultat attendu : 3 lignes



-- 10. Le genre le plus emprunté (genre et nombre d'emprunts).
--     Résultat attendu : 1 ligne
