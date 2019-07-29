<?php
$val .= '<tr class="grid-field__title-row">
	<th colspan="';

$val .= $scope->locally()->XML_val('ColumnCount', null, true);
$val .= '">
		';

if ($scope->locally()->hasValue('Title', null, true)) { 
$val .= '<h2 class="grid-field__title title">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h2>';


}
$val .= '
		<div class="pull-xs-right">$DefineFragment(toolbar-header-right)</div>
		<div class="pull-xs-left">$DefineFragment(toolbar-header-left)</div>
	</th>
</tr>
';

