<?php

class TicketReg extends Page {
	private static $db = array(
		'MyFormType' => 'Text',
		'checkPO' => 'HTMLText'
	);
	private static $has_one = array();
	private static $defaults = array(); //'ShowInMenus' => false);
	
	private static $icon = 'mysite/icons/ticket';
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab('Root.Content.Main', new TextField('MyFormType', 'Form Type'));
		$fields->addFieldToTab('Root.Content.ChecksAndPO', new HtmlEditorField('checkPO', 'Checks & P.O.s'));
		
		return $fields;
	}
}