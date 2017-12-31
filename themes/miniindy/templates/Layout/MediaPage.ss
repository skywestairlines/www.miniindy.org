<div class="typography">
	<% include SideBar %>
	<div id="Content">
	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
	<h2>$Title</h2>
	$Content
	$SiteMap 
	$Form
	$PageComments
	
	<ul class='media'> 
		<li>
			<span class='title'>News</span>
			<div class='textInfo'>
			<p>Get up to speed on all the latest news, events and insider information about Mini Indy. <a href='http://www.miniindy.org/miniindy-media/miniindy-news/'>Click here</a> for the latest press releases or dig into our news archives.</p>
			</div>
		</li>
		<li>
			<span class='title'>Media</span>
			<div class='textInfo'>
			<p>For media inquiries, please contact Marissa Snow.<br/> 435.634.3548 <br/> <a href="mailto:msnow@skywest.com">msnow@skywest.com</a></p>
			</div>
		</li>
		<li>
			<span class='title'>Photos</span>
			<div class='textInfo'>
			<p><a href='http://www.miniindy.org/miniindy-media/miniindy-photos/'><img src='http://miniindy.org/themes/miniindy/images/Photos.jpg'/></a></p>
			</div>
		</li>
		<li>
			<span class='title'>Videos</span>
			<div class='textInfo'>
			<p><a href='http://www.miniindy.org/miniindy-media/miniindy-videos/'><img src='http://miniindy.org/themes/miniindy/images/Videos.jpg'/></a></p>
			</div>
		</li>
	</ul>
	</div><%-- END CONTENT --%>
</div>