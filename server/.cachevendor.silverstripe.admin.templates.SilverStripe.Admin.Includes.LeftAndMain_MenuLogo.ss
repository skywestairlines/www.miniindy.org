<?php
$val .= '<div class="cms-sitename">
    <a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#" class="cms-sitename__link font-icon-silverstripe font-icon-large" target="_blank">
    </a>
    <a class="cms-sitename__title" href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '" target="_blank">';

if ($scope->locally()->hasValue('SiteConfig', null, true)) { 
$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);

}else { 
$val .= $scope->locally()->XML_val('ApplicationName', null, true);

}
$val .= '</a>
</div>
';

