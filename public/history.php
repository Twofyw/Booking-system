<?php
    // configuration
    require("../includes/config.php");
	$historys = CS50::query("SELECT * FROM history WHERE user_id = ?", $_SESSION["id"]);
	render("history.php", ["historys" => $historys, "title" => "History"]);
?>