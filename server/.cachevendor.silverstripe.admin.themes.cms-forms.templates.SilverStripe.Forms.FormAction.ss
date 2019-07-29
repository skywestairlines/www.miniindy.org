<?php
if ($scope->locally()->hasValue('UseButtonTag', null, true)) { 
$val .= '
	<button ';

$val .= $scope->locally()->XML_val('getAttributesHTML', array('class'), true);
$val .= ' class="btn';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);

}
$val .= '">
		';

if ($scope->locally()->hasValue('ButtonContent', null, true)) { 
$val .= $scope->locally()->XML_val('ButtonContent', null, true);

}else { 
$val .= '<span class="btn__title">';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('XML', null, true);
$val .= '</span>';


}
$val .= '
	</button>
';


}else { 
$val .= '
	<input ';

$val .= $scope->locally()->XML_val('getAttributesHTML', array('class'), true);
$val .= ' class="btn';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);

}
$val .= '"/>
';


}
$val .= '
';

