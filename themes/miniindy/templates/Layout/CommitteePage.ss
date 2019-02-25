<div class="typography">

	<div id="Content">
	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
	<h2>$Title</h2>
	$Content
	<%-- <img src="/assets/Uploads/_resampled/SetWidth620-Committee.jpg" alt="Committee.jpg"> --%>
    <img src="$cPhoto.URL" class="img-fluid" alt="$cPhoto.URL.TITLE">

	</div><%-- END CONTENT --%>
</div>
