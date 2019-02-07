<?php
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\LabelField;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Security\Permission;
use SilverStripe\Forms\CompositeField;


class Page extends SiteTree {

	private static $db = array(
		'ShowInFooter' => 'Boolean',
		'FooterSortOrder' => 'Int'
	);

	private static $has_one = array();

	private static $icon = 'client/icons/page';

	public function getCMSFields() {
        $f = parent::getCMSFields();

		// remove tabs if user is NOT admin!
		if(!Permission::check('ADMIN')) {
        	$f->removeByName('Behaviour');
        	$f->removeByName('Access');
        	$f->removeByName('GoogleSitemap');
        }
		return $f;
    }

    public function getSettingsFields()
    {
        $f = parent::getSettingsFields();
        $f->addFieldToTab("Root.Settings", $Footer = new CompositeField([
            CheckboxField::create("ShowInFooter", "Show in footer menu?"),
            NumericField::create("FooterSortOrder", "Sort Order in Footer"),
        ]));
        // $Footer->setTitle("Footer");

        // $f->addFieldToTab("Root.Settings", new LabelField("FooterLabel", "Footer"), 'ProvideComments');
        // $f->addFieldToTab("Root.Settings",  new TextField("FooterSortOrder", "Sort Order in Footer"), 'FooterLabel');
        // $f->addFieldToTab("Root.Settings", new CheckboxField("ShowInFooter", "Show in footer menu?"), 'FooterSortOrder');
        return $f;
    }

}
