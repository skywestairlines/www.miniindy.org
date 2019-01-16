<?php

class RulesHolder extends Page {
	private static $db = array();
	private static $has_one = array();
	
	private static $allowed_children = array('RulesPage');
	
	private static $icon = 'mysite/icons/books';
}