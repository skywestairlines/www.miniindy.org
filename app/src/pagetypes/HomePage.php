<?php

use Silverstripe\ORM\DataObject;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Security\Permission;
use SilverStripe\ORM\FieldType\DBBoolean;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;



class HomePage extends Page {

    private static $table_name = 'HomePage';
    
    private static $db = [
        "ShowHomepagePopup" => DBBoolean::class, 
    ];

	private static $has_many = array(
		'SliderImages' => SliderImage::class
	);

	private static $defaults = array(); //'ShowInMenus' => false);

	private static $icon = 'client/icons/home';

	public function getCMSFields() {
        $a = array('png', 'jpg', 'jpeg', 'gif');

        $f = parent::getCMSFields();

        $f->addFieldToTab('Root.PopupVideo', new CheckboxField("ShowHomepagePopup", "Show home page popup video everytime visiting home page"));

        $dom = new GridField(
			'SliderImages',
			'SliderImages',
            $this->SliderImages(),
            $grid = GridFieldConfig_RecordEditor::create()
        );
        $sortable = new GridFieldSortableRows('SortOrder');
        $grid->addComponent($sortable);
        $sortable->setAppendToTop(true);

        // this should be a drop down from the Files & Images tab!
        $f->addFieldToTab('Root.SliderImages', new LiteralField('ImageFolder', '<p>Slider Images need to be at least 620x294 or at that ratio if larger.</p>'));
        $f->addFieldToTab('Root.SliderImages', $dom);

        // show only for admins! hide to everyone else
        if(!Permission::check('ADMIN')) {
        	$f->removeByName('SliderImages');
        }

       	return $f;
    }
    

    // public function getAllSponsors()
    // {
    //     return DataObject::get('Sponsor', "", "Sponsor.SortOrder ASC")
    //                      ->leftJoin("Sponsor_SponsorTypes", '"Sponsor_SponsorTypes"."SponsorID" = "Sponsor"."ID"')
    //                      ->leftJoin("SponsorType",'"SponsorType"."ID" = "Sponsor_SponsorTypes"."SponsorTypeID"');
    // }

	// public function MainSponsors() {
    //     return $this->getAllSponsors()->where("\"SponsorType\".\"Title\" = 'Major' AND Approved = '1'");
	// }
	// public function BenefitingSponsors() {
    //     return $this->getAllSponsors()->where("\"SponsorType\".\"Title\" = 'Benefiting' AND Approved = '1'");
	// }
}
