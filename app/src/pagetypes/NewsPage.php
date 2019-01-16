<?php

namespace App\Pagetypes;

use Page;
use DataObjectManager;


class NewsPage extends Page {

	private static $table_name = 'NewsPage';

	private static $db = array();
	
	private static $has_many = array(
		'NewsEntries' => 'NewsEntry'
	);
	
	private static $default_parent = 'media';
	private static $can_be_root = false;
	
	private static $icon = 'mysite/icons/news';
	
	public function getCMSFields() {
		$f = parent::getCMSFields();
		
		$dom = new DataObjectManager(
			$this,
			'NewsEntries',
			'NewsEntry'
		);
		
		$f->addFieldToTab('Root.Content.NewsItem', $dom);
		
		return $f;
	}
}