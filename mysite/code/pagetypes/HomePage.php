<?php

class HomePage extends Page {
	private static $db = array();
	
	private static $has_one = array();
	
	private static $has_many = array(
		'SliderImages' => 'SliderImage'
	);
	
	private static $defaults = array(); //'ShowInMenus' => false);
	
	private static $icon = 'mysite/icons/home';
	
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