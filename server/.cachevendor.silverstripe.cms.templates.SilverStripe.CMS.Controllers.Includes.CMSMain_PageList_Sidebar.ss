<?php
$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\CMS\\Controllers\\CMSMain_PageList'], 'SilverStripe\\CMS\\Controllers\\CMSMain_PageList'], $scope->getItem(), array(), $scope, true);

$val .= '
';

