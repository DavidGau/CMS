<?php
	session_start();
	/*
		Sauvegarde les changements faits par l'utilisateur dans la table temporaire
	*/

	if(!empty($_SESSION["Id_admin"]) && !empty($_POST["contenu"]) && !empty($_POST["id"]) && !empty($_POST["page"]))
	{
		try{
			$page = explode(".",$_POST["page"])[0];

			include "connexion_bdd.php";

			$update_zone = $bdd -> prepare("UPDATE Table_temporaire SET Texte = :texte WHERE Id_admin = :id_admin AND Numero_zone = :numero_zone AND Page = :page");
			$update_zone -> bindValue(":texte",$_POST["contenu"]);
			$update_zone -> bindValue(":id_admin",$_SESSION["Id_admin"]);
			$update_zone -> bindValue(":numero_zone",$_POST["id"]);
			$update_zone -> bindValue(":page",$page);
			echo $_SESSION["Id_admin"];
			if(!$update_zone -> execute()){
				throw new PDOException("Impossible de faire la requête");
			}
		}
		catch(PDOException $e)
		{
			echo "Impossible de se connecter à la BDD :".$e -> getMessage(); 
		}
	}

?>