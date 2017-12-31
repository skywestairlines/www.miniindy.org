<?php

class SideBarHolder extends Page {
	static $db = array();
	static $has_one = array();
	
	static $allowed_children = array('StaticSidebar');
	
	static $icon = 'mysite/icons/zones';
}

class SideBarHolder_Controller extends Page_Controller {
	/*public function GetRegPages() {
		return DataObject::get('RaceReg');
	}*/
}

?>