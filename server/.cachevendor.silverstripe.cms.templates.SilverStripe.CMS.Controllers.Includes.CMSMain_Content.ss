<?php
$val .= '<div id="pages-controller-cms-content" class="has-panel cms-content flexbox-area-grow fill-width fill-height ';

$val .= $scope->locally()->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content" data-ignore-tab-state="true">
	';

$val .= $scope->locally()->XML_val('Tools', null, true);
$val .= '

	<div class="fill-height flexbox-area-grow">
		<div class="cms-content-header north">
			<div class="cms-content-header-info flexbox-area-grow vertical-align-items fill-width">
				<a href="';

$val .= $scope->locally()->XML_val('BreadcrumbsBackLink', null, true);
$val .= '" class="btn btn-secondary btn--no-text font-icon-left-open-big hidden-lg-up toolbar__back-button"></a>
				';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\Admin\\CMSBreadcrumbs'], 'SilverStripe\\Admin\\CMSBreadcrumbs'], $scope->getItem(), array(), $scope, true);

$val .= '
			</div>

			<div class="cms-content-header-tabs cms-tabset">
				<ul class="cms-tabset-nav-primary nav nav-tabs">
					<li class="nav-item content-treeview';

if ($scope->locally()->XML_val('TabIdentifier', null, true)=='edit') { 
$val .= ' ui-tabs-active';


}
$val .= '">
						<a href="';

$val .= $scope->locally()->XML_val('LinkPageEdit', null, true);
$val .= '" class="nav-link cms-panel-link" title="Form_EditForm" data-href="';

$val .= $scope->locally()->XML_val('LinkPageEdit', null, true);
$val .= '">
							';

$val .= _t('SilverStripe\\CMS\\Controllers\\CMSMain.TabContent','Content');
$val .= '
						</a>
					</li>
					<li class="nav-item content-listview';

if ($scope->locally()->XML_val('TabIdentifier', null, true)=='settings') { 
$val .= ' ui-tabs-active';


}
$val .= '">
						<a href="';

$val .= $scope->locally()->XML_val('LinkPageSettings', null, true);
$val .= '" class="nav-link cms-panel-link" title="Form_EditForm" data-href="';

$val .= $scope->locally()->XML_val('LinkPageSettings', null, true);
$val .= '">
							';

$val .= _t('SilverStripe\\CMS\\Controllers\\CMSMain.TabSettings','Settings');
$val .= '
						</a>
					</li>
					<li class="nav-item content-listview';

if ($scope->locally()->XML_val('TabIdentifier', null, true)=='history') { 
$val .= ' ui-tabs-active';


}
$val .= '">
						<a href="';

$val .= $scope->locally()->XML_val('LinkPageHistory', null, true);
$val .= '" class="nav-link cms-panel-link" title="Form_EditForm" data-href="';

$val .= $scope->locally()->XML_val('LinkPageHistory', null, true);
$val .= '">
							';

$val .= _t('SilverStripe\\CMS\\Controllers\\CMSMain.TabHistory','History');
$val .= '
						</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="flexbox-area-grow fill-height">
			';

$val .= $scope->locally()->XML_val('EditForm', null, true);
$val .= '
		</div>
	</div>
</div>
';

