<?php

namespace App\Controllers;

use SilverStripe\View\Requirements;
use SilverStripe\ORM\DataObject;
use SilverStripe\ErrorPage\ErrorPage;
use SilverStripe\Core\Convert;
use PageController;




class SiteMapController extends PageController
{

	/**
	 * This function will return a unordered list of all pages on the site.
	 * Watch for the switch between $page and $child in the second line of the foreach().
	 *
	 * Note that this will only skip ErrorPage's at the top/root level of the site.
	 * If you have an ErrorPage class somewhere else in the hierarchy, it will be displayed.
	 */

    public function init()
    {
		// Requirements::themedCSS("slickmap");
		parent::init();
	}
}
