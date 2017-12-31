<?php

class RulesHolder extends Page {
	static $db = array();
	static $has_one = array();
	
	static $allowed_children = array('RulesPage');
	
	static $icon = 'mysite/icons/books';
}

class RulesHolder_Controller extends Page_Controller {
	public function GetRulesPages() {
		return DataObject::get('RulesPage', '', '');
	}
}

?>