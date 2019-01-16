<?php
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;


/*
	FIELD TO INPUT THE MINI INDY EVENT DATE - WILL SHOW ON EVERY PAGE
*/
class EventDate extends DataExtension {
	function extraStatics($class = null, $extension = null) {
		return array(
			'db' => array(
				'EventDate' => 'Varchar(50)'
			)
		);
	}
	
	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldToTab('Root.Main', new TextField('EventDate', 'Event Date (Example: March 21-23, 2011)'), 'Theme');
	}
}

/*class GoogleAnalytics extends DataExtension {
	function extraStatics() {
		return array(
			'db' => array(
				'GoogleAnalyticsAccountID' => 'Text'
			)
		);
	}
	
	public function updateCMSFields(FieldList &$fields) {
		$fields->addFieldToTab('Root.Main', new TextField('GoogleAnalyticsAccountID', 'Google Analytics Code (Example: UA-XXXXXXXX-X)', '', 13));
	}
	
	public function contentControllerInit($controller) {
		
	}
	
}*/