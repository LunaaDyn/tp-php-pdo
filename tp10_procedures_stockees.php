<!--
  TP 10 – APPELER DES PROCÉDURES STOCKÉES AVEC PDO

  Prérequis : avoir créé les procédures de tp10_procedures.sql.

  1. Classement : remplir le tableau avec la procédure liste_jeux.
  2. Jeux par genre : quand un genre est choisi,
     - afficher le nombre de jeux avec compter_par_genre : 2 jeu(x) de genre Sport :
     - afficher la liste avec jeux_par_genre : Rocket League : 16/20
  3. Ajout : quand le formulaire est envoyé, ajouter le jeu avec ajouter_jeu,
     puis afficher : Jeu ajouté avec la procédure ajouter_jeu.
     Le nouveau jeu doit apparaître dans le classement dès le rechargement.

  Les valeurs venant de l'utilisateur doivent passer par une requête préparée.

  Question : quel est l'intérêt d'une procédure stockée par rapport
  à une requête écrite directement dans le PHP ?
  Réponse :
-->
<?php
require 'connexion.php';

?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>TP 10 - Procédures stockées</title>
</head>

<body>
    <h1>Procédures stockées</h1>

    <h2>Classement</h2>
    <table border="1">
        <tr>
            <th>Titre</th>
            <th>Genre</th>
            <th>Année</th>
            <th>Note</th>
        </tr>
        <?php

        ?>
    </table>

    <h2>Jeux par genre</h2>
    <form method="get">
        <select name="genre">
            <option>Action</option>
            <option>Aventure</option>
            <option>Course</option>
            <option>Réflexion</option>
            <option>Sport</option>
        </select>
        <button type="submit">Rechercher</button>
    </form>

    <?php

    ?>

    <h2>Ajouter un jeu</h2>
    <form method="post">
        <p>Titre : <input type="text" name="titre" required></p>
        <p>Genre : <input type="text" name="genre" required></p>
        <p>Année : <input type="number" name="annee" required></p>
        <p>Note : <input type="number" name="note" min="0" max="20" required></p>
        <button type="submit">Ajouter</button>
    </form>
</body>

</html>