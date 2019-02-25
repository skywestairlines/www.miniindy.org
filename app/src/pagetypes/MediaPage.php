<?php



use SilverStripe\Forms\TextField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Security\Permission;




class MediaPage extends Page {

	private static $table_name = 'MediaPage';


	private static $db = array(
		'ShowInFooter' => 'Boolean',
		'FooterSortOrder' => 'Int'
	);

	private static $has_one = array();

	private static $icon = 'client/icons/page';

	// public function getCMSFields() {
	// 	$f = parent::getCMSFields();

	// 	// remove tabs if user is NOT admin!
	// 	if(!Permission::check('ADMIN')) {
    //     	$f->removeByName('Behaviour');
    //     	$f->removeByName('Access');
    //     	$f->removeByName('GoogleSitemap');
    //     	//$fields->removeByName('Metadata');
    //     	//$fields->removeByName('FeedbackForm');
    //     }
	// 	return $f;
	// }

}
