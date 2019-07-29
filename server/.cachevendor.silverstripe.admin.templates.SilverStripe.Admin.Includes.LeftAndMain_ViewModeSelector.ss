<?php
$val .= '<span id="';

$val .= $scope->locally()->XML_val('SelectID', null, true);
$val .= '" class="preview-mode-selector preview-selector field dropdown">
	<select title="';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.ChangeViewMode','Change view mode');
$val .= '" id="';

$val .= $scope->locally()->XML_val('SelectID', null, true);
$val .= '-select" class="preview-dropdown dropdown form-group--no-label no-change-track" autocomplete="off" name="Action">

		<option data-icon="font-icon-columns" class="font-icon-columns icon-view first" value="split">';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.SplitView','Split mode');
$val .= '</option>
		<option data-icon="font-icon-eye" class="font-icon-eye icon-view" value="preview">';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.PreviewView','Preview mode');
$val .= '</option>
		<option data-icon="font-icon-edit-write" class="font-icon-edit-write icon-view last" value="content">';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.EditView','Edit mode');
$val .= '</option>
		<!-- Dual window not implemented yet -->
		<!--
			<option data-icon="icon-window" class="icon-window icon-view last" value="window">';

$val .= _t('SilverStripe\\Admin\\LeftAndMain_ViewModeSelector.DualWindowView','Dual Window');
$val .= '</option>
		-->
	</select>
</span>
';

