<?php

class TicketRegController extends PageController
{
	function getTicketType()
	{
		if ($this->MyFormType == 'banquet') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">

                      <input type=hidden name="item" value="Add extra banquets tickets">
                      <input type=hidden name="Price" value="40">
                      <input type=hidden name="sponsorType" value="Ticket">
                      Qty:
                      <input type=text name="Qty" value="1" size=3>
                      <br>
                      <br>
                      <b>Price:</b> $40 <br>
                      <br>
                      <input name="submit" type=submit value="Submit">
</form><br />
';
		}
		if ($this->MyFormType == 'raffle') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">
			  <input type=hidden name="item" value="Purchase raffle tickets">
			  <input type=hidden name="sponsorType" value="Ticket">
			  Qty:
			  <input type=text name="Qty" size=3>
			  <br>
			  Tickets are sold in increments of 10, giving you 10 chances to win with each $10 donation.
			  <br>
			  <b>Price</b>: $10
			  <input type=hidden name="Price" value="10">
			  <br>
			  <br>
			  <input name="submit" type=submit value="Submit">
			</form><br />
';
		}
		if ($this->MyFormType == 'other') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">
			<input type=hidden name="sponsorType" value="Ticket">
			   Sponsorship:
			  <input type=text name="item">
			  <br>
			  <br>
			  <input type=hidden name="t1" value="t-Detail">
			  Detail:
			  <input type=text name="p1">
			  <br>
			  <br>
			  <b>Value</b>: <input type="text" name="Price">
			  <br>
			  <br>
			  <input name="submit" type=submit value="Submit">
			</form>
			<br />
';
		}
		if ($this->MyFormType == 'extraBody') {
			return '<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post">
			  <input type=hidden name="item" value="Extra Car Body">
			  <input type=hidden name="sponsorType" value="Ticket">
			  Qty:
			  <input type=text name="Qty" size=3 value="1">
			  <br /><br />
			  <b>Price</b>: $450
			  <input type=hidden name="Price" value="450">
			  <br>
			  <br>
			  <input name="submit" type=submit value="Submit">
			</form><br />
';
		}
	}
}
