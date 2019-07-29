<?php
$val .= '<li id="record-';

$val .= $scope->locally()->obj('node', null, true)->XML_val('ID', null, true);
$val .= '" data-id="';

$val .= $scope->locally()->obj('node', null, true)->XML_val('ID', null, true);
$val .= '" data-pagetype="';

$val .= $scope->locally()->obj('node', null, true)->XML_val('ClassName', null, true);
$val .= '" class="';

$val .= $scope->locally()->XML_val('markingClasses', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= '"><ins class="jstree-icon font-icon-right-dir">&nbsp;</ins>
    <a href="';

$val .= $scope->locally()->obj('node', null, true)->obj('CMSEditLink', null, true)->XML_val('ATT', null, true);
$val .= '" title="';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('ATT', null, true);
$val .= '"><ins class="jstree-icon font-icon-drag-handle">&nbsp;</ins>
        <span class="text">';

$val .= $scope->locally()->obj('node', null, true)->XML_val('TreeTitle', null, true);
$val .= '</span>
    </a>
    ';

$val .= $scope->locally()->XML_val('SubTree', null, true);
$val .= '
</li>
';

