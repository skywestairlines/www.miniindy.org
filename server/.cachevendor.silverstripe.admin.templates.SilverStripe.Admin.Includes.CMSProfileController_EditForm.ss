<?php
$val .= '<form ';

$val .= $scope->locally()->XML_val('FormAttributes', null, true);
$val .= ' data-layout-type="border">

	<div class="panel panel--padded panel--scrollable flexbox-area-grow cms-content-fields">
		';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= '
		<p id="';

$val .= $scope->locally()->XML_val('FormName', null, true);
$val .= '_error" class="alert ';

$val .= $scope->locally()->XML_val('AlertType', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Message', null, true);
$val .= '</p>
		';


}else { 
$val .= '
		<p id="';

$val .= $scope->locally()->XML_val('FormName', null, true);
$val .= '_error" class="alert ';

$val .= $scope->locally()->XML_val('AlertType', null, true);
$val .= '" style="display: none"></p>
		';


}
$val .= '

		<fieldset>
			';

if ($scope->locally()->hasValue('Legend', null, true)) { 
$val .= '<legend>';

$val .= $scope->locally()->XML_val('Legend', null, true);
$val .= '</legend>';


}
$val .= '
			';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
			';


}; $scope->popScope(); 
$val .= '
			<div class="clear"><!-- --></div>
		</fieldset>
	</div>

	<div class="toolbar toolbar--south cms-content-actions cms-content-controls south">
		';

if ($scope->locally()->hasValue('Actions', null, true)) { 
$val .= '
		<div class="btn-toolbar">
			';

$scope->locally()->obj('Actions', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				';

$val .= $scope->locally()->XML_val('Field', null, true);
$val .= '
			';


}; $scope->popScope(); 
$val .= '
		</div>
		';


}
$val .= '
	</div>
</form>
';

