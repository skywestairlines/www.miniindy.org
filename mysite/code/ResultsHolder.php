<?php

class ResultsHolder extends Page {
	static $db = array();
	static $has_one = array();
	
	static $allowed_children = array('ResultsPage');
	
	static $icon = 'mysite/icons/trophySilver';
}

class ResultsHolder_Controller extends Page_Controller {
	public function GetResultsPages() {
		return DataObject::get('ResultsPage', '', 'Title DESC');
	}
}

?>