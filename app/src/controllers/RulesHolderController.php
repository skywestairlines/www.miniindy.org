<?php

namespace App\Controllers;

use SilverStripe\ORM\DataObject;
use PageController;
use App\Pagetypes\RulesPage;





class RulesHolderController extends PageController
{
	public function GetRulesPages() {
		return DataObject::get(RulesPage::class, '', '');
	}
}