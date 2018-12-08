<?php
	session_start();

	include "CMS/Php/id_site.php";

	if(!empty($_SESSION["Id_admin"]) && !empty($_GET["page"]) && $_SESSION["Id_admin"] == $id_site)
	{


?>

<!DOCTYPE html>
<html>
<head>
	<title>Modification du site web</title>
	<meta charset="utf-8"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="CMS/tinymce_4.7.9/tinymce/js/tinymce/tinymce.min.js"></script>
	<link rel="stylesheet" type="text/css" href="CMS/Css/style_modification.css"/>
	<meta name="robots" content="noindex">
</head>
<body>

	<div id="container_site">
		<!-- Le container de la page web chargée -->
	</div>


	<div id="barre_bouton">
		<button onclick="confirm_enregistre()" id="bouton_enregistre">Confirmer les modifications</button>
		<button onclick="refresh_temporaire()">Effacer les modifications</button>
		<button onclick="charge_backup()">Charger le backup</button>
		<a href="#" onclick="change_page('index.php')">Accueil</a>
		<a href="#" onclick="change_page('historique.php')">Historique</a>
	</div>

	
	<script>
		let page = "index.php";
		//Chargement de la page et de la config de TinyMCE après le chargement de cette page
		$("#container_site").load("./" <?php $_GET["page"] ?> +"?modification=true",function(){
				
			let script = document.createElement("script");
			script.src = "CMS/config_tinymce.js";

			document.getElementsByTagName("head")[0].appendChild(script);

		});

		//Sert à faire un backup du site web
		function charge_backup(){

			$.ajax({
				method: "GET",
				url: "CMS/Php/charge_backup.php",
				data:{	
					page: page,
				},
				success: function(data){
					change_page(page);
				}
			});	
		}

		//Ce call ajax demande à la BDD d'actualiser la table temporaire
		//refresh_temporaire();

		function refresh_temporaire(){

			$.ajax({
				method: "GET",
				url: "CMS/Php/refresh_temporaire.php",
				data:{	
					page: page,
				},
				success: function(data){
					change_page(page);
				}
			});

		}

		//S'occupe de gérer l'enregistrement des modifications temporaires
		function sauvegarde_temporaire(){

			let numero_element = recupere_numero();

			if(numero_element != undefined)
			{
				$.ajax({
					method: "POST",
					url: "CMS/Php/sauvegarde_temporaire.php",
					data: {
						contenu: tinyMCE.activeEditor.getContent(),
						id: numero_element,
						page: page,
					}
				}); 
			}
		}

		//Recupere l'Id du bloc de texte pour savoir ou il doit enregistrer
		function recupere_numero(){

			let element_selectionner = tinyMCE.activeEditor.getElement();

			for(let i = 0;i < element_selectionner.classList.length;i++)
			{
				if(element_selectionner.classList[i].search("zone") != -1){
					return element_selectionner.classList[i].split("zone")[1];
				}
			}
		}

		//Enregistre les informations et les affiches maintenant au public
		function confirm_enregistre(){

			$.ajax({
				method: "GET",
				url: "CMS/Php/confirme_enregistre.php",
				data:{
					page: page,
				},
				success:function(data){
					
					if(data == "1"){
						animation_enregistre();
					}
				}
			});
		}

		//Fait une petite animation css lors d'un enregistrement
		function animation_enregistre(){
			let bouton_enregistre = document.getElementById("bouton_enregistre");

			bouton_enregistre.style.animation = "sauvegarde 0.2s infinite";

			setTimeout(function(){
				bouton_enregistre.style.animation = "none";
			},600);
		}

		//Permet de charger une page différente pour modifications
			function change_page(nom_page){
				$("#container_site").load(nom_page+"?modification=true",function(){
				
					let script = document.createElement("script");
					script.src = "CMS/config_tinymce.js";

					document.getElementsByTagName("head")[0].appendChild(script);
				});

				page = nom_page;
		}
	</script>
</body>
</html>




<?php
	}
	else{
		header("Location: CMS/Php/connexion_admin.php");
	}
?>