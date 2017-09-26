<?php
    $price = number_format($_SESSION["stock"]["price"],2);
    printf("A share of {$_SESSION["stock"]["name"]} ({$_SESSION["stock"]["symbol"]}) costs <strong>\${$price}</strong>.");
?>