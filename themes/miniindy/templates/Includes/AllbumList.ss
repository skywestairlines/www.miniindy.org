<div class="typography">
<h4>PHPTOP</h4>
    <div id="Content">
        <div class="row">
        $Debug
        <% loop $Photos %>
        <h3>$ID</h3>
            <div class="col-md-6">
                <div class="card p-2 bg-primary">
                    <a href="{$Up.Link}album/{$ID}" class="btn btn-block btn-primary btn-xs text-white">
                    $Name
                    <span class="px-3">( $Images.TotalItems )</span>
                    </a>
                </div>
            </div>
        <% end_loop %>
        </div>
    </div>
</div>
