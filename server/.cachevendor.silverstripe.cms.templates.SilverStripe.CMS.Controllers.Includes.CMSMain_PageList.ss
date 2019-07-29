<?php
$val .= '<div
    class="panel panel--padded panel--scrollable flexbox-area-grow fill-height flexbox-display cms-content-view cms-tree-view-sidebar cms-panel-deferred"
    data-url="';

$val .= $scope->locally()->XML_val('LinkTreeViewDeferred', null, true);
$val .= '"
    data-url-treeview="';

$val .= $scope->locally()->XML_val('LinkTreeViewDeferred', null, true);
$val .= '"
    data-url-listview="';

$val .= $scope->locally()->XML_val('LinkListViewDeferred', null, true);
$val .= '"
    data-url-listviewroot="';

$val .= $scope->locally()->XML_val('LinkListViewRoot', null, true);
$val .= '"
    data-no-ajax="';

if ($scope->locally()->hasValue('TreeIsFiltered', null, true)) { 
$val .= 'true';


}else { 
$val .= 'false';


}
$val .= '"
>
    ';

if ($scope->locally()->hasValue('TreeIsFiltered', null, true)) { 
$val .= '
        ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\CMS\\Controllers\\CMSMain_ListView'], 'SilverStripe\\CMS\\Controllers\\CMSMain_ListView'], $scope->getItem(), array(), $scope, true);

$val .= '
    ';


}else { 
$val .= '
        ';


$val .= '
    ';


}
$val .= '
</div>
';

