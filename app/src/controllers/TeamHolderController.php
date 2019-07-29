<?php

use SilverStripe\ORM\DataObject;

use App\Pagetypes\TeamPage;

class TeamHolderController extends PageController
{
	public function GetTeamPages()
	{
		return DataObject::get(TeamPage::class, '', 'Title ASC');
	}
	public function IsThird()
	{
		return ($this->iteratorPos % 3) == 0;
	}
}
