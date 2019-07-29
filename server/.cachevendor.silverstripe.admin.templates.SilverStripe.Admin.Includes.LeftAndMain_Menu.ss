<?php
$val .= '<div class="cms-mobile-menu-toggle-wrapper"></div>

<div class="fill-height cms-menu cms-panel cms-panel-layout" id="cms-menu" data-layout-type="border" aria-expanded="false">
	<div class="cms-menu__header">
		';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\Admin\\LeftAndMain_MenuLogo'], 'SilverStripe\\Admin\\LeftAndMain_MenuLogo'], $scope->getItem(), array(), $scope, true);

$val .= '
		';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\Admin\\LeftAndMain_MenuStatus'], 'SilverStripe\\Admin\\LeftAndMain_MenuStatus'], $scope->getItem(), array(), $scope, true);

$val .= '
	</div>

	<div class="flexbox-area-grow panel--scrollable panel--triple-toolbar cms-panel-content">
		';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\Admin\\LeftAndMain_MenuList'], 'SilverStripe\\Admin\\LeftAndMain_MenuList'], $scope->getItem(), array(), $scope, true);

$val .= '
	</div>

	<div class="toolbar toolbar--south cms-panel-toggle">
		';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\Admin\\LeftAndMain_MenuToggle'], 'SilverStripe\\Admin\\LeftAndMain_MenuToggle'], $scope->getItem(), array(), $scope, true);

$val .= '
	</div>
</div>

<button class="fill-height fill-width cms-menu-mobile-overlay" aria-controls="cms-menu" aria-expanded="false"></button>
';

