<?php



use SilverStripe\ORM\DataObject;

use App\Pagetypes\RaceReg;





class RegistrationHolderController extends PageController
{
	public function GetRegPages() {
		return DataObject::get(RaceReg::class);
	}
}