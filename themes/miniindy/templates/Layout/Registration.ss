
<% include SideBar %>
<div id="Content" class="typography">
	<% include Breadcrumbs %>

	<h2>$Title</h2>

    $Debug

	$Content

	<% if getRegType %>
		$getRegType
		$checkPO
	<% else %>
		<p>Registration is currently closed</p>
	<% end_if %>
</div>
