<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post" id="form-id">
<input type="hidden" name="item" value="$Item">
<input type="hidden" name="Qty" value="1" size="3">
<%-- <input type="hidden" name="Price" value="$GolfPrice"> --%>
<input type="hidden" name="Extra" value="$XtraPrice">
<input type="hidden" name="NewCar" value="$RaceCarPrice">
<input type="hidden" name="sponsorType" value="Golf">
<input type="hidden" name="other" value=" with Race Car">
<table border="0" cellpadding="3" class="main">
  <tr>
    <td style="text-align:right;width:auto;whitespace:nowrap;">Company Name:</td>
    <td><input name="p1" type="text" size="30"></td>
  </tr>

  <tr>
    <td>Company Contact:</td>
    <td><input name="p2" type="text" size="30"></td>
  </tr>
  <tr>
    <td>Email:</td>
    <td><input name="p3" type="text" size="30"></td>
  </tr>
  <tr>
    <td>Phone:</td>
    <td><input name="p4" type="text" size="30"></td>
  </tr>
  <tr>
    <td colspan="2">Enter player names if known.</td>
  </tr>
  <tr>
    <td>Player 1:</td>
    <td><input name="p5" type="text" size="30"></td>
  </tr>
  <tr>
    <td>Player 2:</td>
    <td><input name="p6" type="text" size="30"></td>
  </tr>
  <tr>
    <td>Player 3:</td>
    <td><input name="p7" type="text" size="30"></td>
  </tr>
  <tr>
    <td>Player 4:</td>
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
<% if RaceCarPrice %>
<tr>
 <td></td>
 <td>
   <input class="addPrice" name="Price" type="radio" size="3" value="$RaceCarPrice" id="add-t-price3">
   Include <% if RaceCarPrice && RacePrice %>Race w/ <% end_if %> New Car ($CarTag)
 </td>
</tr>
<% end_if %>
 <% if RacePrice %>
   <tr>
      <td></td>
      <td>
        <input class="addPrice" name="Price" type="radio" size="3" value="$RacePrice" id="add-t-price2">
        Include Race w/ Returning Car ($XtraTag)
      </td>
    </tr>
 <% end_if %>
 <% if RacePrice || RaceCarPrice %>
  <tr>
   <td></td>
   <td>
     <input class="addPrice" name="Price" type="radio" size="3" value="$GolfPrice" id="add-t-price1" checked>
     Do not include <% if RaceCarPrice && RacePrice %>Race - Golf Only<% else %>New Car<% end_if %>
   </td>
  </tr>
<% end_if %>
<tr>
  <td width="50px"></td>

</td>
<tr id="t-price1" style="display:table-row">
<td></td>
<td>
  <span><strong>Total Price:</strong></span> <span style="font-size:125%">$PriceTag</span><br /><br /><br />
  <input type="submit" value="Submit" name="submit"></td>
</tr>
<tr id="t-price2" style="display:none">
<td></td>
<td>
  <span><strong>Total Price:</strong></span> <span style="font-size:125%">$Price2Tag</span><br /><br /><br />
  <input type="submit" value="Submit" name="submit">
</td>
<tr id="t-price3" style="display:none">
<td></td>
<td>
  <span><strong>Total Price:</strong></span> <span style="font-size:125%">$Price3Tag</span><br /><br /><br />
  <input type="submit" value="Submit" name="submit">
</td>
</tr>

</table>
</form>
