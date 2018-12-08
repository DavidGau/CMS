<?php
	session_start();
	/*
		Demande à la table temporaire de s'écraser avec les donnés de la table actuel
	*/
	if(!empty($_SESSION["Id_admin"]) && !empty($_GET["page"]))
	{
		try{	
			include "connexion_bdd.php";

			$page = explode(".",$_GET["page"])[0];

			$actualise_temporaire = $bdd -> prepare("UPDATE Table_temporaire INNER JOIN Table_actuel ON Table_temporaire.Id_admin = Table_actuel.Id_admin AND Table_temporaire.Numero_zone = Table_actuel.Numero_zone SET Table_temporaire.Texte = Table_actuel.Texte WHERE Table_temporaire.Page = :page AND Table_temporaire.Id_admin = :id_admin AND Table_actuel.Page = :page");
			$actualise_temporaire -> bindValue(":id_admin",$_SESSION["Id_admin"]);
			$actualise_temporaire -> bindValue(":page",$page);

			if(!$actualise_temporaire -> execute()){
				throw new PDOException("Impossible d'actualiser le texte tremporaire");
				
			}
		}
		catch(PDOException $e){
			echo "Impossible de se connecter à la BDD".$e -> getMessage();
		}
	}
?>