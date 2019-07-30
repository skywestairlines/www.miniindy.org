<?php

use SilverStripe\Control\Cookie;
use SilverStripe\ORM\DataObject;
use SilverStripe\View\Requirements;

class HomePageController extends PageController
{
	public function init() {
		parent::init();
		// Requirements::javascript('mysite/javascript/slides.min.jquery.js');
		// Requirements::javascript('mysite/javascript/homeCommon.js');
		// Requirements::CSS('sponsers/css/sponsor.css');

		//dump($this->dataRecord->SliderImages);
	}
	
	public function MiniIndyCookie()
	{
		// Set cookie name
		$miniIndyCookie = 'watch_miniindy_video4';
		// Check for forcing rewatch
		$watchAgain = $this->request->getVar('force_rewatch');
		if( $watchAgain == 'true') {
			Cookie::force_expiry($miniIndyCookie);
		}
		//Set cookie
		if (!Cookie::get($miniIndyCookie)){
			Cookie::set($miniIndyCookie, time());	
			return null;		
		} 
		return Cookie::get($miniIndyCookie);
				
	}


    public function getAllSponsors()
    {
        return DataObject::get('Sponsor')
                         ->leftJoin("Sponsor_SponsorTypes", '"Sponsor_SponsorTypes"."SponsorID" = "Sponsor"."ID"')
                         ->leftJoin("SponsorType",'"SponsorType"."ID" = "Sponsor_SponsorTypes"."SponsorTypeID"');
    }

	public function getMainSponsors() {
        return $this->getAllSponsors()->where("\"SponsorType\".\"Title\" = 'Major' AND Approved = '1'");
		// if($m = DataObject::get('Sponsor', "SponsorType.Title = 'Major' AND Approved = '1'", 'SortOrder ASC, Name ASC', "LEFT JOIN Sponsor_SponsorTypes on Sponsor_SponsorTypes.SponsorID = Sponsor.ID LEFT JOIN SponsorType on SponsorType.ID = Sponsor_SponsorTypes.SponsorTypeID")) {
		// 	return $m;
        // }
	}
	public function getBenefitingSponsors() {
        return $this->getAllSponsors()->where("\"SponsorType\".\"Title\" = 'Benefiting' AND Approved = '1'");
		// if($m = DataObject::get('Sponsor', "SponsorType.Title = 'Benefiting' AND Approved = '1'", 'SortOrder ASC, Name ASC', "LEFT JOIN Sponsor_SponsorTypes on Sponsor_SponsorTypes.SponsorID = Sponsor.ID LEFT JOIN SponsorType on SponsorType.ID = Sponsor_SponsorTypes.SponsorTypeID")) {
		// 	return $m;
		// }
	}
}
