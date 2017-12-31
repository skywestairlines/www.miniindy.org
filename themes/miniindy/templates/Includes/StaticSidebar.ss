<% if GetStaticSidebar %>
	<% loop GetStaticSidebar %>
	<div id="Sidebar" class="typography">
			<div class="sidebarBox">
		 		<h3 id="$Title">$MenuTitle.XML</h3>
		  		$Content
				<div class="clear"></div>
			</div>
			<div class="sidebarBottom"></div>
	</div>
	<% end_loop %>
<% end_if %>