<?php

namespace App\Controllers;

use SilverStripe\ORM\DataObject;
use PageController;
use App\Pagetypes\RaceReg;





class RegistrationHolderController extends PageController
{
	public function GetRegPages() {
		return DataObject::get(RaceReg::class);
	}
}