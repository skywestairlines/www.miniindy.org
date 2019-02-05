<% include Menu(2) %>
<% include SideBar %>
<div id="Content" class="typography">
	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
    
	<h2>$Title</h2>
	
    $Content
</div>