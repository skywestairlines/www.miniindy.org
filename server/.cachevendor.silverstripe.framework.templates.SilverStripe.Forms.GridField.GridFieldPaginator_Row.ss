<?php
$val .= '<tr>
	<td class="grid-field__paginator bottom-all" colspan="';

$val .= $scope->locally()->XML_val('Colspan', null, true);
$val .= '">
		';

if ($scope->locally()->hasValue('OnlyOnePage', null, true)) { 
$val .= '
		';


}else { 
$val .= '
			<div class="grid-field__paginator__controls datagrid-pagination">
				';

$val .= $scope->locally()->XML_val('FirstPage', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('PreviousPage', null, true);
$val .= '
				<span class="pagination-page-number">
					';

$val .= _t('SilverStripe\\Forms\\GridField\\GridFieldPaginator.Page','Page');
$val .= '
					<input class="text no-change-track" title="Current page" value="';

$val .= $scope->locally()->XML_val('CurrentPageNum', null, true);
$val .= '" data-skip-autofocus="true" />
					';

$val .= _t('SilverStripe\\Forms\\GridField\\GridFieldPaginator.OF','of','Example: View 1 of 2');
$val .= '
					';

$val .= $scope->locally()->XML_val('NumPages', null, true);
$val .= '
				</span>
				';

$val .= $scope->locally()->XML_val('NextPage', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('LastPage', null, true);
$val .= '
			</div>
		';


}
$val .= '
		<span class="grid-field__paginator_numbers pagination-records-number">
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
	</td>
</tr>
';

