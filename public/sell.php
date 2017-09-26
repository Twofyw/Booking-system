<?php

    // configuration
    require("../includes/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        $stocks_held = CS50::query("SELECT symbol FROM home WHERE user_id = " . $_SESSION["id"]);
        render("sell.php", ["stocks_held" => $stocks_held, "title" => "Buy"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
		$stock = lookup($_POST["symbol"]);
		$shares_held = CS50::query("SELECT shares FROM home WHERE user_id = " . $_SESSION["id"] . " AND symbol = '" . $_POST["symbol"] . "'");
		CS50::query("UPDATE users SET cash = cash + " . $shares_held[0]["shares"] * $stock["price"] . " WHERE id = " . $_SESSION["id"]);
		CS50::query("DELETE FROM home WHERE user_id = " . $_SESSION["id"] ." AND symbol = '" . $_POST["symbol"] . "'");
		
		// record history
		CS50::query("INSERT INTO history (user_id, type, symbol, shares, price, date) VALUES(?, 'SELL', ?, ?, ?, ?)", $_SESSION["id"], $_POST["symbol"], $shares_held[0]["shares"], $stock["price"], date ("Y-m-d H:i:s", time()));
        redirect("index.php");
	}
	
?>