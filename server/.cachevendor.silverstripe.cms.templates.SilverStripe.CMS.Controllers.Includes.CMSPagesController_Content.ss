<?php
$val .= '<div id="pages-controller-cms-content" class="flexbox-area-grow fill-height cms-content ';

$val .= $scope->locally()->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content">
    <div class="cms-content-header north vertical-align-items">
        <div class="cms-content-header-info fill-width vertical-align-items">
            ';

if ($scope->locally()->hasValue('TreeIsFiltered', null, true)) { 
$val .= '
                <a class="btn btn-secondary font-icon-left-open-big toolbar__back-button btn--no-text" href="';

$val .= $scope->locally()->XML_val('BreadcrumbsBacklink', null, true);
$val .= '">
                    <span class="sr-only">';

$val .= _t('SilverStripe\Admin\LeftAndMain.NavigateUp',"Return to Pages");
$val .= '</span>
                </a>
            ';


}
$val .= '
            ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\Admin\\CMSBreadcrumbs'], 'SilverStripe\\Admin\\CMSBreadcrumbs'], $scope->getItem(), array(), $scope, true);

$val .= '
            ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\CMS\\Controllers\\CMSMain_Filter'], 'SilverStripe\\CMS\\Controllers\\CMSMain_Filter'], $scope->getItem(), array(), $scope, true);

$val .= '
        </div>
    </div>

    <div class="flexbox-area-grow fill-height cms-content-fields ui-widget-content cms-panel-padded">
        ';

$val .= $scope->locally()->XML_val('Tools', null, true);
$val .= '
        ';

$val .= $scope->locally()->XML_val('PageList', null, true);
$val .= '
    </div>
</div>
';

