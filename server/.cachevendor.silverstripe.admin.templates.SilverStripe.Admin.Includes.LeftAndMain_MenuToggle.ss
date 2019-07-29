<?php
$val .= '<div class="cms-help__toggle">
    <button class="cms-help__menu" type="button" title="';

$val .= _t('SilverStripe\Admin\LeftAndMain.HelpMenu',"Help menu");
$val .= '" aria-label="';

$val .= _t('SilverStripe\Admin\LeftAndMain.HelpMenu',"Help menu");
$val .= '" aria-expanded="false">
        <span class="cms-help__logo font-icon-silverstripe"></span>
        <span class="cms-help__toggle-title">
            ';

$val .= $scope->locally()->XML_val('ApplicationName', null, true);
$val .= '
        </span>
        <span class="cms-help__badge badge badge-info">
                ';

if ($scope->locally()->hasValue('CMSVersionNumber', null, true)) { 
$val .= '
                    <span class="cms-sitename__version" title="';

$val .= $scope->locally()->XML_val('ApplicationName', null, true);
$val .= ' (';

$val .= _t('SilverStripe\Admin\LeftAndMain.Version',"Version");
$val .= ' - ';

$val .= $scope->locally()->XML_val('CMSVersion', null, true);
$val .= ')">';

$val .= $scope->locally()->obj('CMSVersionNumber', null, true)->XML_val('LimitCharacters', array('3', ''), true);
$val .= '</span>
                ';


}
$val .= '
            </span>
            <span class="cms-help__caret font-icon-caret-up-two"></span>
    </button>
    ';

if ($scope->locally()->hasValue('HelpLinks', null, true)) { 
$val .= '
        <div class="cms-help__links">
            ';

$scope->locally()->obj('HelpLinks', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                ';

if ($scope->locally()->hasValue('URL', null, true)) { 
$val .= '
                    <a class="cms-help__link" href="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" target="_blank" rel="noopener noreferrer">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</a>
                ';


}
$val .= '
            ';


}; $scope->popScope(); 
$val .= '
        </div>
    ';


}
$val .= '
</div>

<div class="sticky-toggle">
    <button class="sticky-toggle__button" type="button" title="';

$val .= _t('SilverStripe\Admin\LeftAndMain.MenuToggleStickyNav',"Sticky nav");
$val .= '">';

$val .= _t('SilverStripe\Admin\LeftAndMain.MenuToggleStickyNav',"Sticky nav");
$val .= '</button>
    <span class="sticky-toggle__status sticky-status-indicator">';

$val .= _t('SilverStripe\Admin\LeftAndMain.MenuToggleAuto',"Auto");
$val .= '</span>
</div>

<a class="toggle-expand" href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#" data-toggle="tooltip" title="';

$val .= _t('SilverStripe\Admin\LeftAndMain.ExpandPanel',"Expand panel");
$val .= '" aria-label="';

$val .= _t('SilverStripe\Admin\LeftAndMain.ExpandPanel',"Expand panel");
$val .= '"><span>&raquo;</span></a>
<a class="toggle-collapse" href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#" data-toggle="tooltip" title="';

$val .= _t('SilverStripe\Admin\LeftAndMain.CollapsePanel',"Collapse panel");
$val .= '" aria-label="';

$val .= _t('SilverStripe\Admin\LeftAndMain.CollapsePanel',"Collapse panel");
$val .= '"><span>&laquo;</span></a>
';

