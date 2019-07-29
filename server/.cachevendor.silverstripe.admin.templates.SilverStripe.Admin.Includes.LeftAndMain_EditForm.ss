<?php
if ($scope->locally()->hasValue('IncludeFormTag', null, true)) { 
$val .= '
<form ';

$val .= $scope->locally()->XML_val('FormAttributes', null, true);
$val .= ' data-layout-type="border">
';


}
$val .= '
	<div class="toolbar toolbar--north cms-content-header vertical-align-items">
		<div class="cms-content-header-info flexbox-area-grow vertical-align-items">
			';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\Admin\\BackLink_Button'], 'SilverStripe\\Admin\\BackLink_Button'], $scope->getItem(), array(), $scope, true);

$val .= '
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
			<div class="cms-content-header-tabs cms-tabset-nav-primary">
				<ul>
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

		<!-- <div class="cms-content-search">...</div> -->
	</div>

	';

$scope->locally()->obj('Controller', null, true); $scope->pushScope();
$val .= '
		';

$val .= $scope->locally()->XML_val('EditFormTools', null, true);
$val .= '
	';


; $scope->popScope(); 
$val .= '

	<div class="panel panel--padded panel--scrollable flexbox-area-grow ';

if (!$scope->locally()->obj('Fields', null, true)->hasValue('hasTabset', null, true)) { 
$val .= 'cms-panel-padded';


}
$val .= '">
		';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= '
		<p id="';

$val .= $scope->locally()->XML_val('FormName', null, true);
$val .= '_error" class="alert ';

$val .= $scope->locally()->XML_val('AlertType', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Message', null, true);
$val .= '</p>
		';


}else { 
$val .= '
		<p id="';

$val .= $scope->locally()->XML_val('FormName', null, true);
$val .= '_error" class="alert ';

$val .= $scope->locally()->XML_val('AlertType', null, true);
$val .= '" style="display: none"></p>
		';


}
$val .= '

		<fieldset>
			';

if ($scope->locally()->hasValue('Legend', null, true)) { 
$val .= '<legend>';

$val .= $scope->locally()->XML_val('Legend', null, true);
$val .= '</legend>';


}
$val .= '
			';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
			';


}; $scope->popScope(); 
$val .= '
			<div class="clear"><!-- --></div>
		</fieldset>
	</div>

	<div class="toolbar--south cms-content-actions cms-content-controls south">
		';

if ($scope->locally()->hasValue('Actions', null, true)) { 
$val .= '
		<div class="btn-toolbar">
			';

$scope->locally()->obj('Actions', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
			';


}; $scope->popScope(); 
$val .= '
			';

if ($scope->locally()->obj('Controller', null, true)->hasValue('LinkPreview', null, true)) { 
$val .= '
			<a href="';

$val .= $scope->locally()->obj('Controller', null, true)->XML_val('LinkPreview', null, true);
$val .= '" class="cms-preview-toggle-link ss-ui-button" data-icon="preview">
				';

$val .= _t('SilverStripe\Admin\LeftAndMain.PreviewButton','Preview');
$val .= ' &raquo;
			</a>
			';


}
$val .= '
		</div>
		';


}
$val .= '
	</div>
';

if ($scope->locally()->hasValue('IncludeFormTag', null, true)) { 
$val .= '
</form>
';


}
$val .= '
';

