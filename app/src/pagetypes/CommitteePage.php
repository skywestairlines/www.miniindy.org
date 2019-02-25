<?php



use SilverStripe\Assets\Image;
use SilverStripe\Security\Permission;
use SilverStripe\AssetAdmin\Forms\UploadField;





class CommitteePage extends Page {

	private static $table_name = 'CommitteePage';

	private static $db = array();
	
	private static $has_one = array(
		'Photo' => Image::class
	);
	
	public function cPhoto() {
		return $this->Photo()->SetWidth(620);		//SetRatioSize('620', '294');
	}
	
    public function getCMSFields() 
    {
        $f = parent::getCMSFields();     
        
		
		$p = new UploadField('Photo');
		$p->setFolderName('Uploads');
		if(!Permission::check('ADMIN')) {
			$p->removeFolderSelection();
		}
		
		$f->addFieldToTab('Root.Main', $p, 'Content');
		
		return $f;
	}
}