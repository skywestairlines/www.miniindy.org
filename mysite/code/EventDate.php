<?php
/*
	FIELD TO INPUT THE MINI INDY EVENT DATE - WILL SHOW ON EVERY PAGE
*/
class EventDate extends DataObjectDecorator {
	function extraStatics() {
		return array(
			'db' => array(
				'EventDate' => 'Varchar(50)'
			)
		);
	}
	
	public function updateCMSFields(FieldSet &$fields) {
		$fields->addFieldToTab('Root.Main', new TextField('EventDate', 'Event Date (Example: March 21-23, 2011)'), 'Theme');
	}
}

/*class GoogleAnalytics extends DataObjectDecorator {
	function extraStatics() {
		return array(
			'db' => array(
				'GoogleAnalyticsAccountID' => 'Text'
			)
		);
	}
	
	public function updateCMSFields(FieldSet &$fields) {
		$fields->addFieldToTab('Root.Main', new TextField('GoogleAnalyticsAccountID', 'Google Analytics Code (Example: UA-XXXXXXXX-X)', '', 13));
	}
	
	public function contentControllerInit($controller) {
		
	}
	
}*/