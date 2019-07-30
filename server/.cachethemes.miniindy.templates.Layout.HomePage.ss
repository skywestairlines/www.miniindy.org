<?php
$val .= '<div class="typography">

<div id="Content">
<div id="slides" style="width:100%">
	<div class="slidesHolder">
		<div class="slides_container">
			';

$scope->locally()->obj('SliderImages', null, true)->obj('Sort', array('SortOrder'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			';

if ($scope->locally()->hasValue('Photo', null, true)) { 
$val .= '
			<div>
				';

if ($scope->locally()->hasValue('LinkID', null, true)) { 
$val .= '<a href="';

$val .= $scope->locally()->XML_val('Anchor', null, true);
$val .= '">';


}
$val .= '
				';

$val .= $scope->locally()->obj('Photo', null, true)->XML_val('Fit', array('580', '350'), true);
$val .= '
				';

if ($scope->locally()->hasValue('Caption', null, true)) { 
$val .= '
				<div class="caption">
					<p>';

$val .= $scope->locally()->XML_val('Caption', null, true);
$val .= '</p>
				</div>';


}
$val .= '
				';

if ($scope->locally()->hasValue('LinkID', null, true)) { 
$val .= '</a>';


}
$val .= '
			</div>
			';


}
$val .= '
			';


}; $scope->popScope(); 
$val .= '
		</div>
	</div>';


$val .= '
</div>';


$val .= '


';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '

';


$val .= '

<div class="major-sponsors">
	<h4><span>Major Sponsors</span></h4>
	';

if ($scope->locally()->hasValue('MainSponsors', null, true)) { 
$val .= '
	<div class="row">
		';

$scope->locally()->obj('MainSponsors', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
        <div class="col-md-4 col-sm-6 card">
            <div class="card-body p-0">
            <a href="';

$val .= $scope->locally()->XML_val('customLink', null, true);
$val .= '" class="" target="_blank">
				';

if ($scope->locally()->hasValue('Logo', null, true)) { 
$val .= '
				<img src="';

$val .= $scope->locally()->obj('Logo', null, true)->obj('scaleWidth', array('220'), true)->XML_val('URL', null, true);
$val .= '" alt="';

$val .= $scope->locally()->obj('Logo', null, true)->XML_val('TITLE', null, true);
$val .= '" class="img-fluid">
				';


}else { 
$val .= '
				<div class="noLogo"></div>
				';


}
$val .= '
            </a>
            </div>
            <div class="card-footer bg-primary row p-2">
            <a href="';

$val .= $scope->locally()->XML_val('customLink', null, true);
$val .= '" class="text-white" target="_blank">
             ';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '
             </a>
            </div>
        </div>
        ';


$val .= '
		';


}; $scope->popScope(); 
$val .= '
    </div>
	';


}else { 
$val .= '
	<p>Car Sponsors Coming Soon.</p>
	';


}
$val .= '
</div>
<!--<div class="GoldSponsers homeFix" style="width:32%;float:left;">
	<h4><span>Benefiting</span></h4>
	';

if ($scope->locally()->hasValue('BenefitingSponsors', null, true)) { 
$val .= '
	<ul>
		';

$scope->locally()->obj('BenefitingSponsors', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		';

if ($scope->locally()->hasValue('customLink', null, true)) { 
$val .= '
		<a href="';

$val .= $scope->locally()->XML_val('customLink', null, true);
$val .= '" class="logo" target="_blank"> ';


}
$val .= '
		<li class="sponsor homeFix';

if ($scope->locally()->hasValue('MultipleOf', array('3'), true)) { 
$val .= ' Last';


}
if ($scope->locally()->hasValue('First', null, true)) { 
$val .= ' First';


}
if ($scope->locally()->hasValue('MultipleOf', array('4'), true)) { 
$val .= ' First';


}
$val .= '">

				';

if ($scope->locally()->hasValue('Logo', null, true)) { 
$val .= '
				';

$val .= $scope->locally()->obj('Logo', null, true)->XML_val('setWidth', array('220'), true);
$val .= '
				';


}else { 
$val .= '
				<div class="noLogo"></div>
				';


}
$val .= '
				<div class="name">';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '</div>

		</li> ';

if ($scope->locally()->hasValue('customLink', null, true)) { 
$val .= '</a> ';


}
$val .= '
		';

if ($scope->locally()->hasValue('MultipleOf', array('4'), true)) { 
$val .= '<div class="clear"></div>';


}
$val .= '
		';


}; $scope->popScope(); 
$val .= '
		<div class="clear"></div>
		</ul>
	';


}else { 
$val .= '
	<p>Car Sponsors Coming Soon.</p>
	';


}
$val .= '
</div>-->
<br />
<div class="clear"><!-- --></div>
</div>
</div>

<div class="bg-primary px-3">
';

if (!$scope->locally()->hasValue('MiniIndyCookie', null, true)) { 
$val .= '
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
	  	<img src="/assets/website/images/newlogo.png" alt="new_logo">
        ';


$val .= '
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    	<div style="max-width: 480px;">
		<video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="6063516313001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js></div><script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
      </div>
      <div class="modal-footer">
		<form class="form-inline" action="/home/doNotShowMiniIndy" id="minindy-video-form">
			<label>
				<input class="form-control" type="checkbox" name="dontshow" checked="';

$val .= $scope->locally()->XML_val('doNotShowMiniIndy', null, true);
$val .= '" />
				<span class="px-2">Do not show this video again</span>
			</label>
		</form>
      </div>
    </div>
  </div>
</div> 

';


}
$val .= '
</div>';

