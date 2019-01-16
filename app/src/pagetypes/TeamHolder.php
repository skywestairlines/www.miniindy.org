<?php

class TeamHolder extends Page {
	private static $db = array();
	private static $has_one = array();
	
	private static $allowed_children = array('TeamPage', 'Forum');
	
	private static $icon = 'mysite/icons/users';
}