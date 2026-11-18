<!--
  TP 4 – TRIER ET FILTRER (base ludotheque, table jeu)

  1. Classement : tous les jeux, du mieux noté au moins bien noté.
     Format : Tetris : 19/20

  2. Jeux récents : les jeux sortis après 2015, du plus ancien au plus récent.
     Format : Fortnite (2017)

  3. Jeux de sport : afficher le nombre de jeux de sport, puis leur liste.
     Format : 2 jeu(x) de sport :
-->
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>TP 4 - Trier et filtrer</title>
</head>

<body>

    <?php

    require_once "connexion.php";

    function LoadGames(PDO $base, string $extraSQL, string $type): void
    {
        try {
            $sql = "SELECT * FROM jeu " . $extraSQL;

            $result = $base->prepare($sql);

            $result->execute();

            if ($type == "Sport") echo "<p>" .  $result->rowCount() . " jeu(x) de sport :</p><ul>";
            while ($line = $result->fetch(PDO::FETCH_ASSOC)) {
                $types = [
                    "Ranking" => $line["note"] . "/20",
                    "Recent" => "(" . $line["annee"] . ")",
                    "Sport" => null
                ];

                if ($type != "Sport") {
                    echo "<li id=\"" . $line["id"] . "\">" . $line["titre"] . PHP_EOL . $types[$type] . "</li>";
                } else {
                    echo "<li id=\"" . $line["id"] . "\">" . $line["titre"] . "</li>";
                }
            }

            if ($type == "Sport") echo "</ul>";

            $result->closeCursor();
        } catch (Exception $e) {
            die('Erreur : ' . $e->getMessage());
        }
    }
    ?>

    <h2>Classement</h2>
    <ul>
        <?php
        LoadGames($base, "ORDER BY note DESC, titre", "Ranking");
        ?>
    </ul>

    <h2>Jeux récents</h2>
    <ul>
        <?php
        LoadGames($base, "ORDER BY annee DESC, titre", "Recent");
        ?>
    </ul>

    <h2>Jeux de sport</h2>
    <?php
    LoadGames($base, "WHERE genre = \"Sport\"", "Sport");
    ?>

</body>

</html>