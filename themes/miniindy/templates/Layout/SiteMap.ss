<div class="typography">
	<% if Menu(2) %>
		<% include SideBar %>
		<div id="Content">
	<% end_if %>
			
	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
	
		<h2>$Title</h2>
	
		<div class="sitemap">
			
			<!--<ul id="utilityNav">
				<li><a href="/register">Register</a></li>
				<li><a href="/login">Log In</a></li>
				<li><a href="/sitemap">Site Map</a></li>
			</ul>-->
			
			$SiteMap
		</div>
	
	<% if Menu(2) %>
		</div>
	<% end_if %>
</div>