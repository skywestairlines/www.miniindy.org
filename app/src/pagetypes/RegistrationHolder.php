<?php



use SilverStripe\CMS\Model\VirtualPage;
use SilverStripe\CMS\Model\RedirectorPage;

use App\Pagetypes\RaceReg;
use App\Pagetypes\GolfReg;
use App\Pagetypes\TicketReg;




class RegistrationHolder extends Page {

	private static $table_name = 'RegistrationHolder';

	private static $db = array();
    private static $has_one = array();

    private static $allowed_children = [
        'RegistrationPage',
        'GolfReg',
        'TicketReg'
    ];

	// private static $allowed_children = array(
	// 	'Race Registration' => RaceReg::class,
	// 	'Golf Registration' => GolfReg::class,
	// 	'Ticket Registration' => TicketReg::class,
	// 	'Virtual Page' => VirtualPage::class,
    //     'Redirector Page' => RedirectorPage::class,
    //     'Registration Page' => RegistrationPage::class
	// );

	private static $icon = 'client/icons/register';
}
