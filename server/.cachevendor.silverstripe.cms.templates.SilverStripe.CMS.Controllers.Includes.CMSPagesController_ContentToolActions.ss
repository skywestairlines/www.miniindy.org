<?php
$val .= '<div class="toolbar toolbar--content cms-content-toolbar">
	<div class="btn-toolbar cms-actions-buttons-row">
        ';

if (!$scope->locally()->hasValue('TreeIsFiltered', null, true)) { 
$val .= '
            <a class="btn btn-primary cms-content-addpage-button tool-button font-icon-plus" href="';

$val .= $scope->locally()->XML_val('LinkPageAdd', null, true);
$val .= '" data-url-addpage="';

$val .= $scope->locally()->XML_val('LinkPageAdd', array('', 'ParentID=%s'), true);
$val .= '">';

$val .= _t('SilverStripe\CMS\Controllers\CMSMain.AddNewButton','Add new');
$val .= '</a>

            ';

if ($scope->locally()->XML_val('View', null, true)=='Tree') { 
$val .= '
            <button type="button" class="cms-content-batchactions-button btn btn-secondary tool-button font-icon-check-mark-2 btn--last" data-toolid="batch-actions">
                ';

$val .= _t('SilverStripe\CMS\Controllers\CMSPageHistoryController.MULTISELECT',"Batch actions");
$val .= '
            </button>
            ';


}
$val .= '
        ';


}
$val .= '

        ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\CMS\\Controllers\\CMSMain_ViewControls'], 'SilverStripe\\CMS\\Controllers\\CMSMain_ViewControls'], $scope->getItem(), array('PJAXTarget' => 'Content-PageList'), $scope, true);

$val .= '
	</div>


	<div class="cms-actions-tools-row">
		';

if ($scope->locally()->XML_val('View', null, true)=='Tree') { 
$val .= '
		<div id="batch-actions" class="cms-content-batchactions-dropdown tool-action">
			';

$val .= $scope->locally()->XML_val('BatchActionsForm', null, true);
$val .= '
		</div>
		';


}
$val .= '
	</div>
</div>
';

