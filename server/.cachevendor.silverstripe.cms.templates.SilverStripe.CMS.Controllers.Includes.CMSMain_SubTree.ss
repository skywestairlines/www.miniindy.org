<?php
if (!$scope->locally()->obj('node', null, true)->hasValue('IsInDB', null, true)) { 

$val .= '
    <ul><li id="record-0" data-id="0" class="Root nodelete"><ins class="jstree-icon font-icon-right-dir">&nbsp;</ins><strong>';

$val .= $scope->locally()->XML_val('rootTitle', null, true);
$val .= '</strong>
';


}
$val .= '
';

if ($scope->locally()->hasValue('limited', null, true)) { 
$val .= '
    <ul><li class="readonly">
        <span class="item">
            ';

$val .= _t('SilverStripe\\CMS\\Controllers\\CMSMain.TOO_MANY_PAGES','Too many pages');
$val .= '
            (<a href="';

$val .= $scope->locally()->obj('listViewLink', null, true)->XML_val('ATT', null, true);
$val .= '" class="subtree-list-link" data-id="';

$val .= $scope->locally()->obj('node', null, true)->XML_val('ID', null, true);
$val .= '" data-pjax-target="Content">';

$val .= _t('SilverStripe\\CMS\\Controllers\\CMSMain.SHOW_AS_LIST','show as list');
$val .= '</a>)
        </span>
    </li></ul>
';


}else if ($scope->locally()->hasValue('children', null, true)) { 
$val .= '
    <ul>
        ';

$scope->locally()->obj('children', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\CMS\\Controllers\\CMSMain_TreeNode'], 'SilverStripe\\CMS\\Controllers\\CMSMain_TreeNode'], $scope->getItem(), array(), $scope, true);


}; $scope->popScope(); 
$val .= '
    </ul>
';


}
$val .= '
';

if (!$scope->locally()->obj('node', null, true)->hasValue('IsInDB', null, true)) { 
$val .= '
    </li></ul>
';


}
$val .= '
';

