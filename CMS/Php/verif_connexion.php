<?php
	session_start();

	include "id_site.php";

	if(!empty($_POST["nom_admin"]) && !empty($_POST["pass_admin"])) 
	{
		try{
			include "connexion_bdd.php";

			$prend_info = $bdd -> prepare("SELECT Id,Mot_de_passe FROM Admin WHERE Nom = :nom AND Id = :id_site");
			$prend_info -> bindValue(":nom",$_POST["nom_admin"]);
			$prend_info -> bindValue(":id_site",$id_site);

			if(!$prend_info -> execute())
			{
				throw new PDOException("Impossible de charger l'utilisateur!");			
			}
			else
			{

				while($info_recu = $prend_info -> fetch())
				{
					if(password_verify($_POST["pass_admin"],$info_recu["Mot_de_passe"]))
					{
						$_SESSION["Id_admin"] = $info_recu["Id"];
						echo 1;
						exit;
					}
				}

				echo 2;
				exit;
			}
		}
		catch(PDOException $e){
			echo "Impossible de se connecter à la BDD ".$e -> getMessage();
		}
	}

	echo 3;
?>