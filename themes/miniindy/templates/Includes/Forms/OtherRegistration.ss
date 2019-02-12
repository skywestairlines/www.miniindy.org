<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post" class="form-compact">

    <div class="form-container">
        <fieldset class="mb-2">
        <% if $AllowQty %>
        <div class="form-row">
            <label for="quantity" class="col-form-label col-md-3 text-md-right">Quantity</label>
            <div class="col-md-6">
                <input type="number" class="form-control form-control-sm" name="Qty" />
            </div>
        </div>
        <% end_if %>
        <% if $OtherPrices %>
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
        </fieldset>
        <% end_if %>
        <hr class="my-2">
        <fieldset>
            <% if $EntryPrice > 0 %>
            <div class="form-row">
                <label for="entry-price" class="col-form-label col-md-3 text-md-right">Price:</label>
                <div class="col-md-6">
                    <input type="hidden" name="price[]" value="$EntryPrice" />
                    <input type="text" class="form-control form-control-sm" value="$EntryPrice.Nice" readonly />
                </div>
            </div>
            <% end_if %>

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
        </fieldset>
        <div class="offset-md-3 col-md-6 my-2">
            <button type="submit" name="submit" class="btn btn-sm btn-secondary btn-block" data-toggle="modal" data-target="#cart32">
                <% if $ActionCall %>$ActionCall
                <% else %>Submit
                <% end_if %>
            </button>
        </div>
    </div>
</form>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#shoppingCard">
  Launch Shopping cart
</button>

<!-- Modal -->
<div class="modal fade" id="shoppingCard" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body h-100">
        <iframe src="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" frameborder="0" class="w-100"></iframe>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
