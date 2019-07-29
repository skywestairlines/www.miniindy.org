<?php
$val .= '<ul class="cms-menu__list">
	';

$scope->locally()->obj('MainMenu', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<li class="';

$val .= $scope->locally()->XML_val('LinkingMode', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('FirstLast', null, true);
$val .= ' ';

if ($scope->locally()->XML_val('LinkingMode', null, true)=='link') { 

}else { 
$val .= 'opened';


}
$val .= '" id="Menu-';

$val .= $scope->locally()->XML_val('Code', null, true);
$val .= '" title="';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('ATT', null, true);
$val .= '">
			<a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" ';

$val .= $scope->locally()->XML_val('AttributesHTML', null, true);
$val .= '>
				';

if ($scope->locally()->hasValue('IconClass', null, true)) { 
$val .= '
					<span class="menu__icon ';

$val .= $scope->locally()->XML_val('IconClass', null, true);
$val .= '"></span>
				';


}else if ($scope->locally()->hasValue('HasCSSIcon', null, true)) { 
$val .= '
					<span class="menu__icon icon icon-16 icon-';

$val .= $scope->locally()->XML_val('Icon', null, true);
$val .= '">&nbsp;</span>
				';


}else { 
$val .= '
					<span class="menu__icon font-icon-circle-star">&nbsp;</span>
				';


}
$val .= '
				<span class="text">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</span>
			</a>
		</li>
	';


}; $scope->popScope(); 
$val .= '
</ul>
';

