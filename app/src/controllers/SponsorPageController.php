<?php
use SilverStripe\View\Requirements;
use SilverStripe\ORM\DataObject;


class SponsorPageController extends PageController
{
    private static $allowed_actions = [
        "getCar"
    ];
    public function init() {
		parent::init();
		// Requirements::css("sponsers/assets/css/sponsor.css");
		// Requirements::Javascript('sponsers/javascript/sponsor.js');
    }

    public function getSponsors($type = null)
    {
        $sponsors = DataObject::get('Sponsor', '', 'SponsorType.SortOrder ASC')
            ->leftJoin("Sponsor_SponsorTypes", 'Sponsor_SponsorTypes.SponsorID = Sponsor.ID')
            ->leftJoin("SponsorType", 'SponsorType.ID = Sponsor_SponsorTypes.SponsorTypeID');
        $where = "SponsorType.Title= '$type' AND Approved = '1'";
        return $type? $sponsors->where($where): $sponsors;
    }

	// nothing really different here than a normal page, but we need to pull in the different Sponsor levels and display them
	public function getMajor() {
        return $this->getSponsors('Major');
	}

	public function getCar() {
        return $this->getSponsors('Car');
	}

	public function getGolf() {
        return $this->getSponsors('Golf');
	}

	public function getOther() {

        return $this->getSponsors('Other');
	}
	public function sectionTitle($type = 'Major') {
		return DataObject::get('SponsorType', "SponsorType.Title = '" . $type . "'");
	}

}
