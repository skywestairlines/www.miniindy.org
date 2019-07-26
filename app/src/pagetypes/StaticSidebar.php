<?php


use SilverStripe\Assets\Image;
use SilverStripe\Forms\TextField;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\TreeDropdownField;
use SilverStripe\AssetAdmin\Forms\UploadField;

class StaticSidebar extends Page 
{

    private static $table_name = "StaticSidebar";
	
	private static $db = array(
		'ExternalLink' => 'Text',
	);
	
	private static $has_one= array(
		"Image" => Image::class,
		"InternalLink" => SiteTree::class
	);
	
	private static $icon = 'client/icons/zone';
	
	private static $allowed_children = array("none");
	
	public function getCMSFields()
	{
		$fields = parent::getCMSFields();	
	
		$fields->addFieldToTab("Root.Main", new TextField("ExternalLink"), "Content");
		$fields->addFieldToTab("Root.Main", new TreeDropdownField("InternalLinkID", "InternalLink", SiteTree::class), "Content");
		$fields->addFieldToTab("Root.Main", new UploadField(Image::class, Image::class), "Content");
	
		return $fields;
    }
	
	
} 