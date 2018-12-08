<?php
	//Sert à crée des zones pour l'utilisation du CMS
	include "../Php/connexion_bdd.php";

	if(!empty($_GET["id_admin"]) && !empty($_GET["nb_zone"]) && !empty($_GET["page"])){

		$numero_zone = 0;

		$cree_actuel = $bdd -> prepare("INSERT INTO Table_actuel VALUES (DEFAULT,:id_admin,:page,:numero_zone,DEFAULT)");
		$cree_temporaire = $bdd -> prepare("INSERT INTO Table_temporaire VALUES (DEFAULT,:id_admin,:page,:numero_zone,DEFAULT)");
		$cree_backup = $bdd -> prepare("INSERT INTO Table_backup VALUES (DEFAULT,:id_admin,:page,:numero_zone,DEFAULT)");

		$cree_actuel -> bindValue(":id_admin",$_GET["id_admin"]);
		$cree_actuel -> bindValue(":page",$_GET["page"]);
		$cree_temporaire -> bindValue(":id_admin",$_GET["id_admin"]);
		$cree_temporaire -> bindValue(":page",$_GET["page"]);
		$cree_backup  -> bindValue(":id_admin",$_GET["id_admin"]);
		$cree_backup  -> bindValue(":page",$_GET["page"]);
	
	
			
		for ($i=1; $i <= $_GET["nb_zone"]; $i++) { 

			$cree_actuel -> bindValue(":numero_zone",$i);
			$cree_temporaire -> bindValue(":numero_zone",$i);
			$cree_backup -> bindValue(":numero_zone",$i);

			$cree_actuel -> execute();
			$cree_temporaire -> execute();
			$cree_backup -> execute();
		}
	}
?>