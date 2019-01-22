<%-- include Menu(2) --%>
<% include SideBar %>
<div id="Content" class="typography">
	<% include Breadcrumbs %>
    
	<h2>$Title</h2>
	
	$Content
	
	<% if getRaceType %>
		$getRaceType
		$checkPO
	<% else %>
		<p>Registration is currently closed</p>
	<% end_if %>
    
</div>