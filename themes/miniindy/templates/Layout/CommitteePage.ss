<div class="typography">
	<% include SideBar %>
	<div id="Content">
	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
	<h2>$Title</h2>
	$Content
	
	$cPhoto
	
	</div><%-- END CONTENT --%>
</div>