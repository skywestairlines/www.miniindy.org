<?php
$val .= '<div class="toolbar--content ss-gridfield-buttonrow ss-gridfield-buttonrow-';

$val .= $scope->locally()->XML_val('TargetFragmentName', null, true);
$val .= '">
	<div class="pull-xs-right">';

$val .= $scope->locally()->XML_val('RightFragment', null, true);
$val .= '</div>
	<div class="btn-toolbar">';

$val .= $scope->locally()->XML_val('LeftFragment', null, true);
$val .= '</div>
</div>
';

