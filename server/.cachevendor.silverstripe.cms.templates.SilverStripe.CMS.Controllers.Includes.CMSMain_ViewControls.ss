<?php
$val .= '<div class="view-controls view-controls--';

$val .= $scope->locally()->XML_val('ViewState', null, true);
$val .= '">
    ';

if (!$scope->locally()->hasValue('TreeIsFiltered', null, true)) { 
$val .= '
        ';


$val .= '
        <a class="page-view-link btn btn-secondary btn--icon-sm btn--no-text font-icon-tree"
            href="';

$val .= $scope->locally()->obj('LinkTreeView', null, true)->XML_val('ATT', null, true);
$val .= '"
            data-view="treeview"
            data-pjax-target="';

$val .= $scope->locally()->obj('PJAXTarget', null, true)->XML_val('ATT', null, true);
$val .= '"
            title="';

$val .= _t('SilverStripe\CMS\Controllers\CMSPagesController.TreeView','Tree View');
$val .= '"
        ></a>

        <a class="page-view-link btn btn-secondary btn--icon-sm btn--no-text font-icon-list"
            href="';

$val .= $scope->locally()->obj('LinkListView', null, true)->XML_val('ATT', null, true);
$val .= '"
            data-view="listview"
            data-pjax-target="';

$val .= $scope->locally()->obj('PJAXTarget', null, true)->XML_val('ATT', null, true);
$val .= '"
            title="';

$val .= _t('SilverStripe\CMS\Controllers\CMSPagesController.ListView','List View');
$val .= '"
        ></a>
    ';


}
$val .= '
</div>
';

