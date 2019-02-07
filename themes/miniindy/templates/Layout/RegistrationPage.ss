
<% include SideBar %>
<div id="Content" class="typography">
	<% include Breadcrumbs %>
    <hr>
	<h2>$Title :: $EntryPrice.Nice</h2>
    <hr>
	$Content

	<% if $SiteConfig.RegIsOpen %>
		$RegForm
		$checkPO
	<% else %>
		<p>Registration is currently closed</p>
	<% end_if %>
</div>
