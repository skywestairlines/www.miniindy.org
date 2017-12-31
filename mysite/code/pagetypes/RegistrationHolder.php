<?php

class RegistrationHolder extends Page {
	private static $db = array();
	private static $has_one = array();
	
	private static $allowed_children = array(
		'RaceReg',
		'GolfReg',
		'TicketReg',
		'VirtualPage',
		'RedirectorPage'
	);
	
	private static $icon = 'mysite/icons/register';
}