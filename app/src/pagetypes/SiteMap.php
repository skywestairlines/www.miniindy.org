<?php

namespace App\Pagetypes;

use Page;


class SiteMap extends Page {

	private static $table_name = 'SiteMap';

	private static $db = array(
	);
	private static $has_one = array(
	);
	private static $icon = 'mysite/icons/node';
}