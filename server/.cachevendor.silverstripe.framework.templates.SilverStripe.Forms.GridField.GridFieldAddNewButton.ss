<?php
$val .= '<a href="';

$val .= $scope->locally()->XML_val('NewLink', null, true);
$val .= '" class="action action-detail btn btn-primary font-icon-plus-circled new new-link">
    <span class="btn__title">';

$val .= $scope->locally()->XML_val('ButtonName', null, true);
$val .= '</span>
</a>
';

