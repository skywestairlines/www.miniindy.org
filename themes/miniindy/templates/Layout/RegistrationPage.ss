

<div id="Content" class="typography">
	<h1 class="main-title">$Title</h1>
	<% include Breadcrumbs %>
	$Content
	<% if $SiteConfig.RegIsOpen %>
		$RegForm
		$SiteConfig.CheckAndPO
	<% else %>
		<p>Registration is currently closed</p>
	<% end_if %>
</div>