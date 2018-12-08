<?php
	session_start();
	/*
		Charge le backup de la BDD directement dans la table Actuelle
	*/
	if(!empty($_SESSION["Id_admin"]) && !empty($_GET["page"]))
	{
		try{	
			include "connexion_bdd.php";

			$page = explode(".",$_GET["page"])[0];
			
			$actualise_temporaire = $bdd -> prepare("UPDATE Table_temporaire INNER JOIN Table_backup ON Table_temporaire.Id_admin = Table_backup.Id_admin AND Table_temporaire.Numero_zone = Table_backup.Numero_zone SET Table_temporaire.Texte = Table_backup.Texte WHERE Table_temporaire.Page = :page AND Table_temporaire.Id_admin = :id_admin AND Table_backup.Page = :page");
			$actualise_temporaire -> bindValue(":id_admin",$_SESSION["Id_admin"]);
			$actualise_temporaire -> bindValue(":page",$page);

			if(!$actualise_temporaire -> execute()){
				throw new PDOException("Impossible d'actualiser le texte tremporaire");
				
			}
		}
		catch(PDOException $e){
			echo "Impossible de se cnnecter à la BDD".$e -> getMessage();
		}
	}
?>