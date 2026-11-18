<?php
/*
  TP 5 – AJOUTER, MODIFIER, SUPPRIMER AVEC exec()

  1. Ajouter le jeu Pac-Man (genre Action, année 1980, note 16)
     puis afficher : Pac-Man ajouté avec l'id ...
  2. Passer la note de Fortnite à 15
     puis afficher le nombre de jeux modifiés.
  3. Supprimer Pac-Man
     puis afficher le nombre de jeux supprimés.

  Vérifier le résultat avec la page du TP 3.

  Question : que se passerait-il avec DELETE FROM jeu sans WHERE ?
  Réponse : ça supprimerait tout
*/

require_once "connexion.php";

$game = [
    "titre" => "Pac-Man",
    "genre" => "Action",
    "annee" => 1980,
    "note" => 16
];

function br(): void
{
    echo "<br/><br/>";
}

try {
    $sql = 'INSERT INTO jeu (titre, genre, annee, note) VALUES (:titre, :genre, :annee, :note)';

    $result = $base->prepare($sql);

    $result->execute($game);

    echo $game["titre"] . " ajouté avec l'id " . $base->lastInsertId();

    $result->closeCursor();

    br();

    $sql = 'UPDATE jeu SET note = 15 WHERE titre = "Fortnite"';

    $result = $base->prepare($sql);

    $result->execute();

    echo $result->rowCount() . " jeu(x) ont été modifiés";

    $result->closeCursor();

    br();

    $sql = 'DELETE FROM jeu WHERE titre = ?';

    $result = $base->prepare($sql);

    $result->execute([$game["titre"]]);

    echo $result->rowCount() . " jeu(x) ont été supprimés";

    $result->closeCursor();
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}
