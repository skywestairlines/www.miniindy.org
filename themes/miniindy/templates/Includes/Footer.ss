<footer id="Footer">
    <br /><br /><br /><br /><br /><br />
    <div class="container">
        <div class="row">
            <p class="col text-left mx-4">
                <%-- <a class="d-inline-block" href="http://www.youtube.com/MiniIndySGU" target="_blank">
                    <i class="fa fa-youtube-square fa-2x text-danger bg-white p-1"></i>
                    <img src="assets/HomePageImages/youtube.png" border="0" />
                </a>
                <a class="d-inline-block" href="http://www.flickr.com/photos/miniindysgu/" target="_blank">
                    <i class="fa fa-flickr fa-2x bg-white p-1" style="color:#ff0084"></i>
                    <img src="assets/HomePageImages/flickr.png" border="0" />
                </a> --%>
                <a class="d-inline-block" href="https://www.facebook.com/SkyWestMiniIndy/" target="_blank">
                    <i class="fa fa-facebook-square fa-2x text-primary bg-white p-1"></i>
                    <%-- <img src="assets/HomePageImages/flogo.png" border="0" /> --%>
                </a>

            </p>
            <p class="col-md-6">
                <a href="site-map/">Site Map</a> |
                <% loop showFooterLinks %><a href="$Link">$MenuTitle.XML</a><% if Last %><% else %> |
                <% end_if %><% end_loop %>
                <!-- <a href="miniindy-teams/">Teams</a> |
	<a href="about-miniindy/">About</a> |
	<a href="contact-miniindy/">Contact</a> -->
            </p>
            <p class="col">
                <a href="http://www.skywest.com/" target="_blank">SkyWest Airlines</a> &copy; 1999-$Now.Year
            </p>
        </div>
    </div>
</footer>

