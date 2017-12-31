<?php

class HomePage_Controller extends Page_Controller
{
	public function init() {
		parent::init();
		Requirements::Javascript('mysite/javascript/slides.min.jquery.js');
		Requirements::Javascript('mysite/javascript/homeCommon.js');
		Requirements::CSS('sponsers/css/sponsor.css');
	}
	
	public function getMainSponsors() {
		if($m = DataObject::get('Sponsor', "SponsorType.Title = 'Major' AND Approved = '1'", 'SortOrder ASC, Name ASC', "LEFT JOIN Sponsor_SponsorTypes on Sponsor_SponsorTypes.SponsorID = Sponsor.ID LEFT JOIN SponsorType on SponsorType.ID = Sponsor_SponsorTypes.SponsorTypeID")) {
			return $m;
		}
	}
	public function getBenefitingSponsors() {
		if($m = DataObject::get('Sponsor', "SponsorType.Title = 'Benefiting' AND Approved = '1'", 'SortOrder ASC, Name ASC', "LEFT JOIN Sponsor_SponsorTypes on Sponsor_SponsorTypes.SponsorID = Sponsor.ID LEFT JOIN SponsorType on SponsorType.ID = Sponsor_SponsorTypes.SponsorTypeID")) {
			return $m;
		}
	}
}