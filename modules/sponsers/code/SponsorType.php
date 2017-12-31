<?php
class SponsorType extends DataObject {
	static $db = array(
		'Title' => 'Varchar(25)',
		'HeaderTitle' => 'Varchar(75)'
	);
	
	static $belongs_many_many = array(
		'Sponsors' => 'Sponsor'
	);
	
	static $summary_fields = array(
		'Title' => 'Sponsor Type'
	);
	
	//static $default_sort = '';
	
	public function getCMSFields() {
		$f = parent::getCMSFields();
		
		//$f->addFieldToTab('Root.Main', new TextField('Type));
		$f->removeByName('Sponsors');
		$f->removeByName('SortOrder');
		
		return $f;
	}
}