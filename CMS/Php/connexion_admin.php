<!DOCTYPE html>
<html>
<head>
	<title>Connexion | site web</title>
	<meta name="robots" content="noindex"/>
	<meta charset="utf-8"/>
	<link rel="stylesheet" type="text/css" href="../css/style_connexion.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
</head>
<body>
	<div>
		<form>
			<label>Nom d'utilisateur: </label><input type="text" id="nom_admin"/>
			<label>Mot de passe: </label><input type="password" id="pass_admin"/><br>
			<input type="submit" name="" value="Connexion"/>
			<p></p>
		</form>
	</div>

	<script>
			$("form").submit(function(e){

			let user = $("#nom_admin").val();
			let password = $("#pass_admin").val();

			if(user != "" && password != "")
			{

				$.ajax({
					type: "POST",
					url: "verif_connexion.php",
					data: {
						nom_admin: user,
						pass_admin: password,
					},
					success: function(valeur){
						if(valeur == 1){//Connexion réussie
							document.location.href = "../../page_modification.php?page=index.php";
						}
						else if(valeur == 2){
							clear_champ();
							$("p").html("Mot de passe/Nom d'utilisateur non valide!");
						}
						else{
							$("p").html("Veuillez remplir tout les champs S.V.P");
						}
					}
				});

			}
			else{
				$("p").html("Veuillez remplir tout les champs S.V.P");
			}
			
			e.preventDefault();
		});

		function clear_champ(){
			document.getElementsByTagName("input")[0].value = "";
			document.getElementsByTagName("input")[1].value = "";
		}
	</script>
</body>
</html>