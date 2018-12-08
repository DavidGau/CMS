<?php
	session_start();
	/*
		Charge le texte du site web depuis la Base de données
	*/
	function load_texte($numero_zone,$nom_page,$id_admin){

		try{

			include "connexion_bdd.php";

			if(!empty($_SESSION["Id_admin"]) && !empty($_GET["modification"])){ //Chargement du texte de la table temporaire (si admin)
				$selectionne_texte = $bdd -> prepare("SELECT Texte FROM Table_temporaire WHERE Numero_zone = :numero_zone AND Id_admin = :id_admin AND Page = :page");
			}
			else{	//Chargement du texte de la table actuelle (si client)
				$selectionne_texte = $bdd -> prepare("SELECT Texte FROM Table_actuel WHERE Numero_zone = :numero_zone AND Id_admin = :id_admin AND Page = :page");
			}

			
			$selectionne_texte -> bindValue(":numero_zone",$numero_zone);
			$selectionne_texte -> bindValue(":id_admin",$id_admin);
			$selectionne_texte -> bindValue(":page",$nom_page);

			if(!$selectionne_texte -> execute()){
				echo "Site web non disponible pour le moment, désolé!";
			}
			else{
				$charge_texte = $selectionne_texte -> fetch();
				echo $charge_texte["Texte"];
				
			}
		}
		catch(PDOException $e)
		{
			echo "Site web non disponible pour le moment, désolé!";
		}
	}
?>