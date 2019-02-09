<form action="https://shoppingcartsecure.com/cart32.exe/4356343682-AddItem" method="post" class="form-compact">
    <input type="hidden" name="item" value="$Title">
    <input type="hidden" name="sponsorType" value="$Type">
    <input type="hidden" name="Qty" value="1">
    <input name="t1" type="hidden" value="t-Company Name">
    <input name="t2" type="hidden" value="t-Company Contact">
    <input name="t3" type="hidden" value="t-Email">
    <input name="t4" type="hidden" value="t-Phone">
    <input name="t5" type="hidden" value="t-Player 1">
    <input name="t6" type="hidden" value="t-Player 2">
    <input name="t7" type="hidden" value="t-Player 3">
    <input name="t8" type="hidden" value="t-Player 4">

    <div class="c">
        <fieldset class="mb-2">
            <% if $AllowQty %>
                <div class="form-row">
                    <label for="quantity" class="col-form-label col-md-3 text-md-right">Quantity</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control form-control-sm" name="Qty" />
                    </div>
                </div>
            <% end_if %>

            <% if $CompanyInfo %>
            <div class="form-row">
                <label for="t1" class="col-form-label col-md-3 text-md-right">Company Name</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="t1" />
                </div>
            </div>
            <div class="form-row">
                <label for="t2" class="col-form-label col-md-3 text-md-right">Company Contact</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="t2" />
                </div>
            </div>
            <div class="form-row">
                <label for="t3" class="col-form-label col-md-3 text-md-right">Email Address</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="t3" />
                </div>
            </div>
            <div class="form-row">
                <label for="t4" class="col-form-label col-md-3 text-md-right">Phone Number</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="t4" />
                </div>
            </div>
            <% end_if %>
        </fieldset>

        <% if $AddTeam %>
        <hr class="my-1">
        <fieldset class="mb-2">
            <p class="mb-1">Enter Team 1 player names if known.</p>
            <div class="form-row">
                <label for="p1" class="col-form-label col-md-3 text-md-right">Player 1</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="p1" />
                </div>
            </div>
            <div class="form-row">
                <label for="p2" class="col-form-label col-md-3 text-md-right">Player 2</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="p2" />
                </div>
            </div>
            <div class="form-row">
                <label for="p3" class="col-form-label col-md-3 text-md-right">Player 3</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="p3" />
                </div>
            </div>
            <div class="form-row">
                <label for="p4" class="col-form-label col-md-3 text-md-right">Player 4</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="p4" />
                </div>
            </div>
        </fieldset>
        <% end_if %>
        <% if $ExtraTeam %>
        <hr class="my-1">
        <fieldset class="collapse show" id="more-players">
            <p class="mb-1">Enter Team 2 player names if known.</p>
            <div class="form-row">
                <label for="p5" class="col-form-label col-md-3 text-md-right">Player 1</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="p5" />
                </div>
            </div>
            <div class="form-row">
                <label for="p6" class="col-form-label col-md-3 text-md-right">Player 2</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="p6" />
                </div>
            </div>
            <div class="form-row">
                <label for="p7" class="col-form-label col-md-3 text-md-right">Player 3</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="p7" />
                </div>
            </div>
            <div class="form-row">
                <label for="p8" class="col-form-label col-md-3 text-md-right">Player 4</label>
                <div class="col-md-6">
                    <input type="text" class="form-control form-control-sm" name="p8" />
                </div>
            </div>
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
            <% if $GolfPrice > 0 && Not $GolfIncluded %>
                <div class="form-row">
                    <label for="golf-price" class="col-form-label col-md-3 text-md-right">Golf:</label>
                    <div class="col-md-6">
                        <% if $GolfIncluded %>
                        <input id="golf-price" type="text" class="form-control form-control-sm" value="Included" readonly />
                        <% else %>
                        <input id="golf-price" type="text" class="form-control form-control-sm" name="price[]" value="$GolfPrice" readonly />
                        <% end_if %>
                    </div>
                </div>
            <% end_if %>

            <% if $RacePrice > 0 && Not $RaceIncluded %>
            <div class="form-row">
                <label for="race-price" class="col-form-label col-md-3 text-md-right">Race:</label>
                <div class="col-md-6">
                    <% if $RaceIncluded %>
                    <input id="race-price" type="text" class="form-control form-control-sm" value="Included" readonly />
                    <% else %>
                    <div class="form-check ml-2">
                        <input class="form-check-input" type="checkbox" value="$RacePrice" name="price[]" id="race-price">
                        <label class="form-check-label" for="race-price"> $RacePrice.Nice </label>
                    </div>
                    <% end_if %>
                </div>
            </div>
            <% end_if %>

            <% if $CarPrice > 0 && Not $CarIncluded %>
            <div class="form-row">
                <label for="car-price" class="col-form-label col-md-3 text-md-right">New Car:</label>
                <div class="col-md-6">
                    <% if $CarIncluded %>
                    <input id="car-price" type="text" class="form-control form-control-sm" value="Included" readonly />
                    <% else %>
                    <div class="form-check ml-2">
                        <input class="form-check-input" type="checkbox" value="$CarPrice" name="price[]" id="car-price"<% if not $RaceIncluded %> disabled<% end_if %>>
                        <label class="form-check-label" for="race-price"> $CarPrice.Nice </label>
                    </div>
                    <% end_if %>
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
            <button type="submit" name="submit" class="btn btn-sm btn-secondary btn-block"><% if $ActionCall %>$ActionCall<% else %>Submit<% end_if %></button>
        </div>
    </div>



</form>
