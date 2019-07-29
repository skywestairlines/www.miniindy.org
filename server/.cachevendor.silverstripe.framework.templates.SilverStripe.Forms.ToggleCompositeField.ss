<?php
$val .= '<div ';

$val .= $scope->locally()->XML_val('AttributesHTML', null, true);
$val .= '>
	<h';

$val .= $scope->locally()->XML_val('HeadingLevel', null, true);
$val .= '><a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</a></h';

$val .= $scope->locally()->XML_val('HeadingLevel', null, true);
$val .= '>
	<div>
		';

$scope->locally()->obj('FieldList', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
		';


}; $scope->popScope(); 
$val .= '
	</div>
</div>
';

