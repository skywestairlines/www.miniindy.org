<?php
class CommitteePage extends Page {
	static $db = array();
	
	static $has_one = array(
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

class CommitteePage_Controller extends Page_Controller {
	
}