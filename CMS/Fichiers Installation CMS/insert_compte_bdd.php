<?php
	include "../Php/connexion_bdd.php";
	$insert = $bdd -> prepare("INSERT INTO Admin VALUES (DEFAULT,:nom,:pass)");
	$insert -> bindValue(":nom",$_POST["nom"]);
	$insert -> bindValue(":pass",password_hash($_POST["pass"],PASSWORD_DEFAULT));
	$insert -> execute();
?>