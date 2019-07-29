<?php
if ($scope->locally()->hasValue('Message', null, true)||$scope->locally()->hasValue('Description', null, true)) { 
$val .= '
	aria-describedby="';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= 'message-';

$val .= $scope->locally()->XML_val('ID', null, true);

}
$val .= ' ';

if ($scope->locally()->hasValue('Description', null, true)) { 
$val .= 'describes-';

$val .= $scope->locally()->XML_val('ID', null, true);

}
$val .= '"
';


}
$val .= '
';

if ($scope->locally()->hasValue('Title', null, true)||$scope->locally()->hasValue('RightTitle', null, true)) { 
$val .= '
	aria-labelledby="';

if ($scope->locally()->hasValue('Title', null, true)) { 
$val .= 'title-';

$val .= $scope->locally()->XML_val('ID', null, true);

}
$val .= ' ';

if ($scope->locally()->hasValue('RightTitle', null, true)) { 
$val .= 'extra-label-';

$val .= $scope->locally()->XML_val('ID', null, true);

}
$val .= '"
';


}
$val .= '
';

