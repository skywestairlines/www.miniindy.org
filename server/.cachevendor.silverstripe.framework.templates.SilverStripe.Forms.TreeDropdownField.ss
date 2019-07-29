<?php
$val .= '<div
	class="TreeDropdownField';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);

}
if ($scope->locally()->hasValue('ShowSearch', null, true)) { 
$val .= ' searchable';


}
$val .= '"
	';

$val .= $scope->locally()->XML_val('AttributesHTML', array('class'), true);
$val .= '
	';

if ($scope->locally()->hasValue('Metadata', null, true)) { 
$val .= 'data-metadata="';

$val .= $scope->locally()->obj('Metadata', null, true)->XML_val('ATT', null, true);
$val .= '"';


}
$val .= '
>
	<input id="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" type="hidden" name="';

$val .= $scope->locally()->obj('Name', null, true)->XML_val('ATT', null, true);
$val .= '" value="';

$val .= $scope->locally()->obj('Value', null, true)->XML_val('ATT', null, true);
$val .= '" />
</div>
';

