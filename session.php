<?php

session_start();
include "dbconnect.php";
$item = $_REQUEST['cart'];
array_push($_SESSION['cart'], $item);
?>
