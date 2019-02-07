<?php

use SilverStripe\Forms\LiteralField;
use SilverStripe\Security\Permission;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;



class HomePage extends Page {

	private static $table_name = 'HomePage';

	private static $has_many = array(
		'SliderImages' => SliderImage::class
	);

	private static $defaults = array(); //'ShowInMenus' => false);

	private static $icon = 'client/icons/home';

	public function getCMSFields() {
        $a = array('png', 'jpg', 'jpeg', 'gif');

        $f = parent::getCMSFields();

        $dom = new GridField(
			'SliderImages',
			'SliderImages',
            $this->SliderImages(),
            GridFieldConfig_RecordEditor::create()
		);

        // this should be a drop down from the Files & Images tab!
        $f->addFieldToTab('Root.SliderImages', new LiteralField('ImageFolder', '<p>Slider Images need to be at least 620x294 or at that ratio if larger.</p>'));
        $f->addFieldToTab('Root.SliderImages', $dom);

        // show only for admins! hide to everyone else
        if(!Permission::check('ADMIN')) {
        	$f->removeByName('SliderImages');
        }

       	return $f;
    }
}
