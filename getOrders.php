<?php
require_once('index.php');
//require_once('sponsers/code/Sponsor.php');

if($_SERVER['REQUEST_METHOD'] == 'POST') {
	$pf = new ProcessExtForm();
	
	$s = $pf->getPostVars($_POST);
	/*echo '<pre>';
	print_r($s);
	echo '</pre>';
	echo '-----------';
	echo '<pre>';
	print_r($_POST);
	echo '</pre>';*/
	
}
// post test form
/*
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
 
  <input type=hidden name="item" value="First Time Car Sponsor">
  <input type=hidden name="Qty" value="1">
  <input type=hidden name="Price" value="4500">
  <input type=hidden name="t1" value="t-Company Name">
  <input type=hidden name="t2" value="t-Company Contact">
  <input type=hidden name="t3" value="t-Email">
  <input type=hidden name="t4" value="t-Phone">
  <input type=hidden name="sponsorType" value="Car">
  <table border="0" cellpadding="3" class=main>
    <tr>
      <td align="right">Company Name:</td>
      <td><input name="p1" type=coName size="30"></td>
    </tr>
    <tr>
      <td align="right">Company Contact:</td>
      <td><input name="p2" type=text size="30"></td>
    </tr>
    <tr>
      <td align="right">Email:</td>
      <td><input name="p3" type=text size="30"></td>
    </tr>
    <tr>
      <td align="right">Phone:</td>
      <td><input name="p4" type=text size="30"></td>
    </tr>
    <tr>
      <td align="right">&nbsp;</td>
      <td><b>Price:</b> 4500<br>
      <br>
      <input type=submit value="Add to the pit" name="submit"></td>
    </tr>
  </table>
</form>
*/
?>