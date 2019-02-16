<div class="typography">

<div id="Content">
$Content
<div class="row">
<% loop $Albums %>
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
