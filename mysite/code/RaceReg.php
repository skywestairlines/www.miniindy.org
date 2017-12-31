<?php

class RaceReg extends Page {
	static $db = array(
		'MyFormType' => 'Text',
		'regType'	 => 'Enum("New, Returning, Body, Storage", "New")',
		'checkPO' => 'HTMLText'
	);

	static $has_one = array();
	static $defaults = array(); //'ShowInMenus' => false);

	static $allowed_children = array(
		'none'
	);

	static $icon = 'mysite/icons/car';

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Content.Main', new TextField('MyFormType', 'Form Type'));
		$fields->addFieldToTab('Root.Content.ChecksAndPO', new HtmlEditorField('checkPO', 'Checks & P.O.s'));

		return $fields;
	}
}

class RaceReg_Controller extends Page_Controller {
	// do individual forms for each type?


	function getRaceType() {
		if($this->MyFormType == 'first') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">

  <input type=hidden name="item" value="First Time Car Sponsor">
  <input type=hidden name="Qty" value="1">
  <input type=hidden name="Price" value="5000">
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
      <td><b>Price:</b> $5000<br>
      <br>
      <input type=submit value="Add to the pit" name="submit"></td>
    </tr>
  </table>
</form>';
		}
		if($this->MyFormType == 'returnNew') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">

          <input type=hidden name="item" value="Returning Car Sponsor (new car)">
          <input type=hidden name="Qty" value="1" size=3>
          <input type=hidden name="Price" value="4300">
          <input type=hidden name="t1" value="d-Select body color;White;Red;Blue;Black;Green;Yellow">
          <input type=hidden name="t2" value="t-Team Name">
          <input type=hidden name="t3" value="t-Team Captain">
          <input type=hidden name="t4" value="t-Team Members">
          <input type=hidden name="sponsorType" value="Car">
          <table border="0" cellpadding="3" class=main>
            <tr>
           <td align="right">Select body color:</td>
     	 <td><select name="p1">
                  <option value="White">White</option>
                  <option value="Red">Red</option>
                  <option value="Blue">Blue</option>
                  <option value="Black">Black</option>
                  <option value="Green">Green</option>
                  <option value="Yellow">Yellow</option>
                  </select></td>
            </tr>
            <tr>
              <td align="right">Team Name:</td>
              <td><input name="p2" type=text size="30"></td>
            </tr>
            <tr>
              <td align="right">Team Captain:</td>
              <td><input name="p3" type=text size="30"></td>
            </tr>
            <tr>
              <td align="right">Team Members:</td>
              <td><input name="p4" type=text size="30"></td>
            </tr>
            <tr>
              <td align="right">&nbsp;</td>
              <td><b>Price:</b> $4300<br>        <br>
              <input type=submit value="Add to the pit" name="submit2"></td>
            </tr>
          </table>
        </form>';
		}
		if($this->MyFormType == 'returnCar') {
			$today = date('Ymd');
			if($today >= 20140201){

				return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">

          <input type=hidden name="item" value="Returning Car Sponsor">
          <input type=hidden name="Qty" value="1" size=3>
          <input type=hidden name="Price" value="3200">
          <input type=hidden name="t1" value="t-Company Name">
		  <input type=hidden name="t2" value="t-Company Contact">
		  <input type=hidden name="t3" value="t-Email">
		  <input type=hidden name="t4" value="t-Phone">
		  <input type=hidden name="sponsorType" value="Car">
          <table border="0" cellpadding="3" class=main>
            <tr>
              <td align="right">Company Name:</td>
              <td><input name="p1" type=text size="30"></td>
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
              <td><b>Price:</b> $3200<br>        <br>
              <input type=submit value="Add to the pit" name="submit2"></td>
            </tr>
          </table>
        </form>';

				}else{
			//<input type=hidden name="t1" value="d-Select body color;White;Red;Blue;Black;Green;Yellow">
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">

          <input type=hidden name="item" value="Returning Car Sponsor">
          <input type=hidden name="Qty" value="1" size=3>
          <input type=hidden name="Price" value="3200">
          <input type=hidden name="t1" value="t-Company Name">
		  <input type=hidden name="t2" value="t-Company Contact">
		  <input type=hidden name="t3" value="t-Email">
		  <input type=hidden name="t4" value="t-Phone">
		  <input type=hidden name="sponsorType" value="Car">
          <table border="0" cellpadding="3" class=main>
            <tr>
              <td align="right">Company Name:</td>
              <td><input name="p1" type=text size="30"></td>
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
              <td><b>Price:</b> $3200<br>        <br>
              <input type=submit value="Add to the pit" name="submit2"></td>
            </tr>
          </table>
        </form>';
        	}
		}
		if($this->MyFormType == 'extraBody') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">
			  <input type=hidden name="item" value="Extra Car Body">
			  <input type=hidden name="sponsorType" value="Car">
			  Qty:
			  <input type=text name="Qty" size=3 value="1">
			  <br /><br />
			  <b>Price</b>: $650
			  <input type=hidden name="Price" value="650">
			  <br>
			  <br>
			  <input name="submit" type=submit value="Submit">
			</form><br />';
		}
		if($this->MyFormType == 'other') {
			return '<form method="post" action="https://shoppingcartsecure.com/cart32.exe/4356343682-additem" name="Form">
				<p align="center"><b>Parts or Other</b>
				<input type="hidden" name="PartNo" value="Partsoth">
				<input type="text" name="Item" value="Parts or Other">
				<input type="hidden" name="Qty" value="1">
				Amount: $
				<input type="text" name="Price" value="" size=8>
				<br>
				<input type="submit" value="Add to Cart" name="submit">
				</p>
				</form><br />';
		}
		if($this->MyFormType == 'storage') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">
          <input type=hidden name="item" value="Car Storage">
          <input type=hidden name="Qty" value="1" size=3>
          <input type=hidden name="Price" value="225">
          <input type=hidden name="t1" value="Car Storage">
          <input type=hidden name="sponsorType" value="Car">
          <table border="0" cellpadding="3" class=main>
            <tr>
              <td align="right">Car Storage &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp; </td>
              <td><b>Price:</b> $225.00<br>        <br>
              <input type=submit value="Purchase" name="submit2"></td>
            </tr>
          </table>
        </form>
        <br /><br />
        <strong> &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp; -- OR --</strong>
        <br /><br />
        <form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">
          <input type=hidden name="item" value="Car Storage with 50 Gallon Tote">
          <input type=hidden name="Qty" value="1" size=3>
          <input type=hidden name="Price" value="275">
          <input type=hidden name="t1" value="Car Storage with 50 Gallon Tote">
          <input type=hidden name="sponsorType" value="Car">
          <table border="0" cellpadding="3" class=main>
            <tr>
              <td align="right">Car Storage with 50 Gallon Tote</td>
              <td><b>Price:</b> $275.00<br>        <br>
              <input type=submit value="Purchase" name="submit2"></td>
            </tr>
          </table>
        </form>';
		}

	}
}
