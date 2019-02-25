<?php
use SilverStripe\ORM\DataObject;

class SponsorType extends DataObject 
{
	private static $db = array(
		'Title' => 'Varchar(25)',
		'HeaderTitle' => 'Varchar(75)'
	);
	
	private static $belongs_many_many = array(
		'Sponsors' => 'Sponsor'
	);
	
	private static $summary_fields = array(
		'Title' => 'Sponsor Type'
	);
	
	//private static $default_sort = '';
	
	public function getCMSFields() {
		$f = parent::getCMSFields();
		
		//$f->addFieldToTab('Root.Main', new TextField('Type));
		$f->removeByName('Sponsors');
		$f->removeByName('SortOrder');
		
		return $f;
	}
}