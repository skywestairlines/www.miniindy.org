<div class="typography">
	<% include SideBar %>
	<div id="Content">
		<% if Level(2) %>
		  	<% include BreadCrumbs %>
		<% end_if %>
		<h2>$Title</h2>
		$Content
		<% if FlyerEntries %><% control FlyerEntries %>
		<p>
			<strong>$FlyerDate.Format(F d), $FlyerDate.Format(Y)</strong>
			<br />
			$Title &nbsp;<a href="$PDF.link" target="_blank">Click here for more details.</a>
		</p>
		<% end_control %><% end_if %>
	</div><%-- END CONTENT --%>
</div>