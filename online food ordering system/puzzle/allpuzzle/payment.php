<?php
    require_once('auth.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>PUZZLE:Card Details</title>
<link href="stylesheets/user_styles.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="validation/user.js">
</script>
</head>
<body>
<div id="page">
  <div id="menu"><ul>
  <li><a href="index.php">Home</a></li>
  <li><a href="foodzone.php">Food Zone</a></li>
  <li><a href="member-index.php">My Account</a></li>
  <li><a href="contactus.php">Contact Us</a></li>
  </ul>
  </div>
<div id="header">
  <div id="logo"> <a href="index.php" class="blockLink"></a></div>
  <div id="company_name">PUZZLE</div>
</div>
<div id="center">
<h1>Online Payment</h1>
<hr>
<p>We have found out that you have not added card details in your account. Please add the card details in the form below. For more information <a href="contactus.php">Click Here</a> to contact us.</p>
  <div style="border:#bd6f2f solid 1px;padding:4px 6px 2px 6px">
<form id="billingForm" name="billingForm" method="post" action="payment-exec.php?id=<?php echo $_SESSION['SESS_MEMBER_ID'];?>" onsubmit="return billingValidate(this)">
  <table width="300" border="0" align="center" cellpadding="2" cellspacing="0">
  <CAPTION><h3>ADD CARD DETAILS</h3></CAPTION>
    <tr>
        <td colspan="2" style="text-align:center;"><font color="#FF0000">* </font>Required fields</td>
    </tr>
    <tr>
      <th>Name on Card </th>
      <td><font color="#FF0000">* </font><input name="ccname" type="text" class="textfield" id="ccname" /></td>
    </tr>
    <tr>
      <th>Credit card number </th>
      <td><font color="#FF0000">* </font><input name="cno" type="text" class="textfield" id="cno" /></td>
    </tr>
    <tr>
      <th>Exp Month </th>
      <td><font color="#FF0000">* </font><input name="expmonth" type="text" class="textfield" id="expmonth" /></td>
    </tr>
    <tr>
      <th width="124">Exp Year</th>
      <td width="168"><font color="#FF0000">* </font><input name="expyear" type="text" class="textfield" id="expyear" /></td>
    </tr>
    <tr>
      <th>CVV</th>
      <td>&nbsp;&nbsp;&nbsp;<input name="cvv" type="text" class="textfield" id="cvv" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="continue" /></td>
    </tr>
</table>
</form>
</div>
</div>
<div id="footer">
    <div class="bottom_menu"><a href="index.php">Home Page</a>  |  <a href="aboutus.php">About Us</a>  |  <a href="foodzone.php">Food Zone</a> |<br>
  | <a href="admin/index.php" target="_blank">Administrator</a> |</div>
  
</div>
</div>
</body>
</html>

