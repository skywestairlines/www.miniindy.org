<?php
class FlyerPage extends Page {
	static $has_many = array(
		'FlyerEntries' => 'FlyerEntry'
	);
	
	static $default_parent = 'media';
	static $can_be_root = false;
	static $allowed_children = 'none';
	
	static $icon = 'mysite/icons/flyer';
	
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

class FlyerPage_Controller extends Page_Controller {
	
}