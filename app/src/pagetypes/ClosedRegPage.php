<?php



use SilverStripe\Forms\TextField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Security\Permission;




class ClosedRegPage extends Page {

	private static $table_name = 'ClosedRegPage';

	private static $db = array(
		'ShowInFooter' => 'Boolean',
		'FooterSortOrder' => 'Int'
	);

	private static $has_one = array();

	private static $icon = 'client/icons/page';

	public function getCMSFields() {
		$f = parent::getCMSFields();
		$f->addFieldToTab("Root.Behaviour", new TextField("FooterSortOrder", "Sort Order in Footer"), 'ProvideComments');
		$f->addFieldToTab("Root.Behaviour", new CheckboxField("ShowInFooter", "Show in footer menu?"), 'FooterSortOrder');

		//$fields->addFieldToTab('Root.FeedbackForm', new CheckboxField('ShowFeedbackForm', 'Show Feedback Form on this page?'));
		//$fields->addFieldToTab('Root.FeedbackForm', new WidgetAreaEditor('myWidgets'));

		// remove tabs if user is NOT admin!
		if(!Permission::check('ADMIN')) {
        	$f->removeByName('Behaviour');
        	$f->removeByName('Access');
        	$f->removeByName('GoogleSitemap');
        	//$fields->removeByName('Metadata');
        	//$fields->removeByName('FeedbackForm');
        }
		return $f;
	}

}
