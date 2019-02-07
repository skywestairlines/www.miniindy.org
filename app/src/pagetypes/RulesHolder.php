<?php




use App\Pagetypes\RulesPage;



class RulesHolder extends Page {

	private static $table_name = 'RulesHolder';

	private static $db = array();
	private static $has_one = array();
	
	private static $allowed_children = array(RulesPage::class);
	
	private static $icon = 'client/icons/books';
}