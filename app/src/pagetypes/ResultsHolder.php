<?php


use SilverStripe\ORM\DataObject;


class ResultsHolder extends Page {

	private static $table_name = 'ResultsHolder';

	private static $db = array();
	private static $has_one = array();

	private static $allowed_children = array(ResultsPage::class);

	private static $icon = 'client/icons/trophySilver';

	public function GetResultsPages()
	{
		return DataObject::get(ResultsPage::class, '', 'Title DESC');
	}


}

