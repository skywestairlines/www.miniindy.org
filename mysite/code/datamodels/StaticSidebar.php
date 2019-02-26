<?php

class StaticSidebar extends Page 
{
	
	private static $db = array(
		'ExternalLink' => 'Text',
	);
	
	private static $has_one= array(
		"Image" => "Image",
		"InternalLink" => "SiteTree"
	);
	
	private static $icon = 'mysite/icons/zone';
	
	private static $allowed_children = array("none");
	
	public function getCMSFields()
	{
		$fields = parent::getCMSFields();	
	
		$fields->addFieldToTab("Root.Content.Main", new TextField("ExternalLink"), "Content");
		$fields->addFieldToTab("Root.Content.Main", new TreeDropdownField("InternalLinkID", "InternalLink", "SiteTree"), "Content");
		$fields->addFieldToTab("Root.Content.Main", new ImageField("Image"), "Content");
	
		return $fields;
	}	
	
	
} 

class StaticSidebar_Controller extends Page_Controller 
{


}