<?php

namespace App\Pagetypes;

use SilverStripe\CMS\Model\VirtualPage;
use SilverStripe\CMS\Model\RedirectorPage;
use Page;
use App\Pagetypes\RaceReg;
use App\Pagetypes\GolfReg;
use App\Pagetypes\TicketReg;




class RegistrationHolder extends Page {

	private static $table_name = 'RegistrationHolder';

	private static $db = array();
	private static $has_one = array();
	
	private static $allowed_children = array(
		RaceReg::class,
		GolfReg::class,
		TicketReg::class,
		VirtualPage::class,
		RedirectorPage::class
	);
	
	private static $icon = 'mysite/icons/register';
}