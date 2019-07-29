<?php
$val .= '<div class="cms-content-tools fill-height cms-panel cms-panel-layout" data-expandOnClick="true" data-layout-type="border" id="cms-content-tools-CMSMain">
    <div class="cms-content-header north vertical-align-items">
        <div class="cms-content-header-info vertical-align-items fill-width">
            <div class="section-heading flexbox-area-grow">
                <span class="section-label"><a href="';

$val .= $scope->locally()->XML_val('LinkPages', null, true);
$val .= '">';

$val .= $scope->locally()->obj('MenuCurrentItem', null, true)->XML_val('Title', null, true);
$val .= '</a></span>
            </div>
            ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\CMS\\Controllers\\CMSMain_Filter'], 'SilverStripe\\CMS\\Controllers\\CMSMain_Filter'], $scope->getItem(), array(), $scope, true);

$val .= '
        </div>
    </div>
    <div class="panel panel--scrollable flexbox-area-grow fill-height cms-panel-content">
        <div class="cms-content-filters cms-content-filters--hidden">
            <div
                class="search-holder search-holder--cms"
                data-schema="';

$val .= $scope->locally()->XML_val('SearchFieldSchema', null, true);
$val .= '"
            ></div>
        </div>
        ';

$val .= $scope->locally()->XML_val('PageListSidebar', null, true);
$val .= '
    </div>
    <div class="cms-panel-content-collapsed">
        <h3 class="cms-panel-header">';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</h3>
    </div>
    <div class="toolbar toolbar--south cms-panel-toggle">
        <a class="toggle-expand" href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"><span>&raquo;</span></a>
        <a class="toggle-collapse" href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"><span>&laquo;</span></a>
    </div>
</div>
';

