<?php
class StaticSidebar extends Page 
{
	
	static $db = array(
		'ExternalLink' => 'Text',
	);
	
	static $has_one= array(
		"Image" => "Image",
		"InternalLink" => "SiteTree"
	);
	
	static $icon = 'mysite/icons/zone';
	
	static $allowed_children = array("none");
	
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
?>