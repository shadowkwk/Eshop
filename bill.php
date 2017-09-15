<?php
	session_start();
	include "dbconnect.php";
	$email = $_REQUEST['email'];
	$address = $_REQUEST['address'];
	$phonenumber = $_REQUEST['phonenumber'];
	$today = date("Y-m-d"); 
	$items="";
	foreach ($_SESSION['cart'] as $x => $x_value) {
		$items.=$x_value." ";
	}
	$sql = "INSERT INTO bill(Bill_ID, Adress, PhoneNumber, Date, Products, Email) VALUES 
	(NULL, '".$address."', '".$phonenumber."', '".$today."', '".$items."', '".$email."')";
	$result = $conn->query($sql);
	echo $sql;
	session_unset();
	$_SESSION['cart'] = Array();	