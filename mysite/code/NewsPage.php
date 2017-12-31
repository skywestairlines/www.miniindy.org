<?php
class NewsPage extends Page {
	static $db = array();
	
	static $has_many = array(
		'NewsEntries' => 'NewsEntry'
	);
	
	static $default_parent = 'media';
	static $can_be_root = false;
	
	static $icon = 'mysite/icons/news';
	
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

class NewsPage_Controller extends Page_Controller {
	
}