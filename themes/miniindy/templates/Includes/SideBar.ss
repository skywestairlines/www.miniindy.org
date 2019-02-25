<% if GetStaticSidebar %>
	<% loop GetStaticSidebar %>
	<div id="sidebar" class="typography sidebar">
			<div class="sidebar-box">
		 		<h3 id="results">$MenuTitle.XML</h3>
		  		$Content
				<div class="clear"></div>
			</div>
			<div class="sidebarBottom"></div>
	</div>
	<% end_loop %>
<% end_if %>
