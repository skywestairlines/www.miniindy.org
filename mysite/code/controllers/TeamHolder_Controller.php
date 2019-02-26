<?php

class TeamHolder_Controller extends Page_Controller
{
	public function GetTeamPages() {
		return DataObject::get('TeamPage', '', 'Title ASC');
	}
	public function IsThird() {
		return ($this->iteratorPos % 3) == 0;
	}
}