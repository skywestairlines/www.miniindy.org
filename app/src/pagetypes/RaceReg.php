<?php




use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;



class RaceReg extends Page {

	private static $table_name = 'RaceReg';

	private static $db = array(
		'MyFormType' => 'Text',
		'regType'	 => 'Enum("New, Returning, Body, Storage", "New")',
		'checkPO' => 'HTMLText'
	);

	private static $has_one = array();
	private static $defaults = array(); //'ShowInMenus' => false);

	private static $allowed_children = array(
		'none'
	);

	private static $icon = 'client/icons/car';

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Content.Main', new TextField('MyFormType', 'Form Type'));
		$fields->addFieldToTab('Root.Content.ChecksAndPO', new HTMLEditorField('checkPO', 'Checks & P.O.s'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('MyFormType', 'Form Type'));

		return $fields;
	}
}
