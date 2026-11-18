<!--
  TP 3 – LISTER LES JEUX DANS UN TABLEAU HTML

  Afficher tous les jeux dans le tableau ci-dessous, une ligne par jeu.
  La note s'affiche sur 20 : 18/20
-->
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>TP 3 - Liste des jeux</title>
</head>

<body>
    <h1>Liste des jeux</h1>

    <table border="1">
        <tr>
            <th>Titre</th>
            <th>Genre</th>
            <th>Année</th>
            <th>Note</th>
        </tr>
        <?php
        require_once "connexion.php";

        try {
            $sql = "SELECT * FROM jeu";

            $result = $base->prepare($sql);

            $result->execute();

            while ($line = $result->fetch(PDO::FETCH_ASSOC)) {
                echo "<tr id=\"" . $line["id"] . "\">";
                echo "<td>" . $line["titre"] . "</td>";
                echo "<td>" . $line["genre"] . "</td>";
                echo "<td>" . $line["annee"] . "</td>";
                echo "<td>" . $line["note"] . "/20</td>";
                echo "</tr>";
            }

            $result->closeCursor();
        } catch (Exception $e) {
            die('Erreur : ' . $e->getMessage());
        }
        ?>
    </table>
</body>

</html>