<?php
	if(!empty($_POST["page"]) && !empty($_GET["page"])){
		$_GET["page"] = $_POST["page"];
	}
?>