<?php
$val .= '<div class="typography">
	<div id="Content">
	<h2>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h2>
	';

if ($scope->locally()->hasValue('Level', array('2'), true)) { 
$val .= '
	  	';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'BreadCrumbs'], 'BreadCrumbs'], $scope->getItem(), array(), $scope, true);

$val .= '
	';


}
$val .= '
	';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '
	';

$val .= $scope->locally()->XML_val('SiteMap', null, true);
$val .= '
	';

$val .= $scope->locally()->XML_val('Form', null, true);
$val .= '
	';

$val .= $scope->locally()->XML_val('PageComments', null, true);
$val .= '
	</div>';


$val .= '
</div>
';

