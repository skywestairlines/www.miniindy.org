<?php

namespace App\Controllers;

use SilverStripe\View\Requirements;
use SilverStripe\View\ArrayData;
use PageController;




class GolfRegController extends PageController
{
	public function init() {
		parent::init();
		Requirements::javascript('mysite/javascript/registration.js');
	}

	function getGolfType() {
		$accessKey = $this->getRequest()->getVar('key');
		if($accessKey) {
				$this->MyFormType = trim(base64_decode($accessKey));
		}
		if($this->MyFormType == 'indy') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post" id="form-id">
				        <input type="hidden" name="item" value="Indy Level Sponsor With Car">
				        <input type="hidden" name="Qty" value="1" size="3">
				        <input type="hidden" name="Price" value="850">
				        <input type="hidden" name="sponsorType" value="Golf">
						<table border="0" cellpadding="3" class="main">
				            <tr>
				                <td align="right" width="10%">Company Name:</td>
								<td><input name="p1" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Company Contact:</td>
								<td><input name="p2" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Email:</td>
								<td><input name="p3" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Phone:</td>
								<td><input name="p4" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right" colspan="2">Enter player names if known.</td>
				            </tr>
							<tr>
				                <td align="right">Player 1:</td>
								<td><input name="p5" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Player 2:</td>
								<td><input name="p6" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Player 3:</td>
								<td><input name="p7" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Player 4:</td>
								<td><input name="p8" type="text" size="30"></td>
				            </tr>
				            <tr style="display:none;">
				                <td>&nbsp;</td>
								<td>
									<input name="t1" type="hidden" value="t-Company Name">
									<input name="t2" type="hidden" value="t-Company Contact">
									<input name="t3" type="hidden" value="t-Email">
									<input name="t4" type="hidden" value="t-Phone">
									<input name="t5" type="hidden" value="t-Player 1">
									<input name="t6" type="hidden" value="t-Player 2">
									<input name="t7" type="hidden" value="t-Player 3">
									<input name="t8" type="hidden" value="t-Player 4">
								</td>
				            </tr>
				            <tr>
								<td align="right"><input type="checkbox" name="agree" id="mycheckbox"/></td>
								<td><p>I confirm that I am also sponsoring a new or returning car (sold separately), and understand that if my car sponsorship has not been purchased prior to the event, SkyWest will charge me the difference in sponsorship price ($350).</p>
</td>
				            </td>
							<tr>
				                <td align="right">&nbsp;</td>
								<td><b>Price:</b> $850<br>
				                <br>
				                <input type="submit" value="Add to the pit" name="submit2"></td>
				            </tr>
				        </table>
				    </form>';
		}
		if($this->MyFormType == 'indy2') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">
				        <input type="hidden" name="item" value="Indy Level Sponsor without Car">
				        <input type="hidden" name="Qty" value="1" size="3">
				        <input type="hidden" name="Price" value="1200">
				        <input type="hidden" name="sponsorType" value="Golf">
						<table border="0" cellpadding="3" class="main">
				            <tr>
				                <td align="right" width="10%">Company Name:</td>
								<td><input name="p1" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Company Contact:</td>
								<td><input name="p2" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Email:</td>
								<td><input name="p3" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Phone:</td>
								<td><input name="p4" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right" colspan="2">Enter player names if known.</td>
				            </tr>
							<tr>
				                <td align="right">Player 1:</td>
								<td><input name="p5" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Player 2:</td>
								<td><input name="p6" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Player 3:</td>
								<td><input name="p7" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Player 4:</td>
								<td><input name="p8" type="text" size="30"></td>
				            </tr>
				            <tr style="display:none;">
				                <td>&nbsp;</td>
								<td>
									<input name="t1" type="hidden" value="t-Company Name">
									<input name="t2" type="hidden" value="t-Company Contact">
									<input name="t3" type="hidden" value="t-Email">
									<input name="t4" type="hidden" value="t-Phone">
									<input name="t5" type="hidden" value="t-Player 1">
									<input name="t6" type="hidden" value="t-Player 2">
									<input name="t7" type="hidden" value="t-Player 3">
									<input name="t8" type="hidden" value="t-Player 4">
								</td>
				            </tr>
							<tr>
				                <td align="right">&nbsp;</td>
								<td><b>Price:</b> $1200<br>
				                <br>
				                <input type="submit" value="Add to the pit" name="submit2"></td>
				            </tr>
				        </table>
				    </form>';
		}
		if($this->MyFormType == 'dont-use') {
			// before you enable this form FIX IT!!!!!!!!!!!!
			/**********************************************************/
			/*	this form is not being use, DO NOT ACTIVATE IT!!!!!!! */
			/**********************************************************/
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">
				        <input type="hidden" name="item" value="Daytona Level Sponsor">
				        <input type="hidden" name="Qty" value="1" size="3">
				        <input type="hidden" name="Price" value="500">
				        <input type="hidden" name="t1" value="t-Player 1">
				        <input type="hidden" name="sponsorType" value="Golf">
				        Player 1: <input type="text" name="p1"><br>
				        Player 2: <input type="text" name="p2"><br>
				        <br>
				        <b>Price:</b> $500<br>
				        <br>
				        <input type="hidden" name="t2" value="t-Player 2"> <input name="submit" type="submit" value="Submit">
				    </form>';
		}
		if($this->MyFormType == 'daytona') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">
				        <input type="hidden" name="item" value="Daytona Level Sponsor">
				        <input type="hidden" name="Price" value="350">
				        <input type="hidden" name="sponsorType" value="Golf">
				        <table border="0" cellpadding="3" class="main">
				            <tr>
				            	<td align="right" width="10%">Qty:</td>
				            	<td><input type="text" name="Qty" value="1" size="3"></td>
				            </tr>
				            <tr>
				                <td align="right" width="10%">Company Name:</td>
								<td><input name="p1" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Company Contact:</td>
								<td><input name="p2" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Email:</td>
								<td><input name="p3" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right">Phone:</td>
								<td><input name="p4" type="text" size="30"></td>
				            </tr>
							<tr>
				                <td align="right" colspan="2">Enter player names if known.</td>
				            </tr>
							<tr>
				                <td align="right">Player Name(s):</td>
								<td><input name="p5" type="text" size="30"></td>
				            </tr>
					        <tr style="display:none;">
				                <td>&nbsp;</td>
								<td>
									<input name="t1" type="hidden" value="t-Company Name">
									<input name="t2" type="hidden" value="t-Company Contact">
									<input name="t3" type="hidden" value="t-Email">
									<input name="t4" type="hidden" value="t-Phone">
									<input name="t5" type="hidden" value="t-Player Name(s)">
								</td>
				            </tr>
				            <tr>
				                <td align="right">&nbsp;</td>
								<td><b>Price:</b> $350 per player<br>
				                <br>
				                <input type="submit" value="Add to the pit" name="submit2"></td>
				            </tr>
				        </table>
				    </form>';
		}
		if($this->MyFormType == 'extra') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">
				        <input type="hidden" name="item" value="Add extra golfers">
				        <input type="hidden" name="Price" value="150">
				        <input type="hidden" name="t1" value="t-Additional Player Name(s)">
				        <input type="hidden" name="sponsorType" value="Golf">
				        <table border="0" cellpadding="3" class="main">
				            <tr>
				                <td align="right" width="10%">Qty:</td>
				                <td> <input type="text" name="Qty" value="1" size="3" id="qty"></td>
				            </tr>
							<tr>
								<td align="right">Company Name:</td>
								<td><input name="p1" type="coname" size="30"></td>
							</tr>
							<tr>
								<td align="right">Company Contact: </td>
								<td><input name="p2" type="text" size="30"></td>
							</tr>
							<tr>
								<td align="right">Email:</td>
								<td><input name="p3" type="text" size="30"></td>
							</tr>
							<tr>
								<td align="right">Phone:</td>
								<td><input name="p4" type="text" size="30"></td>
							</tr>
							<tr>
				                <td align="right" colspan="2">Enter player names if known.</td>
				            </tr>
							<tr id="trName">
								<td align="right">Name(s):</td>
								<td><input type="text" name="p5"></td>
							</tr>

							<tr style="display:none;">
				                <td>&nbsp;</td>
								<td>
									<input name="t1" type="hidden" value="t-Company Name">
									<input name="t2" type="hidden" value="t-Company Contact">
									<input name="t3" type="hidden" value="t-Email">
									<input name="t4" type="hidden" value="t-Phone">
									<input name="t5" type="hidden" value="t-Player Name(s)">
								</td>
				            </tr>
				            <tr>
				                <td align="right">&nbsp;</td>
								<td><b>Price:</b> $150 per player<br>
				                <br>
				                <input type="submit" value="Add to the pit" name="submit"></td>
				            </tr>
				        </table>
				    </form>';
		}
		if($this->MyFormType == 'TuesdayGolf') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">
				        <input type="hidden" name="item" value="Tuesday Golf">
				        <input type="hidden" name="Price" value="75">
				        <input type="hidden" name="t1" value="t-Player Name(s)">
				        <input type="hidden" name="sponsorType" value="Golf">
				        Qty: <input type="text" name="Qty" value="1" size="3"><br>
				        <br>
				        Player Name(s): <input type="text" name="p1"><br>
				        <br>
				        <b>Price:</b> $75 per golfer<br>
				        Participants receive: 18 holes, boxed lunch and a cart.<br>
				        <br>
				        <input name="submit" type="submit" value="Submit">
				    </form><br />';
		}

		if($this->MyFormType == 'DiamondFormulaOne'){
			$RegistrationData = new ArrayData(array(
				'Item' => 'Diamond/Formula One',
				'Price' => 20000,
				'PriceTag' => '$20,000',
				'ExtraTeam' => true,
				'Players' => 4
			));
			return $RegistrationData->renderWith('Forms/DiamondFormulaOneReg');
		}
		elseif($this->MyFormType == 'PlatinumIndy'){
			$RegistrationData = new ArrayData(array(
				'Item'      => 'Platinum/Indy',
				'GolfPrice' => 10000, 'PriceTag' => '$10,000',
				'XtraPrice' => 1000, 'XtraTag' => '$1,000',
				'RacePrice' => 11000, 'Price2Tag' => '$11,000',
				'ExtraTeam' => false, 'Players' => 4
			));
			return $RegistrationData->renderWith('Forms/GolfRegistration');
		}
		elseif($this->MyFormType == 'GoldDaytona'){
			$RegistrationData = new ArrayData(array(
				'Item'      => 'Gold/Daytona',
				'GolfPrice' => 5000, 'PriceTag' => '$5,000',
				'XtraPrice' => 2000, 'XtraTag' => '$2,000',
				'RacePrice' => 7000, 'Price2Tag' => '$7,000',
				'ExtraTeam' => false, 'Players' => 4
			));
			return $RegistrationData->renderWith('Forms/GolfRegistration');
		}
	}
}
