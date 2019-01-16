<?php

class SideBarHolder extends Page {
	private static $db = array();
	private static $has_one = array();
	
	private static $allowed_children = array('StaticSidebar');
	
	private static $icon = 'mysite/icons/zones';
}