<?php
	//Start session
	session_start();
	
	//Include database connection details
	require_once('connection/config.php');
	
	//Connect to mysql server
	$link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);
	if(!$link) {
		die('Failed to connect to server: ' . mysql_error());
	}
	
	//Select database
	$db = mysql_select_db(DB_DATABASE);
	if(!$db) {
		die("Unable to select database");
	}
	
	//Function to sanitize values received from the form. Prevents SQL injection
	function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return mysql_real_escape_string($str);
	}
	
	//Sanitize the POST values
	$ccname = clean($_POST['ccname']);
	$cno = clean($_POST['cno']);
	$expmonth = clean($_POST['expmonth']);
	$expyear = clean($_POST['expyear']);
	$cvv = clean($_POST['cvv']);
	// check if the 'id' variable is set in URL

	// check if the 'id' variable is set in URL
	if (isset($_GET['id']))
	{
	// get id value
	$id = $_GET['id'];

	//Create INSERT query
	$qry = "INSERT INTO card_details(member_id,ccname,cno,expmonth,expyear,cvv) VALUES('$id','$ccname','$cno','$expmonth','$expyear','$cvv')";
	mysql_query($qry);
	
	//redirect to billing-success page
	header("location: order-success.php");
	}else {
		die("Adding card details failed! Please try again after a few minutes.");
	}
?>