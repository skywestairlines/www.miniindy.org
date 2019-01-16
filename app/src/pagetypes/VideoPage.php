<?php

namespace App\Pagetypes;

use SilverStripe\Assets\Image;
use Page;
use ImageField;



class VideoPage extends Page {

	private static $table_name = 'VideoPage';

	private static $db = array();
	private static $has_one = array('Photo' => Image::class);
	private static $defaults = array('ShowInMenus' => false);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab("Root.Content.Images", new ImageField('Photo'));
		
		return $fields;
	}
}