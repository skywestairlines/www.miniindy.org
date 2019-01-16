<?php

class RaceReg extends Page {
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

	private static $icon = 'mysite/icons/car';

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Content.Main', new TextField('MyFormType', 'Form Type'));
		$fields->addFieldToTab('Root.Content.ChecksAndPO', new HtmlEditorField('checkPO', 'Checks & P.O.s'));

		return $fields;
	}
}