<?php




use App\Pagetypes\ResultsPage;



class ResultsHolder extends Page {

	private static $table_name = 'ResultsHolder';

	private static $db = array();
	private static $has_one = array();
	
	private static $allowed_children = array(ResultsPage::class);
	
	private static $icon = 'client/icons/trophySilver';
}