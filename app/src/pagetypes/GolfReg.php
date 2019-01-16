<?php

namespace App\Pagetypes;

use SilverStripe\Forms\DropdownField;
use Page;
use HtmlEditorField;



class GolfReg extends Page {

	private static $table_name = 'GolfReg';

	private static $db = array(
		'MyFormType' => 'Text',
		'checkPO' => 'HTMLText'
	);
	private static $has_one = array();
	private static $defaults = array(); //'ShowInMenus' => false);

	private static $icon = 'mysite/icons/golfball';

	function getCMSFields() {
		$fields = parent::getCMSFields();

		// $fields->addFieldToTab('Root.Content.Main', new TextField('MyFormType', 'Form Type'));
		$fields->addFieldToTab('Root.Content.Main', new DropdownField('MyFormType', 'Form Type', array(
			'closed-reg'        => 'Close Registration',
			// 'indy' 				      => 'Indy Level Sponsor w/ Car',
			// 'indy2' 				    => 'Indy Level Sponsor wo/ Car',
			'dont-use'		      => 'dont-use (DO NOT ACTIVATE)',
			// 'daytona'			      => 'Daytona Level Sponsor',
			'extra'				      => 'Add Extra Golfers',
			'TuesdayGolf'	      => 'Tuesday Golf (Golf Warm Up)',
			'DiamondFormulaOne' => 'Diamond/Formula One',
			'PlatinumIndy'      => 'Platinum/Indy',
			'GoldDaytona'       => 'Gold/Daytona'

		)));
		$fields->addFieldToTab('Root.Content.ChecksAndPO', new HtmlEditorField('checkPO', 'Checks & P.O.s'));

		return $fields;
	}
}