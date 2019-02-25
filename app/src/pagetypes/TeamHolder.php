<?php




use App\Pagetypes\TeamPage;



class TeamHolder extends Page {

	private static $table_name = 'TeamHolder';

	private static $db = array();
	private static $has_one = array();
	
	private static $allowed_children = array(TeamPage::class, 'Forum');
	
	private static $icon = 'client/icons/users';
}