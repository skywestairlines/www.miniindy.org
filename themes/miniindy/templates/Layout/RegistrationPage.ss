

<div id="Content" class="typography">
	<h1 class="main-title">$Title</h1>
	<% include BreadCrumbs %>
	$Content
	<% if $SiteConfig.RegIsOpen || $MyFormType != 'closed' %>
		$RegForm
		$SiteConfig.CheckAndPO
	<% else %>
		<p>Registration is currently closed</p>
	<% end_if %>
</div>
