<div class="typography">
	
	<div id="Content">
		<% if Level(2) %>
		  	<% include BreadCrumbs %>
		<% end_if %>
		<h2>$Title</h2>
		$Content
		<% if NewsEntries %><% loop NewsEntries %>
		<p>
			<strong>$NewsDate.Format('MMM. d, y')</strong>
			<br />
			$Title &nbsp;<a href="$PDF.link" target="_blank">Click here for more details.</a>
		</p>
		<% end_loop %><% end_if %>
	</div><%-- END CONTENT --%>
</div>