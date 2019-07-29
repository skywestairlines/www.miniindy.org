<?php
$val .= '<div id="settings-controller-cms-content" class="cms-content cms-tabset flexbox-area-grow fill-height ';

$val .= $scope->locally()->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content">

	<div class="cms-content-header vertical-align-items">
		';

$scope->locally()->obj('EditForm', null, true); $scope->pushScope();
$val .= '
			<div class="cms-content-header-info flexbox-area-grow">
				';

$scope->locally()->obj('Controller', null, true); $scope->pushScope();
$val .= '
					';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\Admin\\CMSBreadcrumbs'], 'SilverStripe\\Admin\\CMSBreadcrumbs'], $scope->getItem(), array(), $scope, true);

$val .= '
				';


; $scope->popScope(); 
$val .= '
			</div>
			';

if ($scope->locally()->obj('Fields', null, true)->hasValue('hasTabset', null, true)) { 
$val .= '
				';

$scope->locally()->obj('Fields', null, true)->obj('fieldByName', array('Root'), true); $scope->pushScope();
$val .= '
				<div class="cms-content-header-tabs">
					<ul class="cms-tabset-nav-primary">
					';

$scope->locally()->obj('Tabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
						<li';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' class="';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= '"';


}
$val .= '><a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#';

$val .= $scope->locally()->XML_val('id', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</a></li>
					';


}; $scope->popScope(); 
$val .= '
					</ul>
				</div>
				';


; $scope->popScope(); 
$val .= '
			';


}
$val .= '
		';


; $scope->popScope(); 
$val .= '
	</div>

	';

$val .= $scope->locally()->XML_val('EditForm', null, true);
$val .= '

</div>
';

