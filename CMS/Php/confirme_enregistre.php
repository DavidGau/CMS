<?php
	/*
		Enregistre les informations sur la table Backup et remplace les données de la table actuel par celles de la table temporaire
	*/
	session_start();

	if(!empty($_SESSION["Id_admin"]) && !empty($_GET["page"])){

		try{
			include "connexion_bdd.php";

			$page = explode(".",$_GET["page"])[0];

			//Update les données de la table Backup par les donnés actuels
			$selectionne_actuel = $bdd -> prepare("UPDATE Table_backup INNER JOIN Table_actuel ON Table_backup.Id_admin = Table_actuel.Id_admin AND Table_backup.Numero_zone = Table_actuel.Numero_zone SET Table_backup.Texte = Table_actuel.Texte WHERE Table_backup.Page = :page AND Table_backup.Id_admin = :id_admin AND Table_actuel.Page = :page");
			$selectionne_actuel -> bindValue(":page",$page);
			$selectionne_actuel -> bindValue(":id_admin",$_SESSION["Id_admin"]);

			if(!$selectionne_actuel -> execute()){
				throw new PDOException("Impossible de prendre les données actuels");
				exit;	
			}
			else{
				//Update des données de la table actuel par la table temporaire
				$selectionne_actuel -> closeCursor();

				$remplace_actuel = $bdd -> prepare("UPDATE Table_actuel INNER JOIN Table_temporaire ON Table_actuel.Id_admin = Table_temporaire.Id_admin AND Table_actuel.Numero_zone = Table_temporaire.Numero_zone SET Table_actuel.Texte = Table_temporaire.Texte WHERE Table_actuel.Page = :page AND Table_actuel.Id_admin = :id_admin AND Table_temporaire.Page = :page");
				$remplace_actuel -> bindValue(":page",$page);
				$remplace_actuel -> bindValue(":id_admin",$_SESSION["Id_admin"]);

				if(!$remplace_actuel -> execute()){
					throw new PDOException("Impossible de remplacer la table actuel");
					exit;
                }

                echo 1;

			}
		}
		catch(PDOException $e){
			echo "Impossible d'accéder à la BDD".$e -> getMessage();
		}
	}
?>