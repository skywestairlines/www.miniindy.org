<% include Menu2 %>
<div id="Content" class="typography">
	<% include Breadcrumbs %>

	<h2>$Title</h2>

	<% if $RegForm %>
		$RegForm
		$checkPO
	<% else %>
		<p>Registration is currently closed</p>
	<% end_if %>

</div>
