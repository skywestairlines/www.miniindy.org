<?php
$val .= '<div class="cms-navigator">

	';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\Admin\\LeftAndMain_ViewModeSelector'], 'SilverStripe\\Admin\\LeftAndMain_ViewModeSelector'], $scope->getItem(), array('SelectID' => 'preview-mode-dropdown-in-preview'), $scope, true);

$val .= '

    <span id="preview-size-dropdown" class="preview-size-selector preview-selector field dropdown">
		<select title="';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.ViewDeviceWidth','Select a preview width');
$val .= '" id="preview-size-dropdown-select" class="preview-dropdown dropdown form-group--no-label" autocomplete="off" name="Action">
			<option data-icon="font-icon-resize" data-description="';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.Responsive','Responsive');
$val .= '" class="font-icon-resize icon-view first" value="auto">
				';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.Auto','Auto');
$val .= '
			</option>
			<option data-icon="font-icon-monitor" data-description="1024px ';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.Width','width');
$val .= '" class="font-icon-monitor icon-view" value="desktop">
				';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.Desktop','Desktop');
$val .= '
			</option>
			<option data-icon="font-icon-tablet" data-description="800px ';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.Width','width');
$val .= '" class="font-icon-tablet icon-view" value="tablet">
				';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.Tablet','Tablet');
$val .= '
			</option>
			<option data-icon="font-icon-mobile" data-description="400px ';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.Width','width');
$val .= '" class="font-icon-mobile icon-view last" value="mobile">
				';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.Mobile','Mobile');
$val .= '
			</option>
		</select>
	</span>

	';

if ($scope->locally()->hasValue('Items', null, true)) { 
$val .= '
		';

if ($scope->locally()->obj('Items', null, true)->XML_val('Count', null, true)<'5') { 
$val .= '
			<div id="preview-states" class="cms-preview-states switch-states size_';

$val .= $scope->locally()->obj('Items', null, true)->XML_val('Count', null, true);
$val .= '">
				<div class="switch">
					';

$scope->locally()->obj('Items', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
						<a  href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" id="';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '" data-name="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '" class="state-name ';

$val .= $scope->locally()->XML_val('FirstLast', null, true);
if ($scope->locally()->hasValue('isActive', null, true)) { 
$val .= ' active';


}
$val .= '">
							<span>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</span>
						</a>
					';


}; $scope->popScope(); 
$val .= '
				</div>
			</div>
		';


}else { 
$val .= '
			<span id="preview-state-dropdown" class="cms-preview-states field dropdown">
				<select title="';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.PreviewState','Preview State');
$val .= '" id="preview-states" class="preview-state dropdown form-group--no-label" autocomplete="off" name="preview-state">
					';

$scope->locally()->obj('Items', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					<option name="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '" data-name="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '" data-link="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" class="state-name ';

$val .= $scope->locally()->XML_val('FirstLast', null, true);
$val .= '" value="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" ';

if ($scope->locally()->hasValue('isActive', null, true)) { 
$val .= 'selected';


}
$val .= '>
						';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '
					</option>
					';


}; $scope->popScope(); 
$val .= '
				</select>
			</span>
		';


}
$val .= '
	';


}
$val .= '
</div>
';

