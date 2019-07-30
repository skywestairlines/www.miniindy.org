<?php

use SilverStripe\ORM\DataObject;



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
