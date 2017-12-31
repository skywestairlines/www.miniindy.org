<?php

class TeamHolder extends Page {
	static $db = array();
	static $has_one = array();
	
	static $allowed_children = array('TeamPage', 'Forum');
	
	static $icon = 'mysite/icons/users';
}

class TeamHolder_Controller extends Page_Controller {
	public function GetTeamPages() {
		return DataObject::get('TeamPage', '', 'Title ASC');
	}
	public function IsThird() {
		return ($this->iteratorPos % 3) == 0;
	}
}

?>