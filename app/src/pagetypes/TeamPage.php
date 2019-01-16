<?php

class TeamPage extends Page {
	private static $db = array();
	private static $has_one = array('Photo' => 'Image');
	private static $defaults = array('ShowInMenus' => false);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab("Root.Content.Images", new ImageField('Photo'));
		
		return $fields;
	}
}