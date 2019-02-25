<?php

namespace App\Controllers;

use SilverStripe\View\Requirements;
use SilverStripe\ORM\DataObject;
use PageController;




class HomePageController extends PageController
{
	public function init() {
		parent::init();
		// Requirements::javascript('mysite/javascript/slides.min.jquery.js');
		// Requirements::javascript('mysite/javascript/homeCommon.js');
		// Requirements::CSS('sponsers/css/sponsor.css');
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
