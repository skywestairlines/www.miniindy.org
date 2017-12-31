<?php
class HomePage extends Page {
	static $db = array();
	
	static $has_one = array();
	
	static $has_many = array(
		'SliderImages' => 'SliderImage'
	);
	
	static $defaults = array(); //'ShowInMenus' => false);
	
	static $icon = 'mysite/icons/home';
	
	public function getCMSFields() {
        $a = array('png', 'jpg', 'jpeg', 'gif');
        
        $f = parent::getCMSFields();
        
        $dom = new ImageDataObjectManager(
			$this,
			'SliderImages',
			'SliderImage'
		);
		$dom->setUploadFolder('Uploads/HomePageHeroImages');
		$dom->setAllowedFileTypes($a);
		$dom->setPageSize(20);
        
        // this should be a drop down from the Files & Images tab!
        $f->addFieldToTab('Root.Content.SliderImages', new LiteralField('ImageFolder', '<p>Hero Images need to be 620x294 or at that ratio if larger.</p>'));
        $f->addFieldToTab('Root.Content.SliderImages', $dom);
        
        // show only for admins! hide to everyone else
        if(!Permission::check('ADMIN')) {
        	$f->removeByName('SliderImages');
        }
        
       	return $f;
    }
}

class HomePage_Controller extends Page_Controller {
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
?>