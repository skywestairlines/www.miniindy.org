<?php

class CommitteePage extends Page {
	private static $db = array();
	
	private static $has_one = array(
		'Photo' => 'BetterImage'
	);
	
	public function cPhoto() {
		return $this->Photo()->SetWidth(620);		//SetRatioSize('620', '294');
	}
	
	public function getCMSFields() {
		$f = parent::getCMSFields();
		
		$p = new ImageUploadField('Photo');
		$p->setUploadFolder('Uploads');
		if(!Permission::check('ADMIN')) {
			$p->removeFolderSelection();
		}
		
		$f->addFieldToTab('Root.Content.Photo', $p);
		
		return $f;
	}
}