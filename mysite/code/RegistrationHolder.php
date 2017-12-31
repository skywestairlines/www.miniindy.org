<?php

class RegistrationHolder extends Page {
	static $db = array();
	static $has_one = array();
	
	static $allowed_children = array(
		'RaceReg',
		'GolfReg',
		'TicketReg',
		'VirtualPage',
		'RedirectorPage'
	);
	
	static $icon = 'mysite/icons/register';
}

class RegistrationHolder_Controller extends Page_Controller {
	public function GetRegPages() {
		return DataObject::get('RaceReg');
	}
}