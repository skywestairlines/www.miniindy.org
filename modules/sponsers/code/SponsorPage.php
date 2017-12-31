<?php
class SponsorPage extends Page {
	static $db = array();
	
	public function getCMSFields() {
		$f = parent::getCMSFields();
		
		$f->addFieldToTab('Root.Content.Main', new LiteralField('', '<p>To View/Edit all sponsors, click on "Sponsors Admin" above.</p>'));
		
		return $f;
	}
}

class SponsorPage_Controller extends Page_Controller {
	public function init() {
		parent::init();
		Requirements::themedCSS("sponsor");
		Requirements::Javascript('sponsers/javascript/sponsor.js');
	}
	
	// nothing really different here than a normal page, but we need to pull in the different Sponsor levels and display them
	public function getMajor() {
		if($m = DataObject::get('Sponsor', "SponsorType.Title = 'Major' AND Approved = '1'", 'SortOrder ASC, Name ASC', "LEFT JOIN Sponsor_SponsorTypes on Sponsor_SponsorTypes.SponsorID = Sponsor.ID LEFT JOIN SponsorType on SponsorType.ID = Sponsor_SponsorTypes.SponsorTypeID")) {
			//Debug::show($m);
			return $m;
		}
	}
	
	public function getCar() {
		if($c = DataObject::get('Sponsor', "SponsorType.Title = 'Car' AND Approved = '1'", 'Name ASC', "LEFT JOIN Sponsor_SponsorTypes on Sponsor_SponsorTypes.SponsorID = Sponsor.ID LEFT JOIN SponsorType on SponsorType.ID = Sponsor_SponsorTypes.SponsorTypeID")) {
			return $c;
		}
	}
	
	public function getGolf() {
		if($g = DataObject::get('Sponsor', "SponsorType.Title = 'Golf' AND Approved = '1'", 'Name ASC', "LEFT JOIN Sponsor_SponsorTypes on Sponsor_SponsorTypes.SponsorID = Sponsor.ID LEFT JOIN SponsorType on SponsorType.ID = Sponsor_SponsorTypes.SponsorTypeID")) {
			return $g;
		}
	}
	
	public function getOther() {
		if($o = DataObject::get('Sponsor', "SponsorType.Title = 'Other' AND Approved = '1'", 'Name ASC', "LEFT JOIN Sponsor_SponsorTypes on Sponsor_SponsorTypes.SponsorID = Sponsor.ID LEFT JOIN SponsorType on SponsorType.ID = Sponsor_SponsorTypes.SponsorTypeID")) {
			return $o;
		}
	}
	
	public function sectionTitle($type = 'Major') {
		if($title = DataObject::get('SponsorType', "SponsorType.Title = '". $type ."'")) {
			return $title;
		}
	}
	
}