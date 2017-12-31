<?php

class TeamPage extends Page {
	static $db = array();
	static $has_one = array('Photo' => 'Image');
	static $defaults = array('ShowInMenus' => false);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab("Root.Content.Images", new ImageField('Photo'));
		
		return $fields;
	}
}

class TeamPage_Controller extends Page_Controller {
	
}
?>