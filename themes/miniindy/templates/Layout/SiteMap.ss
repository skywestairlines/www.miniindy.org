<div class="typography">
	<%-- <% if Menu(2) %>
		<div id="Content">
	<% end_if %> --%>

	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>

		<h2>$Title</h2>
        $Debug

		<div class="sitemap">
			<%-- $SiteMapper --%>
		</div>

	<%-- <% if Menu(2) %>
		</div>
	<% end_if %> --%>
</div>
