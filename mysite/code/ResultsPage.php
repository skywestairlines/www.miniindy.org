<?php

class ResultsPage extends Page {
	static $db = array();
	static $has_one = array();//'Photo' => 'Image');
	static $defaults = array();//'ShowInMenus' => false);
	
	static $icon = 'mysite/icons/trophy';
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		//$fields->addFieldToTab("Root.Content.Images", new ImageField('Photo'));
		
		return $fields;
	}
}

class ResultsPage_Controller extends Page_Controller {
	
}
?>