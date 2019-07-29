<?php
$val .= '<img src="';

$val .= $scope->locally()->obj('URL', null, true)->XML_val('ATT', null, true);
$val .= '" alt="';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('ATT', null, true);
$val .= '" />
';

