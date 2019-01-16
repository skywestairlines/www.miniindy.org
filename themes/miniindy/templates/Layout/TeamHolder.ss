<div class="typography">
	<% if Menu(2) %>
		<% include SideBar %>
		<div id="Content">
	<% end_if %>
			
	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
		<% if GetTeamPages %>
		<h2>$MenuTitle.XML as of $LastEdited.Format(m-d-Y)</h2>
		
		<ul id="TeamList">
			<% loop GetTeamPages %>
				<li<% if IsThird %> class="clear"<% end_if %>>
					<div class="teamLogo"><a href="$Link" title="view profile for $Title">$Photo.SetWidth(250)</a></div>
				</li>
			<% end_loop %>
		</ul>
		<% else %>
		<h2>There are no teams currently registered</h2>
		<% end_if %>
	<% if Menu(2) %>
		</div>
	<% end_if %>
</div>