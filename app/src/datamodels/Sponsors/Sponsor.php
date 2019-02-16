<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\View\ViewableData;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Security\Permission;
use SilverStripe\ORM\FieldType\DBBoolean;
use SilverStripe\ORM\FieldType\DBVarchar;
use SilverStripe\ORM\FieldType\DBHTMLText;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

class Sponsor extends DataObject 
{
	private static $db = array(
		'Name' => DBVarchar::class,
		'customLink' => DBVarchar::class,
		'approved' => DBBoolean::class,
		'cInfo' => DBHTMLText::class,
		'cContact' => DBVarchar::class,
		'cEmail' => DBVarchar::class,
		'cPhone' => DBVarchar::class,
    );
    
    private static $singular_name = "Sponsor";
	
	private static $defaults = array(
		'approved' => 0,
	);
	
	private static $many_many = array(
		'SponsorTypes' => 'SponsorType'
	);
	
	private static $has_one = array(
		'Logo' => Image::class
	);
	
	private static $summary_fields = array(
		'Logo.CMSThumbnail' => 'Logo',
		'Name' => 'Name',
		// 'getSList' => 'Sponsor Type(s)',
		'customLink' => 'Link',
		// 'approved' => 'Approved'
	);
	
	private static $default_sort = 'SortOrder ASC, Name ASC';
	
	// private static $searchable_fields = array(
	// 	'name',
	// 	'approved',
	// 	'SponsorTypeID' => array(
	// 		'title' => 'sponsor type'
	// 	)
	// );
	
	// set logo size on frontEnd page
	public function cLogo() {
		return $this->Logo()->SetRatioSize(300, 214);
	}
	
	function approved() {
		//debug::show($this->SponsorTypes()->UL());
		return ($this->approved) ? 'Yes' : 'No';
	}
	
	function getSList() {
		$l = $this->SponsorTypes()->toNestedArray();
		//debug::show($l);
		$t = '';
		if(count($l) > 0) {
			$i = count($l);
			foreach($l as $v) {
				//debug::show($i);
				$t .= $v['Title'];
				if($i > 1) {
					$t .= ', ';
				}
				$i--;
			}
		}
		return $t;
	}
	
	public function getCMSFields() {
        $f = parent::getCMSFields();
        		
		$f->addFieldToTab('Root.Main', new TextField('customLink', 'Link'));
		$f->addFieldToTab('Root.Main', new HTMLEditorField('cInfo', 'Sponsor Info'));
		$f->addFieldToTab('Root.Main', GridField::create(
            'SponsorTypes', 'SponsorType', $this->SponsorTypes(), GridFieldConfig_RecordEditor::create()
        ));
		$f->addFieldToTab('Root.Logo', new LiteralField('', '<br />'));
		$f->addFieldToTab('Root.Logo', $logo = UploadField::create('Logo')->setFolderName('Uploads/TeamLogos'));
		$f->addFieldToTab('Root.ContactInfo', new TextField('cContact', 'Contact Name'));
		$f->addFieldToTab('Root.ContactInfo', new TextField('cEmail', 'Contact Email'));
		$f->addFieldToTab('Root.ContactInfo', new TextField('cPhone', 'Contact Phone'));
		
        $f->removeByName('SortOrder');
        
        if (!Permission::check('ADMIN')) {
    $logo->removeFolderSelection();
}

		
		return $f;
	}
	
	/**
	 * setHTTP function check the URL string for HTTP and if not present adds it.
	 * 
	 * @access protected
	 * @param mixed $url
	 * @return string
	 */
	protected function setHTTP($url) {
		$pattern	= '/^http/';
		if(preg_match($pattern, $url)) {
			return $url;
		} else {
			return $url = 'http://' . $url;
		}
	}
	
	/**
	 * onBeforeWrite function checks to see if http is on the url, if not run the function setHTTP()
	 * 
	 * @access public
	 * @return void
	 */
	function onBeforeWrite() {
		parent::onBeforeWrite();
		if(isset($this->record['customLink']) && $this->record['customLink'] != '' && $this->record['customLink'] != '#') {
			$this->customLink = $this->setHTTP($this->record['customLink']);
		} else {
			$this->customLink = '';
		}
	}
	
	public function IsAfterFourth() {
		//debug::show(ViewableData::Modulus(4));
		return ($this->iteratorPos % 4) == 0;
	}
}