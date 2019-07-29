<?php
$val .= '<button ';

$val .= $scope->locally()->XML_val('AttributesHTML', null, true);
$val .= '>
	<span class="btn__title">';

if ($scope->locally()->hasValue('ButtonContent', null, true)) { 
$val .= $scope->locally()->XML_val('ButtonContent', null, true);

}else { 
$val .= $scope->locally()->XML_val('Title', null, true);

}
$val .= '</span>
</button>
';

