<?php
$val .= '<span class="pagination-records-number">
	';

$val .= _t('SilverStripe\\Forms\\GridField\\GridFieldPaginator.View','View','Verb. Example: View 1 of 2');
$val .= '
	';

$val .= $scope->locally()->XML_val('FirstShownRecord', null, true);
$val .= '&ndash;';

$val .= $scope->locally()->XML_val('LastShownRecord', null, true);
$val .= '
	';

$val .= _t('SilverStripe\\Forms\\GridField\\GridFieldPaginator.OF','of','Example: View 1 of 2');
$val .= '
	';

$val .= $scope->locally()->XML_val('NumRecords', null, true);
$val .= '
</span>
';

