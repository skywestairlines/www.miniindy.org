<?php
$val .= '<textarea ';

$val .= $scope->locally()->XML_val('AttributesHTML', null, true);
$val .= '>';

$val .= $scope->locally()->obj('ValueEntities', null, true)->XML_val('RAW', null, true);
$val .= '</textarea>
';

