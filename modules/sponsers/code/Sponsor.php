<?php
class Sponsor extends DataObject {
	static $db = array(
		'Name' => 'Varchar(75)',
		//'Type' => 'Varchar(75)',	//'Enum("Major, Car, Golf, Other", "Car")',  // we need to have the same team in multiple categories
		'customLink' => 'Varchar(100)',
		'approved' => 'Boolean',
		'cInfo' => 'HTMLText',
		'cContact' => 'Varchar(100)',
		'cEmail' => 'Varchar(100)',
		'cPhone' => 'Varchar(30)'
	);
	
	static $defaults = array(
		'approved' => 0,
	);
	
	static $many_many = array(
		'SponsorTypes' => 'SponsorType'
	);
	
	static $has_one = array(
		'Logo' => 'BetterImage'
	);
	
	static $summary_fields = array(
		'Name' => 'Name',
		'getSList' => 'Sponsor Type(s)',
		'customLink' => 'Link',
		'Logo.CMSThumbnail.Tag' => 'Logo',
		'approved' => 'Approved'
	);
	
	static $default_sort = 'SortOrder ASC, Name ASC';
	
	static $searchable_fields = array(
		'Name',
		'approved',
		'SponsorTypes.ID' => array(
			'title' => 'Sponsor Type'
		)
	);
	
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
		
		$logo = new ImageUploadField('Logo');
		$logo->setUploadFolder('Uploads/TeamLogos');
		if(!Permission::check('ADMIN')) {
			$logo->removeFolderSelection();
		}
		
		$s = new ManyManyDataObjectManager(
			$this,
			'SponsorTypes',
			'SponsorType'
		);
		$s->setPopupWidth('800');
		$s->removePermission('add');
		
		$f->addFieldToTab('Root.Main', new TextField('customLink', 'Link'));
		$f->addFieldToTab('Root.Main', new HtmlEditorField('cInfo', 'Sponsor Info'));
		$f->addFieldToTab('Root.SponsorTypes', $s);
		$f->addFieldToTab('Root.Logo', new LiteralField('', '<br />'));
		$f->addFieldToTab('Root.Logo', $logo);
		$f->addFieldToTab('Root.ContactInfo', new TextField('cContact', 'Contact Name'));
		$f->addFieldToTab('Root.ContactInfo', new TextField('cEmail', 'Contact Email'));
		$f->addFieldToTab('Root.ContactInfo', new TextField('cPhone', 'Contact Phone'));
		
		$f->removeByName('SortOrder');
		
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