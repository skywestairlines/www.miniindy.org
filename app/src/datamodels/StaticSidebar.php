<?php

namespace App\Pagetypes;

use SilverStripe\Assets\Image;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\TreeDropdownField;


class StaticSidebar extends DataObject 
{

    private static $table_name = "StaticSidebar";
	
	private static $db = array(
		'ExternalLink' => 'Text',
	);
	
	private static $has_one= array(
		"Image" => Image::class,
		"InternalLink" => SiteTree::class
	);
	
	private static $icon = 'mysite/icons/zone';
	
	private static $allowed_children = array("none");
	
	public function getCMSFields()
	{
		$fields = parent::getCMSFields();	
	
		$fields->addFieldToTab("Root.Content.Main", new TextField("ExternalLink"), "Content");
		$fields->addFieldToTab("Root.Content.Main", new TreeDropdownField("InternalLinkID", "InternalLink", SiteTree::class), "Content");
		$fields->addFieldToTab("Root.Content.Main", new ImageField(Image::class), "Content");
	
		return $fields;
	}	
	
	
} 