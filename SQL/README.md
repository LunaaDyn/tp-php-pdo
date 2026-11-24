# TP SQL – Ludothèque

Dans cette série de 9 TP, vous allez apprendre à écrire des requêtes SQL pour **lire** des données dans une base MySQL : `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY` et les jointures (`JOIN`, `INNER JOIN`, `LEFT JOIN`).

## 1. Installer la base `ludotheque_sql`

1. Lancez **MAMP** (ou WAMP / XAMPP), puis cliquez sur **Start**.
2. Ouvrez **phpMyAdmin** :
   - MAMP : http://localhost:8888/phpMyAdmin
   - WAMP / XAMPP : http://localhost/phpmyadmin
3. Cliquez sur l'onglet **Importer**, choisissez le fichier `base_ludotheque_sql.sql`, puis cliquez sur **Importer** (ou **Exécuter**).
4. La base **ludotheque_sql** apparaît à gauche, avec 4 tables.

> Cette base est différente de la base `ludotheque` des TP PHP & PDO : les deux peuvent exister en même temps.

## 2. Les tables

```
editeur                 jeu                       emprunt                  membre
-------                 ---                       -------                  ------
id   ◄──────────┐       id   ◄────────────┐       id                ┌────► id
nom             └────── editeur_id        └────── jeu_id            │      prenom
pays                    titre                     membre_id ────────┘      nom
                        genre                     date_emprunt             ville
                        annee                     date_retour
                        note (sur 20)
```

| Table     | Lignes | Contenu                                                              |
|-----------|--------|----------------------------------------------------------------------|
| `editeur` | 9      | Les éditeurs de jeux vidéo (nom, pays)                               |
| `jeu`     | 12     | Les jeux. `editeur_id` = numéro de l'éditeur du jeu                  |
| `membre`  | 6      | Les membres de la ludothèque                                         |
| `emprunt` | 13     | Qui a emprunté quel jeu, et quand. `date_retour` vide (`NULL`) = pas encore rendu |

Les colonnes `editeur_id`, `jeu_id` et `membre_id` sont des **clés étrangères** : elles contiennent le numéro (`id`) d'une ligne d'une autre table. C'est ce qui permet de faire des jointures (TP 6 à 8).

## 3. Comment travailler

1. Ouvrez le fichier du TP dans votre éditeur (VS Code...).
2. Dans phpMyAdmin, cliquez sur la base **ludotheque_sql**, puis sur l'onglet **SQL**.
3. Pour chaque question, écrivez votre requête dans le fichier, sous la question.
4. Copiez la requête dans l'onglet **SQL**, cliquez sur **Exécuter**, et comparez avec le **Résultat attendu**.
5. Répondez à la **QUESTION** de fin de TP en une ou deux phrases.

Conseils :
- Faites les TP **dans l'ordre** : chacun réutilise le précédent.
- Une requête se termine par un point-virgule `;`.
- Écrivez les mots-clés SQL en MAJUSCULES (`SELECT`, `FROM`...) : c'est plus lisible.
- Les textes et les dates s'écrivent entre apostrophes : `'Aventure'`, `'2026-10-01'`.
- Vous avez cassé la base ? Réimportez `base_ludotheque_sql.sql`.

## 4. Les TP

| TP | Fichier                       | Thème                                            |
|----|-------------------------------|--------------------------------------------------|
| 1  | `tp1_select.sql`              | `SELECT`, `AS`, `DISTINCT`, `LIMIT`              |
| 2  | `tp2_where.sql`               | Filtrer avec `WHERE`, `AND`, `OR`, `LIKE`, `IN`, `IS NULL` |
| 3  | `tp3_order_by.sql`            | Trier avec `ORDER BY` et `LIMIT`                 |
| 4  | `tp4_fonctions_agregat.sql`   | `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`              |
| 5  | `tp5_group_by.sql`            | Calculer par groupe : `GROUP BY`, `HAVING`       |
| 6  | `tp6_inner_join.sql`          | Relier deux tables : `JOIN` / `INNER JOIN`       |
| 7  | `tp7_jointures_multiples.sql` | Jointures sur 3 ou 4 tables                      |
| 8  | `tp8_left_join.sql`           | `LEFT JOIN` : garder les lignes sans correspondance |
| 9  | `tp9_bilan.sql`               | Bilan : tout réutiliser                          |
