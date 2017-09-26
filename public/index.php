<?php
	
    // configuration
    require("../includes/config.php"); 

	// retrieve data
	$rows = CS50::query("SELECT * FROM home WHERE user_id = ?", $_SESSION["id"]);
	$positions = [];
	foreach ($rows as $row)
	{
		$stock = lookup($row["symbol"]);
		if ($stock !== false)
		{
			$positions[] = [
				"name" => $stock["name"],
				"price" => $stock["price"],
				"shares" => $row["shares"],
				"symbol" => $row["symbol"]
			];
		}
	}
	
	$cash = CS50::query("SELECT cash FROM users WHERE id = " . $_SESSION["id"]);
    // render portfolio
    render("portfolio.php", ["positions" => $positions, "cash" => $cash[0], "title" => "Portfolio"]);
?>
