<?php
$val .= '<div ';

$val .= $scope->locally()->XML_val('getAttributesHTML', array('class'), true);
$val .= ' class="ss-tabset ';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= '">
	<ul class="nav nav-tabs">
	  ';

$scope->locally()->obj('Tabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<li class="';

$val .= $scope->locally()->XML_val('FirstLast', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('MiddleString', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= ' nav-item">
			<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#';

$val .= $scope->locally()->XML_val('id', null, true);
$val .= '" id="tab-';

$val .= $scope->locally()->XML_val('id', null, true);
$val .= '" class="nav-link">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</a>
		</li>
	  ';


}; $scope->popScope(); 
$val .= '
	</ul>

	<div class="tab-content">
	  ';

$scope->locally()->obj('Tabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		  ';

if ($scope->locally()->hasValue('Tabs', null, true)) { 
$val .= '
			';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
		  ';


}else { 
$val .= '
			<div ';

$val .= $scope->locally()->XML_val('getAttributesHTML', array('class'), true);
$val .= ' class="tab-pane ';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= '">
				';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
				';


}; $scope->popScope(); 
$val .= '
			</div>
		  ';


}
$val .= '
	  ';


}; $scope->popScope(); 
$val .= '
	</div>
</div>
';

