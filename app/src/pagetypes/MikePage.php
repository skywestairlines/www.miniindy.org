<?php

class MikePage extends Page {
	private static $db = array(
		'MyFormType' => 'Text',
		'secondText' => 'HTMLText'
	);
	
	private static $has_one = array();
	
	private static $has_many = array(
		'Images' => 'Image'
	);
	
	private static $defaults = array(); //'ShowInMenus' => false);
	
	
	
	public function getCMSFields() {
        $a = array('png', 'jpg', 'jpeg', 'gif');
        
        $f = parent::getCMSFields();
        
        $f->addFieldToTab('Root.Content.Main', new TextField('MyFormType', 'Form Type'));
        $f->addFieldToTab('Root.Content.secondHtml', new HtmlEditorField('secondText', 'Second HTML'));
        
        $dom = new ImageDataObjectManager(
			$this,
			'Images',
			'Image'
		);
		$dom->setUploadFolder('Uploads/MikeImages');
		$dom->setAllowedFileTypes($a);
		$dom->setPageSize(20);
        
        // this should be a drop down from the Files & Images tab!
        $f->addFieldToTab('Root.Content.Images', new LiteralField('ImageFolder', '<p>Images of Mike Gibson</p>'));
        $f->addFieldToTab('Root.Content.Images', $dom);
        
        // show only for admins! hide to everyone else
        if(!Permission::check('ADMIN')) {
        	$f->removeByName('Images');
        }
        
       	return $f;
    }
}