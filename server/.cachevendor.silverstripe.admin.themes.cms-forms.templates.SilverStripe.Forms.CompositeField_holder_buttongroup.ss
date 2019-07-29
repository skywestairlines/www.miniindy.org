<?php
$val .= '<div role="group" id="';

$val .= $scope->locally()->XML_val('HolderID', null, true);
$val .= '" class="btn-group';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);

}
$val .= '">
	';

$val .= $scope->locally()->XML_val('Field', null, true);
$val .= '
</div>
';

