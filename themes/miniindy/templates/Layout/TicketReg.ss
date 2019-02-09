

<div id="Content" class="typography">
	<% include Breadcrumbs %>

	<h2>$Title</h2>

	$Content

	<% if getTicketType %>
		$getTicketType
		$checkPO
	<% else %>
		<p>Registration is currently closed</p>
	<% end_if %>

</div>
