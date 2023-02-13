<?php

$db = new PDO('sqlite:FACDB.db');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$nom = strtoupper($_POST['nom']);
$prenom = ucfirst(strtolower($_POST['prenom']));
$datenaissance = $_POST['dateNaissance'];
$numerotelephone = $_POST['numeroTelephone'];
$taille = $_POST['taille'];
$exampsycho = $_POST['examPsycho'];

$query = "INSERT INTO Personne (Nom, Prenom, DateNaissance, NumeroTelephone, Taille, ExamPsycho)
VALUES ('$nom', '$prenom', '$datenaissance', '$numerotelephone', '$taille', '$exampsycho')";

$result = $db->query($query);

if ($result) {
    echo "<script>alert('Ajout avec succès!'); window.history.back();</script>";
} else {
    echo "<script>alert('Echec de l'ajout!'); window.history.back();</script>";
}

$db = null;
?>