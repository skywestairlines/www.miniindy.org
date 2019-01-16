<?php

class RegistrationHolder_Controller extends Page_Controller
{
	public function GetRegPages() {
		return DataObject::get('RaceReg');
	}
}