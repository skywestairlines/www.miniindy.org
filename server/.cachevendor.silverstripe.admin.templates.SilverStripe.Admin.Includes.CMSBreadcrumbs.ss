<?php
$val .= '<div class="breadcrumbs-wrapper flexbox-area-grow" data-pjax-fragment="Breadcrumbs">
	';

$scope->locally()->obj('Breadcrumbs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		';

if ($scope->locally()->hasValue('Last', null, true)) { 
$val .= '
			<span class="cms-panel-link crumb last">';

$val .= $scope->locally()->XML_val('Title', null, true);
if ($scope->locally()->hasValue('Extra', null, true)) { 
$val .= $scope->locally()->XML_val('Extra', null, true);

}
$val .= '</span>
		';


}else { 
$val .= '
			<a class="cms-panel-link crumb" href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</a>
			<span class="sep">/</span>
		';


}
$val .= '
	';


}; $scope->popScope(); 
$val .= '
</div>
';

