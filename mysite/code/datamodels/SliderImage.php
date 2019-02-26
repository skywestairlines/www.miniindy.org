<?php

class SliderImage extends DataObject {
	private static $db = array(
		'Caption' => 'Varchar(80)'
	);
	
	private static $has_one = array(
		'Link' => 'SiteTree',
		'Photo' => 'BetterImage',
		'HomePage' => 'HomePage',
	);
	
	public function SlideShowImage() {
		return $this->Photo()->SetRatioSize('437', '263');
	}
	
	public function HeroSlideShow() {
		return $this->Photo()->SetRatioSize('620', '294');
	}
	
	public function getCMSFields() {
		$f = parent::getCMSFields();
		
		$f->addFieldToTab('Root.Main', $dropdown = new SimpleTreeDropdownField('LinkID', 'Page Link', 'SiteTree'));
		$dropdown->setEmptyString('Select One...');
		
		$f->removeFieldFromTab('Root.Main', 'SortOrder');
		
		return $f;
	}
	
	public function getSliderLink() {
		if($this->LinkID) {
			$pageLink = DataObject::get_by_id('SiteTree', $this->LinkID);
			return $pageLink->Link();
		}
	}
}