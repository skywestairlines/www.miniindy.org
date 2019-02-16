<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post" class="form-compact">
    <input type="hidden" name="sponsorType" value="$Type">
    <!--<input name="Price" type="hidden" value="$EntryPrice">-->
    <input name="t1" type="hidden" value="t-Company Name">
    <input name="t2" type="hidden" value="t-Company Contact">
    <input name="t3" type="hidden" value="t-Email">
    <input name="t4" type="hidden" value="t-Phone">
    <div class="form-container">
        <fieldset class="mb-2">
        <% if $AllowQty %>
        <div class="form-row">
            <label for="quantity" class="col-form-label col-md-3 text-md-right">Quantity</label>
            <div class="col-md-6">
                <input type="number" class="form-control form-control-sm" name="Qty" />
            </div>
        </div>
        <% else %>
            <input type="hidden" name="Qty" value="1">
        <% end_if %>

        <% if $OtherPrices && $OtherPrices.Items.Count > 0 %>
        <div class="table-responsive">
        <table class="table table-compact">
            <%-- Let's talk about uncommenting the following lines --%>
            <%-- <thead>
                <tr>
                    <th></th>
                    <th>Item</th>
                    <th>Value</th>
                    <th></th>
                </tr>
            </thead> --%>
            <tbody>
            <% loop $OtherPrices.Items %>
                <tr>
                    <td>$Pos</td>
                    <td>$Key</td>
                    <td>${$Value}</td>
                    <td>
                        <button type="submit" name="Price" class="btn btn-xs btn-primary" value="$Value">
                            <% if $Top.ActionCall %>$Top.ActionCall
                            <% else %>Submit
                            <% end_if %>
                        </button>
                    </td>
                </tr>
                <%-- Let's talk about commenting this out instead --%>
                <% if $TotalItems > 1 && not $Last %>
                <tr>
                    <td colspan="5">
                        <div class="text-center">-OR-</div>
                    </td>
                </tr>
                <% end_if %>
            <% end_loop %>
            </tbody>
        </table>
        </div>
        </fieldset>
        <% end_if %>
        <% if $Sponsorship %>
        <fieldset>
            <% loop $Sponsorship.Items %>
                <div class="form-row">
                    <label for="$Key" class="col-form-label col-md-3 text-md-right">$Value</label>
                    <div class="col-md-6">
                        <input type="text" name="$Key" class="form-control form-control-sm" />
                    </div>
                </div>
            <% end_loop %>
        <% else %>
            <input type="hidden" name="item" value="$Title">
            <% if $HideTotal %>
            <input id="total-price" type="hidden" name="Price" value="$EntryPrice" />
            <% else %>
            <div class="form-row border-top">
                <label for="total-price" class="col-form-label col-md-3 text-md-right">Total:</label>
                <div class="col-md-6">
                    <input id="total-price" type="hidden" name="Price" />
                    <input id="display-price" type="text" class="form-control form-control-sm bold" readonly />
                </div>
            </div>
            <% end_if %>
        <% end_if %>
        <% if $EntryPrice > 0 %>
            <div class="form-row">
                <label for="entry-price" class="col-form-label col-md-3 text-md-right">Price:</label>
                <div class="col-md-6">
                    <input type="hidden" name="price[]" value="$EntryPrice" />
                    <input type="text" class="form-control form-control-sm" value="$EntryPrice.Nice" readonly />
                </div>
            </div>
        <% end_if %>
        <div class="offset-md-3 col-md-6 my-2">
            <button type="submit" name="submit" class="btn btn-sm btn-secondary btn-block">
                <% if $ActionCall %>$ActionCall
                <% else %>Submit
                <% end_if %>
            </button>
        </div>
        </fieldset>
    </div>
</form>
