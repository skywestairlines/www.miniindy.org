<?php
if ($scope->locally()->XML_val('Tag', null, true)=='fieldset'&&$scope->locally()->hasValue('Legend', null, true)) { 
$val .= '
	<legend>';

$val .= $scope->locally()->XML_val('Legend', null, true);
$val .= '</legend>
';


}
$val .= '
';

$scope->locally()->obj('FieldList', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
	';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
';


}; $scope->popScope(); 
$val .= '
';

