<?php
	require_once('auth.php');
?>
<?php
//checking connection and connecting to a database
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
//selecting all records from almost all tables. Return an error if there are no records in the tables
$result=mysql_query("SELECT * FROM deleted_orders")
or die("There are no records to display ... \n" . mysql_error()); 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Cancelled Orders</title>
<link href="stylesheets/admin_styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="page">
<div id="header">
<h1>Orders Management </h1>
<a href="index.php">Home</a> | <a href="categories.php">Categories</a> | <a href="foods.php">Foods</a> | <a href="accounts.php">Accounts</a> | <a href="orders.php">Orders</a> | <a href="allocation.php">Delivery Boy</a> | <a href="logout.php">Logout</a>
</div>
<div id="container">
<table border="0" width="970" align="center">
<CAPTION><h3>CANCELLED ORDERS LIST</h3></CAPTION>
<tr>
<th>Order ID</th>
<th>Member ID</th>
<th>Billing ID</th>
<th>Cart ID</th>
</tr>

<?php
//loop through all tables rows
while ($row=mysql_fetch_assoc($result)){
echo "<tr>";
echo "<td>" . $row['order_id']."</td>";
echo "<td>" . $row['member_id']."</td>";
echo "<td>" . $row['billing_id']."</td>";
echo "<td>" . $row['cart_id']."</td>";
echo "</tr>";
}
mysql_free_result($result);
mysql_close($link);
?>
</table>
<hr>
</div>
<div id="footer">
<div class="bottom_addr">PUZZLE</div>
</div>
</div>
</body>
</html>