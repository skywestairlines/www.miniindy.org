<?php

class RulesHolder_Controller extends Page_Controller
{
	public function GetRulesPages() {
		return DataObject::get('RulesPage', '', '');
	}
}