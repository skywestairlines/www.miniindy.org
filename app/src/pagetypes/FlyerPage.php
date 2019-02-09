<?php

class FlyerPage extends Page {

	private static $table_name = 'FlyerPage';

	private static $has_many = array(
		'FlyerEntries' => FlyerEntry::class
	);
	
	private static $default_parent = 'media';
	private static $can_be_root = false;
	private static $allowed_children = 'none';
	
	private static $icon = 'client/icons/flyer';
	
	public function getCMSFields() {
		$f = parent::getCMSFields();
		
		$dom = new DataObjectManager(
			$this,
			'FlyerEntries',
			'FlyerEntry'
		);
		
		$f->addFieldToTab('Root.Content.Flyer', $dom);
		
		return $f;
	}
}