<div class="typography">
	<% if Menu(2) %>
		
		<div id="Content">
	<% end_if %>
			
	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
	
		<h2>$Title</h2>
	
		<!--$Content-->
		
		<ul id="TeamList">
			<% loop GetResultsPages %>
				<li>
					<div class="teamName"><a href="$Link">$Title</a></div>
				</li>
			<% end_loop %>
		</ul>
		
	<% if Menu(2) %>
		</div>
	<% end_if %>
</div>