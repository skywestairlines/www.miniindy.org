<?php
$val .= '<br /><br /><br /><br /><br /><br />
<div class="container">
<div class="row">
<p class="col ">
	<a class="d-inline-block" href="http://www.youtube.com/MiniIndySGU" target="_blank">
        <i class="fa fa-youtube-square fa-2x text-danger bg-white p-1"></i>
    ';


$val .= '
    </a>
	<a class="d-inline-block" href="http://www.flickr.com/photos/miniindysgu/" target="_blank">
        <i class="fa fa-flickr fa-2x bg-white p-1" style="color:#ff0084"></i>
    ';


$val .= '
    </a>
	<a class="d-inline-block" href="https://www.facebook.com/SkyWestMiniIndy/" target="_blank">
        <i class="fa fa-facebook-square fa-2x text-primary bg-white p-1"></i>
    ';


$val .= '
    </a>

</p>
<p class="col-md-6">
	<a href="site-map/">Site Map</a> |
	';

$scope->locally()->obj('showFooterLinks', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '<a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '">';

$val .= $scope->locally()->obj('MenuTitle', null, true)->XML_val('XML', null, true);
$val .= '</a>';

if ($scope->locally()->hasValue('Last', null, true)) { 

}else { 
$val .= ' | ';


}

}; $scope->popScope(); 
$val .= '
	<!-- <a href="miniindy-teams/">Teams</a> |
	<a href="about-miniindy/">About</a> |
	<a href="contact-miniindy/">Contact</a> -->
</p>
<p class="col">
	<a href="http://www.skywest.com/" target="_blank">SkyWest Airlines</a> &copy; 1999-';

$val .= $scope->locally()->obj('Now', null, true)->XML_val('Year', null, true);
$val .= '
</p>
</div>
</div>
';

