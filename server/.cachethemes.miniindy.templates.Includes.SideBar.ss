<?php
if ($scope->locally()->hasValue('GetStaticSidebar', null, true)) { 
$val .= '
	';

$scope->locally()->obj('GetStaticSidebar', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
	<div id="sidebar" class="typography sidebar">
			<div class="sidebar-box">
		 		<h3 id="results">';

$val .= $scope->locally()->obj('MenuTitle', null, true)->XML_val('XML', null, true);
$val .= '</h3>
		  		';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '
				<div class="clear"></div>
			</div>
			<div class="sidebarBottom"></div>
	</div>
	';


}; $scope->popScope(); 
$val .= '
';


}
$val .= '
';

