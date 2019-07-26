<% include Menu2 %>

<div id="Content" class="typography">

	<% include BreadCrumbs %>

	<h2>$Title</h2>

	$Content

	<% if getGolfType %>
		$getGolfType
		$checkPO
	<% else %>
		<p>Registration is currently closed</p>
	<% end_if %>

</div>
