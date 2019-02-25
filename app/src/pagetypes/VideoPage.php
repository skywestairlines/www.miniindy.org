<?php



use SilverStripe\Assets\Image;





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