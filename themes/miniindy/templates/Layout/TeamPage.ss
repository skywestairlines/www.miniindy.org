<% include Menu(2) %>

<div id="Content" class="typography">
	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
    
	<h3>$Title</h3>
	<br /><br />	
    <div id="TeamPhoto">
    	$Photo.SetWidth(300)
    </div>
 	<br />
    $Content
</div>