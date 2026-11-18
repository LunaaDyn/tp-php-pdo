<!--
  TP 2 – COMPTER LES JEUX

  Afficher : Il y a 10 jeux dans la ludothèque.
  (le nombre doit venir de la base, pas être écrit à la main)

  Expérience : ajouter un jeu dans phpMyAdmin puis recharger la page.
-->
<?php
require_once "connexion.php";

try {
    $sql = "SELECT * FROM jeu";

    $result = $base->prepare($sql);

    $result->execute();

    $gameAmount = $result->rowCount();

    $result->closeCursor();
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>TP 2 - Compter les jeux</title>
</head>

<body>
    <p>There are <?= $gameAmount ?> Games.</p>
</body>

</html>