<!--
  TP 7 – FORMULAIRE D'AJOUT

  Quand le formulaire est envoyé :
  1. Ajouter le jeu dans la base avec une requête préparée
     (marqueurs nommés : :titre, :genre, :annee, :note).
  2. Afficher : Jeu ajouté ! Son id est : ...
  3. Afficher un lien vers la liste des jeux (tp3_liste.php).

  Test : ajouter le jeu Assassin's Creed. Est-ce que ça fonctionne ?
-->
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>TP 7 - Ajouter un jeu</title>
</head>

<body>
    <h1>Ajouter un jeu</h1>

    <form method="post">
        <p>Titre : <input type="text" name="titre" required></p>
        <p>Genre : <input type="text" name="genre" required></p>
        <p>Année : <input type="number" name="annee" min="1970" max="2027" required></p>
        <p>Note : <input type="number" name="note" min="0" max="20" required></p>
        <button type="submit">Ajouter</button>
    </form>

    <?php
    require_once "connexion.php";

    $sql = "INSERT INTO jeu (titre, genre, annee, note) VALUES (:titre, :genre, :annee, :note)";

    $result = $base->prepare($sql);

    if (!empty($_POST["titre"]) && !empty($_POST["genre"]) && !empty($_POST["annee"]) && !empty($_POST["note"])) {
        $result->execute([
            "titre" => $_POST["titre"],
            "genre" => $_POST["genre"],
            "annee" => $_POST["annee"],
            "note" => $_POST["note"],
        ]);

        echo "<p>Jeu ajouté ! Son id est : " . $base->lastInsertId() . "</p>";

        echo "<br/><br/>";

        echo "<a href=\"./tp3_liste\">Liste de Jeux<a/>";

        $result->closeCursor();

        $_POST = [];
    }
    ?>
</body>

</html>